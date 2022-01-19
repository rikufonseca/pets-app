class PetsController < ApplicationController
  before_action :pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(params_pet)
      if @pet.save
        redirect_to pets_path 
      else
        flash[:error] = "there was a problem, try again" 
      end
  end

  def edit
  end

  def update
    @pet.update
  end

  def destroy
    @pet.destroy
  end

  private

  def params_pet
    params.require(:pet).permit(:name, :species, :image)
  end

  def pet
    @pet = Pet.find(params[:id])
  end

end
