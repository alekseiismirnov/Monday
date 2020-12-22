# Returns an angle in *degrees* between hour and minute hands 
#   for the particular time "HH:MM".
# We would need to obtain 12 hours format.
# Then, for hours angle would be hours*30 + minutes*0.5,
#   for minutes minutes*6.
# We return the abs value from the difference.
#

def clock_angle time
  hours = time.split(':')[0].to_f
  hours = hours % 12

  minutes = time.split(':')[1].to_f

  angles = [hours*30 + minutes*0.5, minutes*6]
  angles_difference = angles.max - angles.min

  return angles_difference > 180 ? 360 - angles_difference : angles_difference
end
