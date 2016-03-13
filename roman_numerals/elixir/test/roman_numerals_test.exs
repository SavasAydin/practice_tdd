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

	test "fourteen_is_expressed_as_XIV" do
    assert Roman_numerals.convert(14) == "XIV"
  end

	test "twenty_eight_is_expressed_as_XXVIII" do
    assert Roman_numerals.convert(28) == "XXVIII"
  end

	test "thirty_nine_is_expressed_as_XXXIX" do
    assert Roman_numerals.convert(39) == "XXXIX"	
  end

	test "fourty_is_expressed_as_XL" do
    assert Roman_numerals.convert(40) == "XL"	
  end

	test "fourty_four_is_expressed_as_XLIV" do
    assert Roman_numerals.convert(44) == "XLIV"	
  end

	test "fifty_is_expressed_as_L" do
    assert Roman_numerals.convert(50) == "L"	
  end

	test "sixty_is_expressed_as_LX" do
    assert Roman_numerals.convert(60) == "LX"	
  end

	test "seventy_is_expressed_as_LXX" do
    assert Roman_numerals.convert(70) == "LXX"	
  end

	test "eighty_nine_is_expressed_as_LXXXIX" do
    assert Roman_numerals.convert(89) == "LXXXIX"	
  end
	
end
