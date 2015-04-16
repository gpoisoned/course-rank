class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :subject
      t.string :course_number
      t.string :title
      t.string :level
      t.integer :hours

      t.timestamps null: false
    end
  end
end
