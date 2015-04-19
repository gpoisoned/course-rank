class Instructor < ActiveRecord::Base
  include PgSearch
  multisearchable :against => [:first_name, :last_name, :title]

  has_many :instructor_courses
  has_many :courses, through: :instructor_courses
  has_many :instructor_ratings
end
