class CamerasController < ApplicationController
    def index
        @cameras=Camera.all
    end

    def show
        @camera=Camera.find(params[:id])
        @photos = @camera.photos
        @photo = Photo.new
    end

    def new
      @camera = Camera.new
end
def create
  @camera = Camera.new(camera_params)
  @camera.save
  redirect_to camera_path(@camera)
end
def edit
  @camera = Camera.find(params[:id])
end

def update
  @camera = Camera.find(params[:id])
  @camera.update(camera_params)
  redirect_to cameras_path
end

def destroy
  @camera = Camera.find(params[:id])
    @camera.destroy
    redirect_to cameras_path
end

end

private
def camera_params
  params.require(:camera).permit!
end
