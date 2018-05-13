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
values = [a, b, c]
values.sort!
size = values.uniq.size
sides = values[0] + values[1]
hyp = values[2]
diff = values[1] - values[0]
triangle_type = [:equilateral, :isosceles, :scalene]
    if values.min <= 0 #or hyp <= sides
     raise TriangleError.new("That's not a triangle!")
    elsif hyp >= sides or hyp <= diff 
     raise TriangleError.new("That's not a triangle!")
    elsif size == 1
     return triangle_type[0]
    elsif size == 2
     return triangle_type[1]
    else
     return triangle_type[2]
    end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
