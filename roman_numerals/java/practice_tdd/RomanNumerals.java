package practice_tdd;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RomanNumerals {

    public String convert(int number) {

        if (number == 0) return "";
        else {
            int limit = getLowLimit(number);
            String representation = getRepresentation(limit);
            return representation + convert(number - limit);
        }
    }

    private int getLowLimit(int number) {
        List<Integer> limits = new ArrayList<Integer>();
        limits.add(1000);
        limits.add(900);
        limits.add(500);
        limits.add(100);
        limits.add(90);
        limits.add(50);
        limits.add(40);
        limits.add(10);
        limits.add(9);
        limits.add(5);
        limits.add(4);
        limits.add(1);

        int lowLimit = 0;
        for (int limit : limits) {
            if (number >= limit) {
                return limit;
            }
        }
        return lowLimit;
    }

    private String getRepresentation(int limit) {
        Map<Integer, String> limits = new HashMap<Integer, String>();
        limits.put(1, "I");
        limits.put(4, "IV");
        limits.put(5, "V");
        limits.put(9, "IX");
        limits.put(10, "X");
        limits.put(40, "XL");
        limits.put(50, "L");
        limits.put(90, "XC");
        limits.put(100, "C");
        limits.put(500, "D");
        limits.put(900, "CM");
        limits.put(1000, "M");

        String representation = null;
        for (int key : limits.keySet()) {
            if (limit == key) {
                representation = limits.get(key);
            }
        }
        return representation;
    }

}
