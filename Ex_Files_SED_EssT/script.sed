#!/usr/bin/env -S sed  -f
#!/usr/bin/env -S sed dukeofyork.txt -f

: top
/_/ {
  x
    /ON/ !{
    s/.*/ON/
    x
    s;_;<i>;
    }
  /ON/ {
  s/.*/OFF/
  x
  s;_;</i>;
  }
  b top
}

# 2 {
#   # save a copy of line 2 to the hold buffer
#   h
#   # save a second copy to the end of the hold buffer
#   H
# }
# $ {
#   # Write the entire hold buffer to the screen
#   G
# }

# s/again/again/
# t label
# s/the/THE/g
# :label
# s/up/UP/g

# s/the/THE/g
# b next
# s/up/UP/g
# : next
# s/down/DOWN/g
# b
# s/marched/MARCHED/g

# N
# s/marched.*up/marched...up/
# P
# D

# 3,6 {
#   /when/ {
#     s/up/UP/g
#     s/down/DOWN/g
#   }
# }

# /marched/ {
#   n
#   # =
#   s/^/((/
#   n
#   # =
#   s/$/))/
#   # =
#   q
# }

# /up/ {
#   s/up/UP/
#   d
#   n
#   s/^/==/
# }

# s/ /\t/3
# l

# /marched/ {
#   N
#   s/\n/ - /
# }
