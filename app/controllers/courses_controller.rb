class CoursesController < ApplicationController
  def index

    @search_term= params[:search]|| 'jhu'
    @courses= Coursera.for(@search_term) || []

  end



end
