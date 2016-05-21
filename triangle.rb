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

  check_triangle_sides(a,b,c)

  if a == b && a == c
    :equilateral
  elsif a == b || a == c || b == c
    :isosceles
  else
    :scalene
  end

end

def check_triangle_sides(a,b,c)
  if one_side_less_than_zero?(a,b,c) || two_sides_less_than_other?(a,b,c)
    raise TriangleError.new("New instances can be raised directly.")
  end
end

def one_side_less_than_zero?(a,b,c)
  (a <= 0 || b <= 0 || c <= 0)? true : false
end

def two_sides_less_than_other?(a,b,c)
  arr = [a,b,c]
  arr = arr.sort
  (arr[0] + arr[1] <= arr[2])? true : false
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
