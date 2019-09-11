def format_duration(seconds)
  # your code here
  remaining_seconds = seconds.to_i
  
  units_of_time = [
    {unit: "year", duration: 31536000, total: 0},
    {unit: "day", duration: 86400, total: 0},
    {unit: "hour", duration: 3600, total: 0},
    {unit: "minute", duration: 60, total: 0}
  ]

  join = ", "
  last_join = " and "
  
  units_of_time.each do |hash|
    unit = hash[:unit]
    duration = hash[:duration]

    if seconds >= duration
      hash[:total] = (seconds / duration)
      seconds = seconds % duration # return remainder to seconds
    else
      # puts "#{seconds} remaining"    
    end

  end

  puts units_of_time
  puts "#{seconds} seconds remaining" if seconds > 0

end

format_duration(3662)