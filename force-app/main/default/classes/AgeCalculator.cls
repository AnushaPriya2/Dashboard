public class AgeCalculator {
    public Integer years;
    public Integer months;
    public Integer days;
    
    public AgeCalculator(Date dateOfBirth) {
        calculateAge(dateOfBirth);
    }
    
    public void calculateAge(Date dateOfBirth) {
        Date today = Date.today();
        
        if (dateOfBirth > today) {
            throw new IllegalArgumentException('Date of birth cannot be in the future.');
        }
        
        years = today.year() - dateOfBirth.year();
        months = today.month() - dateOfBirth.month();
        days = today.day() - dateOfBirth.day();
        
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
    }
    
    public String getAgeString() {
        return years + ' years, ' + months + ' months, ' + days + ' days';
    }
}