# frozen_string_literal: true

require_relative "../test_helper"

class Autorender::Test::Resources::MultipartUploadsTest < Autorender::Test::ResourceTest
  def test_complete_required_params
    response = @autorender.multipart_uploads.complete(session_id: "x")

    assert_pattern do
      response => Autorender::Models::MultipartUploadCompleteResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        custom_id: String | nil,
        extension: String,
        file_no: String,
        folder_no: String | nil,
        height: Integer | nil,
        is_duplicate: Autorender::Internal::Type::Boolean,
        metadata: ^(Autorender::Internal::Type::HashOf[Autorender::Internal::Type::Unknown]) | nil,
        mime_type: String,
        name: String,
        path: String,
        size: Integer,
        tags: ^(Autorender::Internal::Type::ArrayOf[String]),
        thumbnail: String,
        upload_source: String,
        url: String,
        width: Integer | nil,
        workspace_id: String,
        format_: String | nil,
        hash_: String | nil,
        is_private: Autorender::Internal::Type::Boolean | nil
      }
    end
  end

  def test_start_required_params
    response = @autorender.multipart_uploads.start(file_name: "x", format_: "x", size: 1)

    assert_pattern do
      response => Autorender::Models::MultipartUploadStartResponse
    end

    assert_pattern do
      response => {
        expire_at: Integer,
        min_part_size: Integer,
        part_size: Integer,
        parts: ^(Autorender::Internal::Type::ArrayOf[String]),
        policy: Autorender::Models::MultipartUploadStartResponse::Policy,
        public_key: String,
        session_id: String,
        uuid: String,
        workspace_id: String
      }
    end
  end
end
