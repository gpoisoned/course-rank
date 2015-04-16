class Course < ActiveRecord::Base
  has_many :instructor_courses
  has_many :instructors, through: :instructor_courses
  has_many :course_ratings
end
