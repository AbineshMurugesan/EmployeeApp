class ApplicationController < ActionController::Base

  def hello
    render html: "I like ruby"
  end

  def display
    render html: "I like to display a webpage"
  end
end