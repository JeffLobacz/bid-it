class WorkareasController < ApplicationController
  def index
    @workareas = Workarea.all
  end

  def show
  end

  def new
    @workarea = Workarea.new
  end

  def create
    @workarea = Workarea.new(workarea_params)
    if @workarea.save
      redirect_to workareas_path, notice: "Workarea was created successfully."
    else
      render :new
    end
  end

  private

  def workarea_params
    params.require(:workarea).permit(:title, :body)
  end

end
