class InstructorsController < ApplicationController
    before_action :set_instructor, only: [:show]

    def index
      @instructors = Instructor.paginate(:page => params[:page], :per_page => 15).order('first_name')
    end

    def show
      @courses_averages = Array.new
      @instructor_courses = @instructor.courses
      @instructor_courses.each do |course|
        course_info = {'subject'=> course.subject,
                       'course_number' => course.course_number,
                       'title' => course.title,
                       'level' => course.level,
                       'hours' => course.hours}
        @courses_averages << Instructor.course_average(@instructor.id, course.id).merge!(course_info)
      end
    end

    private
      def set_instructor
        @instructor = Instructor.find(params[:id])
      end
end
