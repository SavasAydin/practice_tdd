package practice_tdd;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeSet;

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
        Map<Integer, String> limits = getLimitsAndRepresentations();
        int lowLimit = 0;
        for(int key: new TreeSet<Integer>(limits.keySet())) {
            if (number >= key) {
                lowLimit = key;
            }
        }
        return lowLimit;
    }

    private String getRepresentation(int limit) {
        Map<Integer, String> limits = getLimitsAndRepresentations();
        String representation = null;
        for (int key : limits.keySet()) {
            if (limit == key) {
                representation = limits.get(key);
            }
        }
        return representation;
    }

    private HashMap<Integer, String> getLimitsAndRepresentations() {
        HashMap<Integer, String> limits = new HashMap<Integer, String>();
        limits.put(1000, "M");
        limits.put(900, "CM");
        limits.put(500, "D");
        limits.put(100, "C");
        limits.put(90, "XC");
        limits.put(50, "L");
        limits.put(40, "XL");
        limits.put(10, "X");
        limits.put(9, "IX");
        limits.put(5, "V");
        limits.put(4, "IV");
        limits.put(1, "I");
        return limits;
    }

}
