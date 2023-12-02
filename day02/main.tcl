set has(red) 12
set has(green) 13
set has(blue) 14

set total 0
set line 1
set power 0
while {![eof stdin]} {
  gets stdin cmd
  if {$cmd eq ""} {
    break
  }
  set parts [split $cmd :]
  set len [llength $parts]
  if {$len != 2} {
    puts "Wrong split length $len at line $line ($cmd)"
    exit
  }

  set bag [lindex $parts 1]
  set wants(red) 0
  set wants(green) 0
  set wants(blue) 0
  foreach attempt [split $bag ";"] {
    foreach part [split $attempt ,] {
      set count_color [split [string trim $part] " "]
      set count [lindex $count_color 0]
      set color [lindex $count_color 1]
      if {$wants($color) < $count} {
        set wants($color) $count
      }
    }
  }
  if {$has(red) >= $wants(red) && $has(green) >= $wants(green) && $has(blue) >= $wants(blue)} {
    incr total $line
  }

  set cubepower [expr $wants(red) * $wants(green) * $wants(blue)]
  incr power $cubepower

  incr line
}
puts "Part 1: $total"
puts "Part 2: $power"
