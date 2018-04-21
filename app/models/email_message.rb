class EmailMessage < ApplicationRecord
  mount_uploader :raw_video, RawVideoUploader

  def upload_video(file_name)
    Cloudinary::Uploader.upload(file_name, :resource_type => :video)
  end


end
