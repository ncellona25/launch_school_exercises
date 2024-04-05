# 
=begin
def after_midnight(time)
  if time == '00:00' || time == '24:00'
    return 0
  end

  hours, minutes = time.split(':')
  total_minutes = hours.to_i * 60 + minutes.to_i
end


def before_midnight(time)
  if time == '00:00' || time == '24:00'
    return 0
  end
  hours, minutes = time.split(':')
  total_minutes = 1440 - (hours.to_i * 60 + minutes.to_i)
end
=end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0