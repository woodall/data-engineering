class UploadsController < ApplicationController
  def index
    @uploads = Upload.all
  end

  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.create
    file_contents = params[:upload][:file].read
    if file_contents.present?
      upload = UploadCreationService.call(file_contents, @upload)
      redirect_to uploads_path
      flash[:notice] = "Success."
    else
      render :new
      flash[:notice] = "Sorry, there was an error. Please try again."
    end
  end

private

  def set_upload
    @data_file = Upload.find(params[:id])
  end


  def upload_params
    params.require(:upload).permit(:file, :upload, :filename)
  end
end



