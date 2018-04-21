json.extract! email_message, :id, :recipient_email, :recipient_full_name, :recipient_preferred_language, :sender_full_name, :sender_email, :transcription, :created_at, :updated_at
json.url email_message_url(email_message, format: :json)
