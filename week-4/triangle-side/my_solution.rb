# I worked on this challenge [by myself, with: ].
# Myself, Jones Melton

# Your Solution Below

def valid_triangle?(s1, s2, s3)
  triangle = [s1,s2,s3]
  triangle.sort!
  triangle[2] < triangle[0] + triangle[1] ? true : false
end