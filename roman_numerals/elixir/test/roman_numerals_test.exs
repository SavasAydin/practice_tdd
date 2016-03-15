defmodule RomanNumeralsTest do
	use ExUnit.Case

	test "one_is_expressed_as_I" do
		assert Roman_numerals.convert(1) == "I"
	end

	test "two_is_expressed_as_II" do
		assert Roman_numerals.convert(2) == "II"
	end

	test "three_is_expressed_as_III" do
		assert Roman_numerals.convert(3) == "III"
	end

	test "four_is_expressed_as_IV" do
		assert Roman_numerals.convert(4) == "IV"
	end

	test "five_is_expressed_as_V" do
		assert Roman_numerals.convert(5) == "V"
	end

	test "six_is_expressed_as_VI" do
		assert Roman_numerals.convert(6) == "VI"
	end

	test "nine_is_expressed_as_IX" do
		assert Roman_numerals.convert(9) == "IX"
	end

	test "ten_is_expressed_as_X" do
		assert Roman_numerals.convert(10) == "X"
	end

	test "thirty_nine_is_expressed_as_XXXIX" do
		assert Roman_numerals.convert(39) == "XXXIX"
	end

	test "forty_is_expressed_as_XL" do
		assert Roman_numerals.convert(40) == "XL"
	end

	test "fourty_four_is_expressed_as_XLIV" do
		assert Roman_numerals.convert(44) == "XLIV"
	end

	test "fifty_is_expressed_as_L" do
		assert Roman_numerals.convert(50) == "L"
	end

	test "ninety_is_expressed_as_XC" do
		assert Roman_numerals.convert(90) == "XC"
	end

	test "hundred_is_expressed_as_C" do
		assert Roman_numerals.convert(100) == "C"
	end

	test "three_hundred_sixty_nine_is_expressed_as_CCCLXIX" do
		assert Roman_numerals.convert(369) == "CCCLXIX"
	end

	test "five_hundred_is_expressed_as_D" do
		assert Roman_numerals.convert(500) == "D"
	end

	test "nine_hundred_is_expressed_as_CM" do
		assert Roman_numerals.convert(900) == "CM"
	end
		
	test "thousand_is_expressed_as_M" do
		assert Roman_numerals.convert(1000) == "M"
	end

	test "four_thousand_nine_hundred_ninety_nine_is_expressed_as_MMMMCMXCIX" do
		assert Roman_numerals.convert(4999) == "MMMMCMXCIX"
	end			

end
