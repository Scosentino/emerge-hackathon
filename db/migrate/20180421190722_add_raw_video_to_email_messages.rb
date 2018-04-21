class AddRawVideoToEmailMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :email_messages, :raw_video, :string
  end
end
