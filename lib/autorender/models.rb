# frozen_string_literal: true

module Autorender
  [Autorender::Internal::Type::BaseModel, *Autorender::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Autorender::Internal::AnyHash) } }
  end

  Autorender::Internal::Util.walk_namespaces(Autorender::Models).each do |mod|
    case mod
    in Autorender::Internal::Type::Enum | Autorender::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Autorender::Internal::Util.walk_namespaces(Autorender::Models)
                            .lazy
                            .grep(Autorender::Internal::Type::Union)
                            .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  FileDeleteParams = Autorender::Models::FileDeleteParams

  FileListParams = Autorender::Models::FileListParams

  FileRenameParams = Autorender::Models::FileRenameParams

  FileRetrieveParams = Autorender::Models::FileRetrieveParams

  FileUpdateParams = Autorender::Models::FileUpdateParams

  FolderCreateParams = Autorender::Models::FolderCreateParams

  FolderDeleteParams = Autorender::Models::FolderDeleteParams

  FolderRenameParams = Autorender::Models::FolderRenameParams

  UploadCreateFromURLParams = Autorender::Models::UploadCreateFromURLParams

  UploadCreateParams = Autorender::Models::UploadCreateParams

  UploadGenerateTokenParams = Autorender::Models::UploadGenerateTokenParams

  UploadUploadWithTokenParams = Autorender::Models::UploadUploadWithTokenParams
end
