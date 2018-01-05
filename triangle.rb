# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)

  sides = [a, b, c]
  raise TriangleError, "all sides must > 0" unless [a, b, c].min > 0
  raise TriangleError, "all sides must be positive" if [a, b, c].min < 0
  sides.each {|side| (side < (sides.inject(:+) - side) ? nil : (raise TriangleError))} # For the final check, Raise an error if any single side is greater than the other two sides added together. It can be broken down like this if side is less than (remaining sides - side we're comparing) raise an error, else, nil. 

  if [a, b, c].uniq.count == 1
  	return :equilateral 
  elsif [a, b, c].uniq.count == 2
  	return :isosceles
  else
  	return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
