-module(roman_numerals_tests).
-include_lib("eunit/include/eunit.hrl").

one_is_expressed_as_I_test() ->
    ?assertEqual("I", roman_numerals:convert(1)).

two_is_expressed_as_II_test() ->
    ?assertEqual("II", roman_numerals:convert(2)).

four_is_expressed_as_IV_test() ->
    ?assertEqual("IV", roman_numerals:convert(4)).

five_is_expressed_as_V_test() ->
    ?assertEqual("V", roman_numerals:convert(5)).

six_is_expressed_as_VI_test() ->
    ?assertEqual("VI", roman_numerals:convert(6)).

nine_is_expressed_as_IX_test() ->
    ?assertEqual("IX", roman_numerals:convert(9)).

ten_is_expressed_as_X_test() ->
    ?assertEqual("X", roman_numerals:convert(10)).

thirty_nine_is_expressed_as_XXXIX_test() ->
    ?assertEqual("XXXIX", roman_numerals:convert(39)).

forthy_is_expressed_as_XL_test() ->
    ?assertEqual("XL", roman_numerals:convert(40)).

fifty_is_expressed_as_L_test() ->
    ?assertEqual("L", roman_numerals:convert(50)).

ninety_is_expressed_as_XC_test() ->
    ?assertEqual("XC", roman_numerals:convert(90)).

hundred_is_expressed_as_C_test() ->
    ?assertEqual("C", roman_numerals:convert(100)).

three_hundred_sixty_nine_is_expressed_as_CCCLXIX_test() ->
    ?assertEqual("CCCLXIX", roman_numerals:convert(369)).

five_hundred_is_expressed_as_D_test() ->
    ?assertEqual("D", roman_numerals:convert(500)).

nine_hundred_is_expressed_as_CM_test() ->
    ?assertEqual("CM", roman_numerals:convert(900)).

thousand_is_expressed_as_M_test() ->
    ?assertEqual("M", roman_numerals:convert(1000)).

four_thousand_nine_hundred_ninety_nine_is_expressed_as_MMMMCMXCIX_test() ->
    ?assertEqual("MMMMCMXCIX", roman_numerals:convert(4999)).


