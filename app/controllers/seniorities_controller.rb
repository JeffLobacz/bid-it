class SenioritiesController < ApplicationController
  def index
  end

  def new
    @employee = Seniority.new
  end

  def create
    @employee = Seniority.new(seniority_params)
    if @employee.save
      redirect_to seniorities_cc_path, notice: "Employee was created successfully."
    else
      render :new
    end
  end


  def cc
    @employees = Seniority.all
  end

  def ft
    @employees = Seniority.all
  end

  def pt
    @employees = Seniority.all
  end
end

private

def seniority_params
  params.require(:seniority).permit(:employment_status, :first_name, :last_name, :employee_number, :seniority, :qualification)
end
