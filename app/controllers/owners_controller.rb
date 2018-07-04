class OwnersController < ApplicationController

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new
    #if @owner.valid?
      @owner.save
      redirect_to @owner
    # else render :new
    # end
  end

  def show
    @owner = Owner.find(params[:id])
  end
  #I should be able to see all of an owner's pets from his/her show page
  #I should be able to navigate to a pet's show page from it's owner's show page

  private

  # def owner_params
  #   params.require(:owner).permit(:name)
  # end

end
