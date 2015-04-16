class AddIndexes < ActiveRecord::Migration
  def self.up
    add_index :course_ratings, :course_id
    add_index :instructor_ratings, :course_id
  end

  def self.down
    remove_index :course_ratings, :column => :course_id
    remove_index :instructor_ratings, :column => :course_id
  end
end
