class LogsController < ApplicationController
  expose(:logs)
  expose(:log)
  expose(:educator){Educator.find_by_id(:id)}

  def index
    render
  end

  def new

  end

  def create
    if log.save
      redirect_to logs_url, :notice => "Successfully created log."
    else
      render :action => 'new'
    end
  end


  def update
    if log.update_attributes(params[:log])
      redirect_to logs_url, :notice  => "Successfully updated log."
    else
      render :action => 'edit'
    end
  end
end
