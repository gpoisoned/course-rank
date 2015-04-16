class AddTermToCourseRating < ActiveRecord::Migration
  def self.up
    add_column :course_ratings, :term, :string
  end

  def self.down
    remove_column :course_ratings, :term
  end
end
