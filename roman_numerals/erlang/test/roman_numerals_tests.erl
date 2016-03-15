-module(roman_numerals_tests).
-include_lib("eunit/include/eunit.hrl").

numbers_are_expressed_in_roman_numerical_system_test_() ->
    {setup,
     fun() -> ok end,
     fun(_) -> ok end,
     [assert(1,"I"),
      assert(2,"II"),
      assert(4,"IV"),
      assert(5,"V"),
      assert(6,"VI"),
      assert(9,"IX"),
      assert(10,"X"),
      assert(39,"XXXIX"),
      assert(40,"XL"),
      assert(50,"L"),
      assert(90,"XC"),
      assert(100,"C"),
      assert(369,"CCCLXIX"),
      assert(500,"D"),
      assert(900,"CM"),
      assert(1000,"M"),
      assert(4999,"MMMMCMXCIX")
     ]}.

assert(Number, Expected) ->
    fun() ->
	    ?assertEqual({Number,Expected},
			 {Number, roman_numerals:convert(Number)})
    end.
