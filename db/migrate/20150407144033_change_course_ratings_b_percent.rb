class ChangeCourseRatingsBPercent < ActiveRecord::Migration
  def change
    change_column :course_ratings, :b_percent, 'decimal USING CAST(b_percent AS decimal)'
  end
end
