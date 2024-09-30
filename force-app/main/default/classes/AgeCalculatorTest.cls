public class AgeCalculatorTest {
    public static void testAgeCalculator(Date dateOfBirth) {
        AgeCalculator ageCalculator = new AgeCalculator(dateOfBirth);
        System.debug('Age: ' + ageCalculator.getAgeString());
    }
}