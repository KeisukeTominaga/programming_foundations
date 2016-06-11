# Write a method that takes a positive integer, `n`, as an argument, and displays a right triangle whose sides each have `n` stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Examples:

def triangle(n)
  n.times do |i|
    blank = " "
    blank = blank * (n - 1 - i)
    astarisk = "*" * (i + 1)
    puts "#{blank}#{astarisk}"
  end
end



# ```
 triangle(9)
 
#     *
#    **
#   ***
#  ****
# *****
# ```

# ```
# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
# ```

