class LessonsController < ApplicationController
  before_action :set_course
  def create
    @course.lessons.create(lesson_params)
    redirect_to course_path(@course)
  end

  private
  def set_course
    @course = Course.find(params[:course_id])
  end

  def lesson_params
    params.require(:lesson).permit(:title, :description)
  end
end
