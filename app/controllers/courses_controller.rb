class CoursesController < ApplicationController
    before_action :set_course, only: [:show]

    def index
      @courses = Course.paginate(:page => params[:page], :per_page => 15).order('subject,course_number ASC')
    end

    def show
      @course_instructors = @course.instructors.order('first_name')
      @course_rating = @course.course_rating
    end

    private
      def set_course
        @course = Course.find(params[:id])
      end
end
