class InstructorsController < ApplicationController
    before_action :set_instructor, only: [:show]

    def index
      @instructors = Instructor.paginate(:page => params[:page], :per_page => 15).order('last_name asc')
    end

    def show
      @instructor_courses = @instructor.courses
    end

    private
      def set_instructor
        @instructor = Instructor.find(params[:id])
      end
end
