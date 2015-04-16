class CreateNewCourseRatingsTable < ActiveRecord::Migration
  def self.up
    create_table :course_ratings do |t|
      t.integer :course_id
      t.decimal :avg_grade, precision: 5, scale: 2
      t.decimal :avg_course, precision: 5, scale: 2
      t.decimal :avg_instructor, precision: 5, scale: 2
      t.decimal :avg_workload, precision: 5, scale: 2
      t.integer :total_enrollment
      t.integer :avg_enrollment
      t.integer :a_percent
      t.integer :b_percent
      t.integer :c_percent
      t.integer :c_minus_or_below_percent
      t.integer :df_percent
      t.integer :dfw_percent

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :course_ratings
  end
end
