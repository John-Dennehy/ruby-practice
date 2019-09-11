def format_duration(seconds)
  # your code here
  return "now" if seconds == 0
  unit_durations = duration_array(seconds)
  duration_string(unit_durations)
end

def duration_array(seconds)
  units_of_time = [
    {name: "year",   duration: 31536000, total: 0},
    {name: "day",    duration: 86400,    total: 0},
    {name: "hour",   duration: 3600,     total: 0},
    {name: "minute", duration: 60,       total: 0},
    {name: "second", duration: 1,        total: 0}
  ]

  array = []
  units_of_time.each do |unit|
    if seconds >= duration
      unit[:total] = (seconds / unit[:duration])
      seconds %= duration # update seconds to equal the remaining seconds   
    end
    
    unit_name = unit[:name]
    unit_name += "s" if unit[:total] > 1 # pluralise the unit if greater than 1
    array << "#{unit[:total]} #{unit_name}" if unit[:total] > 0 # add total and unit to output array IF greater than 0
  end

  return array
end

def duration_string(array)
  case
  when array.length == 1
    return array.first
  when array.length > 1
    last_join = " and " + array.pop
    return array = array.join(", ") + last_join
  end
end