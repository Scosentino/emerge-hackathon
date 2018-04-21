class CreateEmailMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :email_messages do |t|
      t.string :recipient_email
      t.string :recipient_full_name
      t.string :recipient_preferred_language
      t.string :sender_full_name
      t.string :sender_email
      t.text :transcription

      t.timestamps
    end
  end
end
