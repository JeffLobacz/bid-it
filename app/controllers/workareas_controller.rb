class WorkareasController < ApplicationController
  def index
    @workareas = Workarea.all
  end

  def show
  end
end
