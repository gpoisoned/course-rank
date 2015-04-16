class CreateCourseRatings < ActiveRecord::Migration
  def change
    create_table :course_ratings do |t|
      t.integer :course_id
      t.decimal :avg_grade
      t.decimal :a_percent
      t.string :b_percent
      t.decimal :c_percent
      t.decimal :d_percent
      t.decimal :f_percent
      t.decimal :workload_scale
      t.integer :year

      t.timestamps null: false
    end
  end
end
