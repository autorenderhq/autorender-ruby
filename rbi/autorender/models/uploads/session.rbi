# typed: strong

module Autorender
  module Models
    module Uploads
      class Session < Autorender::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Autorender::Uploads::Session, Autorender::Internal::AnyHash)
          end

        # Part size in bytes
        sig { returns(T.nilable(Integer)) }
        attr_reader :part_size

        sig { params(part_size: Integer).void }
        attr_writer :part_size

        # Presigned PUT URLs in order, one per part
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :parts

        sig { params(parts: T::Array[String]).void }
        attr_writer :parts

        # Session UUID; required for the complete call
        sig { returns(T.nilable(String)) }
        attr_reader :session_id

        sig { params(session_id: String).void }
        attr_writer :session_id

        sig do
          params(
            part_size: Integer,
            parts: T::Array[String],
            session_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Part size in bytes
          part_size: nil,
          # Presigned PUT URLs in order, one per part
          parts: nil,
          # Session UUID; required for the complete call
          session_id: nil
        )
        end

        sig do
          override.returns(
            { part_size: Integer, parts: T::Array[String], session_id: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
