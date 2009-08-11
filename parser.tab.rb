#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.6
# from Racc grammer file "".
#

require 'racc/parser.rb'
class YassParser < Racc::Parser
##### State transition tables begin ###

racc_action_table = [
     1,     2,     3,     5,     6 ]

racc_action_check = [
     0,     0,     0,     4,     5 ]

racc_action_pointer = [
    -2,   nil,   nil,   nil,     3,     4,   nil ]

racc_action_default = [
   -69,    -1,    -2,    -3,   -69,   -69,     7 ]

racc_goto_table = [
     4 ]

racc_goto_check = [
     1 ]

racc_goto_pointer = [
   nil,     0,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 37, :_reduce_none,
  1, 37, :_reduce_none,
  1, 37, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  3, 39, :_reduce_none,
  3, 40, :_reduce_none,
  3, 40, :_reduce_none,
  3, 40, :_reduce_none,
  3, 40, :_reduce_none,
  3, 40, :_reduce_none,
  3, 40, :_reduce_none,
  3, 40, :_reduce_none,
  3, 40, :_reduce_none,
  3, 40, :_reduce_none,
  3, 40, :_reduce_none,
  3, 40, :_reduce_none,
  3, 40, :_reduce_none,
  2, 41, :_reduce_none,
  2, 41, :_reduce_none,
  4, 42, :_reduce_none,
  4, 43, :_reduce_none,
  1, 44, :_reduce_none,
  3, 44, :_reduce_none,
  1, 45, :_reduce_none,
  2, 46, :_reduce_none,
  5, 46, :_reduce_none,
  2, 47, :_reduce_none,
  2, 48, :_reduce_none,
  0, 49, :_reduce_none,
  2, 49, :_reduce_none,
  3, 49, :_reduce_none,
  0, 50, :_reduce_none,
  3, 50, :_reduce_none,
  5, 50, :_reduce_none,
  5, 51, :_reduce_none,
  7, 51, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  2, 52, :_reduce_none,
  2, 52, :_reduce_none,
  2, 52, :_reduce_none,
  1, 52, :_reduce_none,
  2, 54, :_reduce_none,
  2, 54, :_reduce_none,
  2, 56, :_reduce_none,
  1, 56, :_reduce_none,
  2, 47, :_reduce_none,
  1, 57, :_reduce_none,
  2, 57, :_reduce_none,
  0, 58, :_reduce_none,
  3, 58, :_reduce_none,
  2, 53, :_reduce_none,
  3, 53, :_reduce_none,
  1, 55, :_reduce_none,
  2, 55, :_reduce_none,
  2, 55, :_reduce_none,
  0, 59, :_reduce_none,
  1, 59, :_reduce_none,
  2, 59, :_reduce_none ]

racc_reduce_n = 69

racc_shift_n = 7

racc_token_table = {
  false => 0,
  :error => 1,
  :INT => 2,
  :FLOAT => 3,
  :STRING => 4,
  :IDENTIFER => 5,
  "(" => 6,
  ")" => 7,
  "+" => 8,
  "-" => 9,
  "*" => 10,
  "/" => 11,
  "==" => 12,
  "!=" => 13,
  ">=" => 14,
  "<=" => 15,
  ">" => 16,
  "<" => 17,
  :AND => 18,
  :OR => 19,
  :NOT => 20,
  "[" => 21,
  "]" => 22,
  "," => 23,
  "=" => 24,
  :SCOPE => 25,
  :NAME => 26,
  :FUN => 27,
  ":" => 28,
  :EXITWHEN => 29,
  :IF => 30,
  :ELSEIF => 31,
  :ELSE => 32,
  :EOL => 33,
  :ARRAY => 34,
  :END => 35 }

racc_nt_base = 36

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "INT",
  "FLOAT",
  "STRING",
  "IDENTIFER",
  "\"(\"",
  "\")\"",
  "\"+\"",
  "\"-\"",
  "\"*\"",
  "\"/\"",
  "\"==\"",
  "\"!=\"",
  "\">=\"",
  "\"<=\"",
  "\">\"",
  "\"<\"",
  "AND",
  "OR",
  "NOT",
  "\"[\"",
  "\"]\"",
  "\",\"",
  "\"=\"",
  "SCOPE",
  "NAME",
  "FUN",
  "\":\"",
  "EXITWHEN",
  "IF",
  "ELSEIF",
  "ELSE",
  "EOL",
  "ARRAY",
  "END",
  "$start",
  "literal",
  "expression",
  "braces",
  "binary",
  "unary",
  "array_get",
  "call",
  "arg_list",
  "variable",
  "set",
  "var_assignment",
  "scope",
  "name_list",
  "parameter_list",
  "function",
  "line_word",
  "var_definition",
  "line",
  "end_scope",
  "var_declaration",
  "var_decl_assign",
  "var_decl_assign_list",
  "main" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

# reduce 2 omitted

# reduce 3 omitted

# reduce 4 omitted

# reduce 5 omitted

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

# reduce 17 omitted

# reduce 18 omitted

# reduce 19 omitted

# reduce 20 omitted

# reduce 21 omitted

# reduce 22 omitted

# reduce 23 omitted

# reduce 24 omitted

# reduce 25 omitted

# reduce 26 omitted

# reduce 27 omitted

# reduce 28 omitted

# reduce 29 omitted

# reduce 30 omitted

# reduce 31 omitted

# reduce 32 omitted

# reduce 33 omitted

# reduce 34 omitted

# reduce 35 omitted

# reduce 36 omitted

# reduce 37 omitted

# reduce 38 omitted

# reduce 39 omitted

# reduce 40 omitted

# reduce 41 omitted

# reduce 42 omitted

# reduce 43 omitted

# reduce 44 omitted

# reduce 45 omitted

# reduce 46 omitted

# reduce 47 omitted

# reduce 48 omitted

# reduce 49 omitted

# reduce 50 omitted

# reduce 51 omitted

# reduce 52 omitted

# reduce 53 omitted

# reduce 54 omitted

# reduce 55 omitted

# reduce 56 omitted

# reduce 57 omitted

# reduce 58 omitted

# reduce 59 omitted

# reduce 60 omitted

# reduce 61 omitted

# reduce 62 omitted

# reduce 63 omitted

# reduce 64 omitted

# reduce 65 omitted

# reduce 66 omitted

# reduce 67 omitted

# reduce 68 omitted

def _reduce_none(val, _values, result)
  val[0]
end

end   # class YassParser
