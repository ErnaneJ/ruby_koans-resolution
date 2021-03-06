# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)

  # colocando os valores em ordem crescente
  a,b,c = [a,b,c].sort
  # lanca excecao caso o menor valor dentre os lados seja negativo outro
  # a soma dos dois menores lados seja maior que o terceiro
  raise TriangleError if [a,b,c].min<=0 || a+b<=c

  if a == b && a == c
    return :equilateral
  elsif (a == b and b != c) or (a == c and c != b) or (b == c and a != c)
    return :isosceles
  elsif a != b && a != c && b != c
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
