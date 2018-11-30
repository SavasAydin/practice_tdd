package practice_tdd;

import static org.junit.Assert.*;

import org.junit.Test;

public class RomanNumeralsTest {

    @Test
    public void testNumberOneInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("I", rn.convert(1));
    }

    @Test
    public void testNumberTwoInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("II", rn.convert(2));
    }

    @Test
    public void testNumberThreeInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("III", rn.convert(3));
    }

    @Test
    public void testNumberFourInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("IV", rn.convert(4));
    }

    @Test
    public void testNumberFiveInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("V", rn.convert(5));
    }

    @Test
    public void testNumberSixInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("VI", rn.convert(6));
    }

    @Test
    public void testNumberSevenInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("VII", rn.convert(7));
    }

    @Test
    public void testNumberEightInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("VIII", rn.convert(8));
    }

    @Test
    public void testNumberNineInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("IX", rn.convert(9));
    }

    @Test
    public void testNumberTenInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("X", rn.convert(10));
    }

    @Test
    public void testNumberElevenInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("XI", rn.convert(11));
    }

    @Test
    public void testNumberSeventeenInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("XVII", rn.convert(17));
    }

    @Test
    public void testNumberTwentyInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("XX", rn.convert(20));
    }

    @Test
    public void testNumberThirtyNineInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("XXXIX", rn.convert(39));
    }

    @Test
    public void testNumberFourtyInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("XL", rn.convert(40));
    }

    @Test
    public void testNumberFourtyFiveInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("XLV", rn.convert(45));
    }

    @Test
    public void testNumberFiftyInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("L", rn.convert(50));
    }

    @Test
    public void testNumberNinetyInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("XC", rn.convert(90));
    }

    @Test
    public void testNumberNinetyNineInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("XCIX", rn.convert(99));
    }

    @Test
    public void testNumberHundredInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("C", rn.convert(100));
    }

    @Test
    public void testNumberThreeHundredAndSixtyNineInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("CCCLXIX", rn.convert(369));
    }

    @Test
    public void testNumberFiveHundredInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("D", rn.convert(500));
    }

    @Test
    public void testNumberNineHundredInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("CM", rn.convert(900));
    }

    @Test
    public void testNumberThousandInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("M", rn.convert(1000));
    }

    @Test
    public void testNumberFourThousandNineHundredNintyNineInRomanNumericalSystem() {
        RomanNumerals rn = new RomanNumerals();
        assertEquals("MMMMCMXCIX", rn.convert(4999));
    }

}
