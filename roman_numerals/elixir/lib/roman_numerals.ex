defmodule Roman_numerals do

	def convert(0) do
		""
	end
	def convert(x) when x < 90 do
		l = get_low_limit(x)
		re = get_roman_expression(l)
		re <> convert(x-l)
	end

	defp get_low_limit(x) do
		limits = [{1,4}, {4,5}, {5,9}, {9,10}, {10,40}, {40,50}, {50, 90}]
		[{low, _}] = Enum.filter(limits, fn({l,h}) -> x >= l and x < h end)
		low
	end

	defp get_roman_expression(x) do
		{^x, re} = List.keyfind([{1, "I"},
														 {4,"IV"},
														 {5, "V"},
														 {9, "IX"},
														 {10, "X"},
														 {40, "XL"},
														 {50, "L"}],
														x,
														0)
		re
	end

end
