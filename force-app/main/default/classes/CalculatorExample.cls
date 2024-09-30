public class CalculatorExample {
    public static String calculateAge(Date dateOfBirth) {
        Date today = Date.today();
        
        Integer years = today.year() - dateOfBirth.year();
        Integer months = today.month() - dateOfBirth.month();
        Integer days = today.day() - dateOfBirth.day();
        
        // Adjust if the current month is before the birth month or the current day is before the birth day
        if (months < 0) {
            years--;
            months += 12;
        }
        
        if (days < 0) {
            months--;
            if (months < 0) {
                years--;
                months += 11;
            }
            // Get the number of days in the previous month
            Integer prevMonth = today.addMonths(-1).month();
            Integer daysInPrevMonth = Date.newInstance(today.year(), prevMonth, 1).toStartOfMonth().addDays(-1).day();
            days += daysInPrevMonth;
        }
        
        return years + ' years, ' + months + ' months, ' + days + ' days';
    }
}