# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and 
# returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol 
# (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. 
# A degree has 60 minutes, while a minute has 60 seconds.

# P & E: Will the integer given always be between 0 and 360
#        What are the conversions from decimal to minutes and seconds

#        dms(30) == %(30°00'00")
#        dms(76.73) == %(76°43'48")
#        dms(254.6) == %(254°36'00")
#        dms(93.034773) == %(93°02'05")
#        dms(0) == %(0°00'00")
#        dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# D: input: float
#    intermediate: integer?
#    output: string







def dms(degrees_decimal)
  degrees, remaining_seconds = degrees_decimal.divmod(1)
  minutes, remaining_seconds = (remaining_seconds * 60).divmod(1)
  seconds = (remaining_seconds * 60).round

  format(%(#{degrees}#{"\xC2\xB0"}%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6)# == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
