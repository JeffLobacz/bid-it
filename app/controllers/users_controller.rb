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
    @shift = Shift.find_by(id: @user.shift_id)
  end

  def update
    $user = User.find(params[:id])
    $user.assign_attributes(user_params)
    $shift = Shift.find_by(id: $user.shift_id)
    # user = @user
    # @shift = @user.shifts.update_attributes(user_id: @user.id)
    # params = { user: { shift_attributes: { user_id: :id } } }
    # @user.update_attributes(params[:user])
    if $user.save
      flash[:notice] = "User table was updated."
      redirect_to edit_user_path
    else
      flash[:error] = "There was an error updating the User table. Please try again."
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

  def shift_params
    params.require(:shift).permit(:last_name)
  end

end
