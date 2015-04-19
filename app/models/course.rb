class Course < ActiveRecord::Base
  include PgSearch
  multisearchable :against => [:subject, :course_number, :title]

  has_many :instructor_courses
  has_many :instructors, through: :instructor_courses
  has_one :course_rating
end
