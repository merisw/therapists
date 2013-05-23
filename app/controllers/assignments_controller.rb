class AssignmentsController < ApplicationController
  before_filter :find_assignment, :only => [:show, :edit, :update, :destroy]

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new(params[:assignment])
    if @assignment.save
      flash[:notice] = "Assignment has been created."
      redirect_to @assignment
    else
      flash[:alert] = "Assignment has not been created."
      render action: "new"
    end
  end

  def index
    @assignments = Assignment.all
  end

  def show
  end

  def edit
  end

  def update
    if @assignment.update_attributes(params[:assignment])
      flash[:notice] = "Assignment has been updated."
      redirect_to @assignment
    else
      flash[:alert] = "Assignment has not been updated."
      render action: "edit"
    end
  end

  def destroy
    @assignment.destroy
    flash[:notice] = "Assignment has been deleted."
    redirect_to assignment_path
  end

  private
  def find_assignment
    @assignment = Assignment.find(params[:id])
  end
end


