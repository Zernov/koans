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
  # WRITE THIS CODE
	sides = [a, b, c]
	sides.each { |side| raise TriangleError if side < 0 }

	raise TriangleError if sides.sort.reverse.inject(:-) >= 0

	return case sides.uniq.length
	when 3
		:scalene
	when 2
		:isosceles
	when 1
		:equilateral
	end

#	if (sides[0] <= 0)
#		raise TriangleError
#	end
#	if (sides[2] >= sides[0] + sides[1])
#		raise TriangleError
#	end
#	if (sides[0] == sides[1] && sides[1] == sides[2])
#		return :equilateral
#	end
#	if (sides[0] == sides[1] || sides[1] == sides[2])
#		return :isosceles
#	end
#	return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
