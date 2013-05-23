class TherapistsController < ApplicationController
  before_filter :find_therapist, :only => [:show, :edit, :update, :destroy]

  def index
    @therapists = Therapist.all
  end

  def new
    @therapist = Therapist.new
  end

  def create
    @therapist = Therapist.new(params[:therapist])
    if @therapist.save
      flash[:notice] = "Therapist has been created."
      redirect_to @therapist
    else
      flash[:alert] = "Therapist has not been created."
      render action: "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @therapist.update_attributes(params[:therapist])
      flash[:notice] = "Therapist has been updated."
      redirect_to @therapist
    else
      flash[:alert] = "Therapist has not been updated."
      render action: "edit"
    end
  end

  def destroy
    @therapist.destroy
    flash[:notice] = "Therapist has been deleted."
    redirect_to therapists_path
  end

  private
  def find_therapist
    @therapist = Therapist.find(params[:id])
  end

end
