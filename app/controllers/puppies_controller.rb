class PuppiesController < ApplicationController

  def index
    @puppies = Puppy.with_attached_photo
  end

  def new
    @puppy = Puppy.new
  end

  def create
    @puppy = Puppy.create!(puppy_params)

    redirect_to puppies_url
  end 

  private

    def puppy_params
      params.require(:puppy).permit(:photo)
    end

end
