class TherapistsController < ApplicationController

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
      flash[:alert] = "Therapist was not created."
      render action: "new"
    end
  end

  def show
    @therapist = Therapist.find(params[:id])
  end

end
