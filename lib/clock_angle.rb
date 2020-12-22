# Returns an angle in *degrees* between hour and minute hands 
#   for the particular time "HH:MM".
# We would need to obtain 12 hours format.
# Then, for hours angle would be hours*30 + minutes*0.5,
#   for minutes minutes*6.
# We return the abs value from the difference.
#

HOUR_ANGLE = 30
HOUR_MINUTE_ANGLE = 0.5 # one minute correction for hour hand
MINUTE_ANGLE = 6
HOUR_CYCLE = 12

def clock_angle time
  hours = time.split(':')[0].to_f
  hours = hours % HOUR_CYCLE

  minutes = time.split(':')[1].to_f

  angles = [hours*HOUR_ANGLE + minutes*HOUR_MINUTE_ANGLE, minutes*MINUTE_ANGLE]
  angles_difference = angles.max - angles.min

  return angles_difference > 180 ? 360 - angles_difference : angles_difference
end
