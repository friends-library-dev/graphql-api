// auto-generated, do not edit
import Graphiti
import NonEmpty
import Vapor

extension AudioPart {
  enum GraphQL {
    enum Schema {
      enum Queries {}
      enum Mutations {}
    }
    enum Request {}
  }
}

extension AudioPart.GraphQL.Schema {
  static var type: AppType<AudioPart> {
    Type(AudioPart.self) {
      Field("id", at: \.id.rawValue)
      Field("audioId", at: \.audioId.rawValue)
      Field("title", at: \.title)
      Field("duration", at: \.duration)
      Field("chapters", at: \.chapters.rawValue)
      Field("order", at: \.order)
      Field("mp3SizeHq", at: \.mp3SizeHq.rawValue)
      Field("mp3SizeLq", at: \.mp3SizeLq.rawValue)
      Field("externalIdHq", at: \.externalIdHq.rawValue)
      Field("externalIdLq", at: \.externalIdLq.rawValue)
      Field("createdAt", at: \.createdAt)
      Field("updatedAt", at: \.updatedAt)
    }
  }
}

extension AudioPart.GraphQL.Request {
  struct CreateAudioPartInput: Codable {
    let id: UUID?
    let audioId: UUID
    let title: String
    let duration: Double
    let chapters: [Int]
    let order: Int
    let mp3SizeHq: Int
    let mp3SizeLq: Int
    let externalIdHq: Int64
    let externalIdLq: Int64
  }

  struct UpdateAudioPartInput: Codable {
    let id: UUID
    let audioId: UUID
    let title: String
    let duration: Double
    let chapters: [Int]
    let order: Int
    let mp3SizeHq: Int
    let mp3SizeLq: Int
    let externalIdHq: Int64
    let externalIdLq: Int64
  }
}

extension AudioPart.GraphQL.Request {
  struct CreateAudioPartArgs: Codable {
    let input: AudioPart.GraphQL.Request.CreateAudioPartInput
  }

  struct UpdateAudioPartArgs: Codable {
    let input: AudioPart.GraphQL.Request.UpdateAudioPartInput
  }

  struct CreateAudioPartsArgs: Codable {
    let input: [AudioPart.GraphQL.Request.CreateAudioPartInput]
  }

  struct UpdateAudioPartsArgs: Codable {
    let input: [AudioPart.GraphQL.Request.UpdateAudioPartInput]
  }
}

extension AudioPart.GraphQL.Schema {
  static var create: AppInput<AudioPart.GraphQL.Request.CreateAudioPartInput> {
    Input(AudioPart.GraphQL.Request.CreateAudioPartInput.self) {
      InputField("id", at: \.id)
      InputField("audioId", at: \.audioId)
      InputField("title", at: \.title)
      InputField("duration", at: \.duration)
      InputField("chapters", at: \.chapters)
      InputField("order", at: \.order)
      InputField("mp3SizeHq", at: \.mp3SizeHq)
      InputField("mp3SizeLq", at: \.mp3SizeLq)
      InputField("externalIdHq", at: \.externalIdHq)
      InputField("externalIdLq", at: \.externalIdLq)
    }
  }

  static var update: AppInput<AudioPart.GraphQL.Request.UpdateAudioPartInput> {
    Input(AudioPart.GraphQL.Request.UpdateAudioPartInput.self) {
      InputField("id", at: \.id)
      InputField("audioId", at: \.audioId)
      InputField("title", at: \.title)
      InputField("duration", at: \.duration)
      InputField("chapters", at: \.chapters)
      InputField("order", at: \.order)
      InputField("mp3SizeHq", at: \.mp3SizeHq)
      InputField("mp3SizeLq", at: \.mp3SizeLq)
      InputField("externalIdHq", at: \.externalIdHq)
      InputField("externalIdLq", at: \.externalIdLq)
    }
  }
}

extension AudioPart.GraphQL.Schema.Queries {
  static var get: AppField<AudioPart, IdentifyEntityArgs> {
    Field("getAudioPart", at: Resolver.getAudioPart) {
      Argument("id", at: \.id)
    }
  }

  static var list: AppField<[AudioPart], NoArgs> {
    Field("getAudioParts", at: Resolver.getAudioParts)
  }
}

extension AudioPart.GraphQL.Schema.Mutations {
  static var create: AppField<AudioPart, AudioPart.GraphQL.Request.CreateAudioPartArgs> {
    Field("createAudioPart", at: Resolver.createAudioPart) {
      Argument("input", at: \.input)
    }
  }

  static var createMany: AppField<[AudioPart], AudioPart.GraphQL.Request.CreateAudioPartsArgs> {
    Field("createAudioPart", at: Resolver.createAudioParts) {
      Argument("input", at: \.input)
    }
  }

  static var update: AppField<AudioPart, AudioPart.GraphQL.Request.UpdateAudioPartArgs> {
    Field("createAudioPart", at: Resolver.updateAudioPart) {
      Argument("input", at: \.input)
    }
  }

  static var updateMany: AppField<[AudioPart], AudioPart.GraphQL.Request.UpdateAudioPartsArgs> {
    Field("createAudioPart", at: Resolver.updateAudioParts) {
      Argument("input", at: \.input)
    }
  }

  static var delete: AppField<AudioPart, IdentifyEntityArgs> {
    Field("deleteAudioPart", at: Resolver.deleteAudioPart) {
      Argument("id", at: \.id)
    }
  }
}

extension AudioPart {
  convenience init(_ input: AudioPart.GraphQL.Request.CreateAudioPartInput) throws {
    self.init(
      id: .init(rawValue: input.id ?? UUID()),
      audioId: .init(rawValue: input.audioId),
      title: input.title,
      duration: .init(rawValue: input.duration),
      chapters: try NonEmpty<[Int]>.fromArray(input.chapters),
      order: input.order,
      mp3SizeHq: .init(rawValue: input.mp3SizeHq),
      mp3SizeLq: .init(rawValue: input.mp3SizeLq),
      externalIdHq: .init(rawValue: input.externalIdHq),
      externalIdLq: .init(rawValue: input.externalIdLq)
    )
  }

  func update(_ input: AudioPart.GraphQL.Request.UpdateAudioPartInput) throws {
    self.audioId = .init(rawValue: input.audioId)
    self.title = input.title
    self.duration = .init(rawValue: input.duration)
    self.chapters = try NonEmpty<[Int]>.fromArray(input.chapters)
    self.order = input.order
    self.mp3SizeHq = .init(rawValue: input.mp3SizeHq)
    self.mp3SizeLq = .init(rawValue: input.mp3SizeLq)
    self.externalIdHq = .init(rawValue: input.externalIdHq)
    self.externalIdLq = .init(rawValue: input.externalIdLq)
    self.updatedAt = Current.date()
  }
}
