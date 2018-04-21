require 'test_helper'

class EmailMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @email_message = email_messages(:one)
  end

  test "should get index" do
    get email_messages_url
    assert_response :success
  end

  test "should get new" do
    get new_email_message_url
    assert_response :success
  end

  test "should create email_message" do
    assert_difference('EmailMessage.count') do
      post email_messages_url, params: { email_message: { recipient_email: @email_message.recipient_email, recipient_full_name: @email_message.recipient_full_name, recipient_preferred_language: @email_message.recipient_preferred_language, sender_email: @email_message.sender_email, sender_full_name: @email_message.sender_full_name, transcription: @email_message.transcription } }
    end

    assert_redirected_to email_message_url(EmailMessage.last)
  end

  test "should show email_message" do
    get email_message_url(@email_message)
    assert_response :success
  end

  test "should get edit" do
    get edit_email_message_url(@email_message)
    assert_response :success
  end

  test "should update email_message" do
    patch email_message_url(@email_message), params: { email_message: { recipient_email: @email_message.recipient_email, recipient_full_name: @email_message.recipient_full_name, recipient_preferred_language: @email_message.recipient_preferred_language, sender_email: @email_message.sender_email, sender_full_name: @email_message.sender_full_name, transcription: @email_message.transcription } }
    assert_redirected_to email_message_url(@email_message)
  end

  test "should destroy email_message" do
    assert_difference('EmailMessage.count', -1) do
      delete email_message_url(@email_message)
    end

    assert_redirected_to email_messages_url
  end
end
