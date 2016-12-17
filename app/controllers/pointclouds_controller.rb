class PointcloudsController < ApplicationController
  def index
  	@pointcloud = Pointcloud.all
  end

  def new
  	@pointcloud = Pointcloud.new
  end

  def create
  	@pointcloud = Pointcloud.new(pointcloud_params)

  	if @pointcloud.save
  		redirect_to pointclouds_path
  	else
  		render "new"
  	end
  end

  def destroy
  	@pointcloud = Pointcloud.find(params[:id])
  	@pointcloud.destroy
  	redirect_to pointclouds_path
  end

  def display
    @pointcloud = Pointcloud.find_by(params[:id])
    render :layout => "pointcloud_viewer"
  end

  private #-----------------------------------------------------
  
  def pointcloud_params
  	params.require(:pointcloud).permit(:name, :attachment)
  end
end