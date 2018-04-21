class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def upload_video(file_name)
    Cloudinary::Uploader.upload(file_name)
  end
  
end
