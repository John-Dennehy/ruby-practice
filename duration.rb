def format_duration(seconds)
  # your code here
  @seconds = seconds
  return "now" if @seconds == 0
  unit_durations = duration_array(@seconds)
  duration_string(unit_durations)
end

def duration_array(seconds)
  array = []

  units_of_time = [
    {unit: "year",   duration: 31536000, total: 0},
    {unit: "day",    duration: 86400,    total: 0},
    {unit: "hour",   duration: 3600,     total: 0},
    {unit: "minute", duration: 60,       total: 0},
    {unit: "second", duration: 1,        total: 0}
  ]

  units_of_time.each do |unit|
    unit_name = unit[:unit]
    duration = unit[:duration]

    if @seconds >= duration
      unit[:total] = (@seconds / unit[:duration])
      @seconds = @seconds % duration # return remainder to @seconds   
    end
    
    unit_name += "s" if unit[:total] > 1 # pluralise the unit if greater than 1
    array << "#{unit[:total]} #{unit_name}" if unit[:total] > 0 # add total and unit to output array IF greater than 0
  end

  return array
end

def duration_string(array)
  join_string = ", "
  last_join = " and "
  
  case
  when array.length == 1
    return array.first
  when array.length > 1
    last_join += array.pop
    return array = array.join(join_string) + last_join
  end
end