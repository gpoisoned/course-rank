class AddInstructorIdToCourseRating < ActiveRecord::Migration
  def self.up
    add_column :course_ratings, :instructor_id, :integer
    add_index :course_ratings, :instructor_id
  end

  def self.down
    remove_column :course_ratings, :instructor_id
    remove_index :course_ratings, :column => :instructor_id
  end
end
