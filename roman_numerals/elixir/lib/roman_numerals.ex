defmodule Roman_numerals do

	def convert(0) do
		""
	end
	def convert(x) when x < 5000 do
		l = get_low_limit(x)
		re = roman_expression_of(l)
		re <> convert(x-l)
	end

	defp get_low_limit(x) do
		limits = all_low_limits()
		[infimum|_] = Enum.reverse(Enum.filter(limits, fn(low) -> x >= low end))
		infimum
	end

	defp roman_expression_of(x) do
		rns = roman_numerical_system()
		{^x, re} = List.keyfind(rns, x, 0)
		re
	end

	defp all_low_limits() do
		[1,4,5,9,10,40,50,90,100,500,900,1000]
	end

	defp roman_numerical_system() do
		[{1, "I"},
		 {4,"IV"},
		 {5, "V"},
		 {9, "IX"},
		 {10, "X"},
		 {40, "XL"},
		 {50, "L"},
		 {90, "XC"},
		 {100, "C"},
		 {500, "D"},
		 {900, "CM"},
		 {1000, "M"}]
	end
end
