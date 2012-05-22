class EducatorsController < ApplicationController
  expose(:educator){Educator.find_by_id(params[:id])}
  

  def edit
    render
  end

  def show
  end

  def update
  end
end
