# frozen_string_literal: true

require_relative "../../test_helper"

class Autorender::Test::Resources::Uploads::MultipartTest < Autorender::Test::ResourceTest
  def test_complete_required_params
    response = @autorender.uploads.multipart.complete(session_id: "session_id")

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

  def test_start_required_params
    response = @autorender.uploads.multipart.start(file_name: "file_name", format_: "format", size: 0)

    assert_pattern do
      response => Autorender::Uploads::Session
    end

    assert_pattern do
      response => {
        part_size: Integer | nil,
        parts: ^(Autorender::Internal::Type::ArrayOf[String]) | nil,
        session_id: String | nil
      }
    end
  end

  def test_upload_part_required_params
    response = @autorender.uploads.multipart.upload_part(body: StringIO.new("Example data"))

    assert_pattern do
      response => nil
    end
  end
end
