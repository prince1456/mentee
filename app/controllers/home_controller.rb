class HomeController < ApplicationController
  def index

  end
  def map
    @mentors = Mentor.all
  end
  def likess

  end
end
