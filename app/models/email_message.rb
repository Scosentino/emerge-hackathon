class EmailMessage < ApplicationRecord
  mount_uploader :raw_video, RawVideoUploader

  def upload_video(file_name)
    Cloudinary::Uploader.upload(file_name)
  end

  
end
