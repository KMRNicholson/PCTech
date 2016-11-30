class PointcloudController < ApplicationController
  def index
  	@pointclouds = Pointcloud.all
  end

  def new
  	@pointcloud = Pointcloud.new
  end

  def create
  	@pointcloud = Pointcloud.new(pointcloud_params)

  	if @pointcloud.save
  		redirect_to pointclouds_path, notice: "The pointcloud file #{@pointcloud.name} has been uploaded."
  	else
  		render "new"
  	end
  end

  def destroy
  	@pointcloud = Pointcloud.find(params[:id])
  	@pointcloud.destroy
  	redirect_to pointclouds_path, notice: "The pointcloud file #{@pointcloud.name} has been deleted."
  end

  private #-----------------------------------------------------
  
  def pointcloud_params
  	params.require(:pointcloud).permit(:name, :attachment)
  end
end
