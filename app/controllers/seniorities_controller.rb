class SenioritiesController < ApplicationController
  def index
  end

  def cc
    @employee = Seniority.all
  end

  def ft
    @employee = Seniority.all
  end

  def pt
    @employee = Seniority.all
  end
end
