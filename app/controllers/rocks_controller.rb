class RocksController < ApplicationController

  def index
    @rocks = Rock.all
    # @rock = Rock.create!(rock_params).encode_base_six_four(@rock.image)
  end

  def new
    @rock = Rock.new
  end

  def create
    @rock = Rock.create!(rock_params)

    if @rock.save
      flash[:notice] = "Rock has been successfully created!"
      redirect_to root_path
    end
  end

  private

  def rock_params
    params.require(:rock).permit(:location_found, :description, :image)
  end
end
