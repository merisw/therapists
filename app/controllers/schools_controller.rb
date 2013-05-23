class SchoolsController < ApplicationController
  before_filter :find_school, :only => [:show, :edit, :update, :destroy]

  def new
    @school = School.new
  end

  def create
    @school = School.new(params[:school])
    if @school.save
      flash[:notice] = "School has been created."
      redirect_to @school
    else
      flash[:alert] = "School has not been created."
      render action: "new"
    end
  end

  def index
    @schools = School.all
  end

  def show
  end

  def edit
  end

  def update
    if @school.update_attributes(params[:school])
      flash[:notice] = "School has been updated."
      redirect_to @school
    else
      flash[:alert] = "School has not been updated."
      render action: "edit"
    end
  end

  def destroy
    @school.destroy
    flash[:notice] = "School has been deleted."
    redirect_to schools_path
  end

  private
  def find_school
    @school = School.find(params[:id])
  end
end
