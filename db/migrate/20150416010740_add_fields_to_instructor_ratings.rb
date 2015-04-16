class AddFieldsToInstructorRatings < ActiveRecord::Migration
  def self.up
    add_column :instructor_ratings, :avg_course_rating, :decimal, precision: 5, scale: 2
    add_column :instructor_ratings, :avg_instructor_rating, :decimal, precision: 5, scale: 2
  end

  def self.down
    remove_column :instructor_ratings, :avg_course_rating
    remove_column :instructor_ratings, :avg_instructor_rating
  end
end
