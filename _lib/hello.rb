module Jekyll::Filters  
  def years_from_date(input)    
    today = Time.now
    my_year, my_month, my_day = input.split("-")
    
    year_diff  = today.strftime("%Y").to_i - my_year.to_i
    month_diff = today.strftime("%m").to_i - my_month.to_i
    day_diff   = today.strftime("%d").to_i - my_day.to_i
  	
    if month_diff < 0
       year_diff-=1
    elsif month_diff == 0 and day_diff < 0
       year_diff-=1
    end
  	
  	"#{year_diff}"
  end
  
  def time_diff(input)
    # require 'date'
    # 
    # today = DateTime.now
    # => #<DateTime: 441799066630193/180000000,-301/1440,2299161>
    # 
    # birthday = Date.new(2008, 4, 10)
    # => #<Date: 4909133/2,0,2299161>
    # 
    # days_to_go = birthday - today
    # 
    # time_until = birthday - today
    # => Rational(22903369807, 180000000)
    # 
    # time_until.to_i             # get the number of days until my birthday
    # => 127
    # 
    # hours,minutes,seconds,frac = Date.day_fraction_to_time(time_until)
    # [3053, 46, 57, Rational(1057, 180000000)]
    # 
    # puts "It is my birthday in #{hours} hours, #{minutes} minutes and #{seconds} seconds (not that I am counting)"
    # It is my birthday in 3053 hours, 46 minutes and 57 seconds (not that I am counting)
  end
end