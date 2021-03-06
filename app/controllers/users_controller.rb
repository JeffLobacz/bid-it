class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_cc_path, notice: "user was created successfully."
    else
      render :new
    end
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
    @shifts = Shift.all
    @grouped_by_location = @shifts.group_by { |t| t.detail_location }
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      # flash[:notice] = "User table was updated."
      redirect_to users_cc_path
    else
      flash[:error] = "Error saving entry"
      render :edit
    end
  end

  def cc
    @users = User.all
  end

  def ft
    @users = User.all
  end

  def pt
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:employment_status, :first_name, :last_name, :employee_number, :seniority, :qualification, :shift_id)
  end

end
