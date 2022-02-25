class MainController < ApplicationController
  before_action :set_course
  def landing_page
  end

  private
  def set_course
    @course = Course.find(1)
  end
end
