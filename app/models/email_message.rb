class EmailMessage < ApplicationRecord
  include Cloudinary
  mount_uploader :raw_video, RawVideoUploader

  def upload_video(file_name)
    Cloudinary::Uploader.upload(file_name, :resource_type => :video, :raw_convert => "google_speech")
  end


end
