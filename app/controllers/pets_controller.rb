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
      if @pet.save!
        redirect_to pets_path
      else
        flash[:notice] = "Something went wrong, please try again!"
        render :new 
      end
  end

  def edit
  end

  def update
    if @pet.update(params_pet)
      redirect_to pet_path(@pet)
    else
      render :edit
    end
  end

  def destroy
    @pet.destroy
    redirect_to pets_path, notice: "You delete this adorable pet, hope you found it!"
  end

  private

  def params_pet
    params.require(:pet).permit(:name, :species, :image, :address)
  end

  def pet
    @pet = Pet.find(params[:id])
  end

end
