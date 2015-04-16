class RenameCourseRatings < ActiveRecord::Migration
  def self.up
    rename_table :course_ratings, :instructor_ratings
  end

  def self.down
    rename_table :instructor_ratings, :course_ratings
  end
end
