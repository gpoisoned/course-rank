class Instructor < ActiveRecord::Base
  include PgSearch
  multisearchable :against => [:first_name, :last_name, :title]

  has_many :instructor_courses
  has_many :courses, through: :instructor_courses
  has_many :instructor_ratings

  def self.course_average(instructor_id, course_id)
    instructor_course_ratings = InstructorRating.where(:instructor_id => instructor_id, :course_id => course_id)
    course_avg = Hash.new
    course_avg["course_id"] = course_id

    course_avg["avg_workload_scale"] = instructor_course_ratings.average(:workload_scale)
    course_avg["avg_grade"] = "%.2f" % instructor_course_ratings.average(:avg_grade)
    course_avg["% A"] = "%.2f" % instructor_course_ratings.average(:a_percent)
    course_avg["% B"] = "%.2f" % instructor_course_ratings.average(:b_percent)
    course_avg["% C"] = "%.2f" %instructor_course_ratings.average(:c_percent)
    course_avg["% D"] = "%.2f" % instructor_course_ratings.average(:d_percent)
    course_avg["% F"] = "%.2f" %instructor_course_ratings.average(:f_percent)
    return course_avg
  end
end
