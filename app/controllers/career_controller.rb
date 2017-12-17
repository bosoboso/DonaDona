class CareerController < ApplicationController
  def new
    @career = Career.new
  end

  def create
    career = Career.new
    career = params[:career].permit(:employee_id, :from, :to, :project, :language, :os)
    Career.create(career)
    redirect_to :action => 'index'
  end

  def index
    @careers = Career.where(employee_id: current_user.employee_id)
  end

  def update
  end

  def delete
  end
end
