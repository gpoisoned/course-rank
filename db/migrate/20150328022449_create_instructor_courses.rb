class CreateInstructorCourses < ActiveRecord::Migration
  def change
    create_table :instructor_courses do |t|
      t.integer :instructor_id, :null => false
      t.integer :course_id, :null => false
    end

    add_index :instructor_courses, [ :instructor_id, :course_id]
  end

  def down
    drop_table :instructor_courses
    remove_index :instructor_courses, :column => [ :instructor_id, :course_id]
  end
end
