class PetsController < ApplicationController

# before_action :fetch_pet, only: [:show, :edit, :update]

  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new
    #if @pet.valid?
      @pet.save
      redirect_to @pet     #pet_path(@pet)
    #else render :new
    #end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    #if @pet.valid?
      @pet.update(pet_params)
      redirect_to @pet
    # else render :edit
    # end
  end

private

def pet_params
  params.require(:pet).permit(:name)
end

# def fetch_pet
#   @pet = Pet.find(params[:id])
# end

end
