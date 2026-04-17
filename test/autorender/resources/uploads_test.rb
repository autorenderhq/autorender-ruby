# frozen_string_literal: true

require_relative "../test_helper"

class Autorender::Test::Resources::UploadsTest < Autorender::Test::ResourceTest
  def test_create_required_params
    response = @autorender.uploads.create(file: StringIO.new("Example data"), file_name: "file_name")

    assert_pattern do
      response => Autorender::Upload
    end

    assert_pattern do
      response => {
        data: Autorender::UploadData,
        success: Autorender::Internal::Type::Boolean
      }
    end
  end

  def test_create_from_url_required_params
    response = @autorender.uploads.create_from_url(remote_url: "remote_url")

    assert_pattern do
      response => Autorender::Upload
    end

    assert_pattern do
      response => {
        data: Autorender::UploadData,
        success: Autorender::Internal::Type::Boolean
      }
    end
  end

  def test_create_with_token_required_params
    response =
      @autorender.uploads.create_with_token(
        "up_tok_01JHD8X4BX3HQM8NFMD9ZCQ9QN",
        body: StringIO.new("Example data")
      )

    assert_pattern do
      response => Autorender::Upload
    end

    assert_pattern do
      response => {
        data: Autorender::UploadData,
        success: Autorender::Internal::Type::Boolean
      }
    end
  end

  def test_generate_token_required_params
    response = @autorender.uploads.generate_token(file_name: "avatar.jpg")

    assert_pattern do
      response => Autorender::Models::UploadGenerateTokenResponse
    end

    assert_pattern do
      response => {
        token: String | nil,
        expire_at: Integer | nil,
        policy: Autorender::Models::UploadGenerateTokenResponse::Policy | nil,
        public_key: String | nil,
        signature: String | nil,
        workspace_id: String | nil
      }
    end
  end
end
