# typed: strong

module Autorender
  module Models
    class Upload < Autorender::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Autorender::Upload, Autorender::Internal::AnyHash)
        end

      sig { returns(Autorender::UploadData) }
      attr_reader :data

      sig { params(data: Autorender::UploadData::OrHash).void }
      attr_writer :data

      # Indicates if the upload was successful
      sig { returns(T::Boolean) }
      attr_accessor :success

      sig do
        params(
          data: Autorender::UploadData::OrHash,
          success: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        data:,
        # Indicates if the upload was successful
        success:
      )
      end

      sig do
        override.returns({ data: Autorender::UploadData, success: T::Boolean })
      end
      def to_hash
      end
    end
  end
end
