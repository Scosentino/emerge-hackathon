class EmailMessage < ApplicationRecord
  mount_uploader :raw_video, RawVideoUploader
end
