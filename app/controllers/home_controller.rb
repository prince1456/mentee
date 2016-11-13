class HomeController < ApplicationController
  def index

  end
  def map
    @mentors = Mentor.all
  end
end
