def format_duration(seconds)
  return "now" if seconds == 0
  unit_durations = duration_array(seconds)
  duration_string(unit_durations)
end

def duration_array(seconds)
  units_of_time = [
    {name: "year",   duration: 31536000},
    {name: "day",    duration: 86400},
    {name: "hour",   duration: 3600},
    {name: "minute", duration: 60},
    {name: "second", duration: 1}
  ]
  array = []
  units_of_time.each do |unit|
    unit_name = unit[:name]
    if seconds >= unit[:duration]
      unit_total = seconds / unit[:duration]
      seconds %= unit[:duration] # update seconds to equal the remaining seconds
      unit_name += "s" if unit_total > 1 # pluralise the unit if greater than 1
      array << "#{unit_total} #{unit_name}"  # add total and unit to output array IF greater than 0
    end
  end
  return array
end

def duration_string(array)
  return array.first if array.length == 1
  # otherwise
  last_join = " and " + array.pop
  return array.join(", ") + last_join
end