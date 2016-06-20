def steps_to_move_disks(disks)
  if disks == 0
    return 1
  elsif disks == 2
    return 3
  else
    (2 * steps_to_move_disks(disks - 1) ) + 1
  end
end

puts steps_to_move_disks(2)
puts steps_to_move_disks(3)
puts steps_to_move_disks(4)
puts steps_to_move_disks(64)
