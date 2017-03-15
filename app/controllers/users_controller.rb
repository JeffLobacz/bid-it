class UsersController < ApplicationController
  def index
  end

  def new
    @employee = User.new
  end

  def create
    @employee = User.new(user_params)
    if @employee.save
      redirect_to users_cc_path, notice: "Employee was created successfully."
    else
      render :new
    end
  end

  def edit
    @employee = User.find(params[:id])
  end

  def update
    @employee = User.find(params[:id])
    @employee.assign_attributes(user_params)

    if @employee.save
      # flash[:notice] = "Post was saved."
      redirect_to users_cc_path
    else
      # flash[:error] = "There was an error saving the post. Please try again."
      render :edit
    end
  end

  def cc
    @employees = User.all
  end

  def ft
    @employees = User.all
  end

  def pt
    @employees = User.all
  end
end

private

def user_params
  params.require(:user).permit(:employment_status, :first_name, :last_name, :employee_number, :seniority, :qualification, :shift)
end
