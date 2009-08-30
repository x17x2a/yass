class YassParser
rule

	literal		:	INT				{result = Literal.new :INT, val[0]}
				|	FLOAT			{result = Literal.new :FLOAT, val[0]}
				|	STRING			{result = Literal.new :STRING, val[0]}

	expression	:	literal	
				|	IDENTIFER		{result = Literal.new :NAME, val[0]}
				|	braces				
				|	binary
				|	unary
				|	array_get
				|	call

	braces		:	"(" expression ")" {result = Braces.new val[1]}

	binary		:	expression "+" expression {result = Binard.new '+', val[0], val[2]}
				|	expression "-" expression {result = Binard.new '-', val[0], val[2]}
				|	expression "*" expression {result = Binard.new '*', val[0], val[2]}
				|	expression "/" expression {result = Binard.new '/', val[0], val[2]}
				|	expression "==" expression {result = Binard.new '==', val[0], val[2]}
				|	expression "!=" expression {result = Binard.new '!=', val[0], val[2]}
				|	expression ">=" expression {result = Binard.new '>=', val[0], val[2]}
				|	expression "<=" expression {result = Binard.new '<=', val[0], val[2]}
				|	expression ">" expression {result = Binard.new '>', val[0], val[2]}
				|	expression "<" expression {result = Binard.new '<', val[0], val[2]}
				|	expression AND expression {result = Binard.new :AND, val[0], val[2]}
				|	expression OR expression {result = Binard.new :OR, val[0], val[2]}

	unary		:	"-" expression {result = Unary.new '-', val[1]}
				|	NOT expression {result = Unary.new :NOT, val[1]}

	array_get	:	expression "[" expression "]" {result = ArrayGet.new val[0], val[1]}

	call		:	expression "(" arg_list ")" {result = Call.new val[0], val[3]}

	arg_list	:	expression {val}
				|	expression "," arg_list {val[0].push val[2]; val[0]}

	variable	:	IDENTIFER

	set			:	variable var_assignment {result=VariableAssignment.new val[0], val[1]} 
				|	variable "[" expression "]" var_assignment {raise "Not implemented"}

	var_assignment:	"=" expression {val[1]}

	scope		:	SCOPE IDENTIFER {$scopingManager.push Scope.new val[1], []}

	name_list	:	/*nothing*/
				|	"," NAME 
				|	"," NAME name_list


	parameter_list:	/*nothing*/
				|	variable NAME name_list
				|	variable NAME name_list "," parameter_list


	function	:	FUN NAME "(" parameter_list ")"
				|	FUN NAME "(" parameter_list ")" ":" variable 
				
	line_word	:	scope
				|	function
				|	call {$scopingManager.addCode val[1]}
				|	set {$scopingManager.addCode val[1]}
				|	var_definition {$scopingManager.addCode val[1]}
				|	EXITWHEN expression {$scopingManager.addCode Exitwhen.new val[1]}
				|	IF expression {$scopingManager.push IfBlock.new []; $scopingManager.addBlock If.new( val[1], []); result=nil }
				|	ELSEIF expression {$scopingManager.pop; $scopingManager.addBlock ElseIf.new val[1], []; result = nil}
				|	ELSE {$scopingManager.pop; $scopingManager.addBlock Else.new []; result = nil}

	line		:	line_word EOL 
				|	line_word end_scope


	var_declaration:	ARRAY NAME
				|		NAME

	var_assignment:	"=" expression

	var_decl_assign:	var_declaration
				|		var_declaration var_assignment

	var_decl_assign_list:	/*nothing*/
				|			"," var_decl_assign var_decl_assign_list

	var_definition:	variable var_decl_assign
				|	variable var_decl_assign var_decl_assign_list

	end_scope	:	END {$scopingManager.pop}
				|	END end_scope {$scopingManager.pop}
				|	END EOL {$scopingManager.pop}

	main		:	/*nothing*/
				|	EOL
				|	line main
---- header
require 'lexer'
require 'objects'

---- inner
	def start(text)
		@q = do_lex text
		do_parse
	end
	
	def next_token
	  @q.shift
	end
---- footer
  
if $0 == __FILE__
  src = <<EOS

EOS
  puts 'parsing:'
  print src
  puts
  puts 'result:'
  YassParser.new.start(src)
end
