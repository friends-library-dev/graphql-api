// auto-generated, do not edit
import Graphiti
import Vapor

extension Document {
  enum GraphQL {
    enum Schema {
      enum Queries {}
      enum Mutations {}
    }
    enum Request {}
  }
}

extension Document.GraphQL.Schema {
  static var type: AppType<Document> {
    Type(Document.self) {
      Field("id", at: \.id.rawValue)
      Field("friendId", at: \.friendId.rawValue)
      Field("altLanguageId", at: \.altLanguageId?.rawValue)
      Field("title", at: \.title)
      Field("slug", at: \.slug)
      Field("filename", at: \.filename)
      Field("published", at: \.published)
      Field("originalTitle", at: \.originalTitle)
      Field("incomplete", at: \.incomplete)
      Field("description", at: \.description)
      Field("partialDescription", at: \.partialDescription)
      Field("featuredDescription", at: \.featuredDescription)
      Field("createdAt", at: \.createdAt)
      Field("updatedAt", at: \.updatedAt)
    }
  }
}

extension Document.GraphQL.Request {
  struct CreateDocumentInput: Codable {
    let id: UUID?
    let friendId: UUID
    let altLanguageId: UUID?
    let title: String
    let slug: String
    let filename: String
    let published: Int?
    let originalTitle: String?
    let incomplete: Bool
    let description: String
    let partialDescription: String
    let featuredDescription: String?
  }

  struct UpdateDocumentInput: Codable {
    let id: UUID
    let friendId: UUID
    let altLanguageId: UUID?
    let title: String
    let slug: String
    let filename: String
    let published: Int?
    let originalTitle: String?
    let incomplete: Bool
    let description: String
    let partialDescription: String
    let featuredDescription: String?
  }
}

extension Document.GraphQL.Request {
  struct CreateDocumentArgs: Codable {
    let input: Document.GraphQL.Request.CreateDocumentInput
  }

  struct UpdateDocumentArgs: Codable {
    let input: Document.GraphQL.Request.UpdateDocumentInput
  }

  struct CreateDocumentsArgs: Codable {
    let input: [Document.GraphQL.Request.CreateDocumentInput]
  }

  struct UpdateDocumentsArgs: Codable {
    let input: [Document.GraphQL.Request.UpdateDocumentInput]
  }
}

extension Document.GraphQL.Schema {
  static var create: AppInput<Document.GraphQL.Request.CreateDocumentInput> {
    Input(Document.GraphQL.Request.CreateDocumentInput.self) {
      InputField("id", at: \.id)
      InputField("friendId", at: \.friendId)
      InputField("altLanguageId", at: \.altLanguageId)
      InputField("title", at: \.title)
      InputField("slug", at: \.slug)
      InputField("filename", at: \.filename)
      InputField("published", at: \.published)
      InputField("originalTitle", at: \.originalTitle)
      InputField("incomplete", at: \.incomplete)
      InputField("description", at: \.description)
      InputField("partialDescription", at: \.partialDescription)
      InputField("featuredDescription", at: \.featuredDescription)
    }
  }

  static var update: AppInput<Document.GraphQL.Request.UpdateDocumentInput> {
    Input(Document.GraphQL.Request.UpdateDocumentInput.self) {
      InputField("id", at: \.id)
      InputField("friendId", at: \.friendId)
      InputField("altLanguageId", at: \.altLanguageId)
      InputField("title", at: \.title)
      InputField("slug", at: \.slug)
      InputField("filename", at: \.filename)
      InputField("published", at: \.published)
      InputField("originalTitle", at: \.originalTitle)
      InputField("incomplete", at: \.incomplete)
      InputField("description", at: \.description)
      InputField("partialDescription", at: \.partialDescription)
      InputField("featuredDescription", at: \.featuredDescription)
    }
  }
}

extension Document.GraphQL.Schema.Queries {
  static var get: AppField<Document, IdentifyEntityArgs> {
    Field("getDocument", at: Resolver.getDocument) {
      Argument("id", at: \.id)
    }
  }

  static var list: AppField<[Document], NoArgs> {
    Field("getDocuments", at: Resolver.getDocuments)
  }
}

extension Document.GraphQL.Schema.Mutations {
  static var create: AppField<Document, Document.GraphQL.Request.CreateDocumentArgs> {
    Field("createDocument", at: Resolver.createDocument) {
      Argument("input", at: \.input)
    }
  }

  static var createMany: AppField<[Document], Document.GraphQL.Request.CreateDocumentsArgs> {
    Field("createDocument", at: Resolver.createDocuments) {
      Argument("input", at: \.input)
    }
  }

  static var update: AppField<Document, Document.GraphQL.Request.UpdateDocumentArgs> {
    Field("createDocument", at: Resolver.updateDocument) {
      Argument("input", at: \.input)
    }
  }

  static var updateMany: AppField<[Document], Document.GraphQL.Request.UpdateDocumentsArgs> {
    Field("createDocument", at: Resolver.updateDocuments) {
      Argument("input", at: \.input)
    }
  }

  static var delete: AppField<Document, IdentifyEntityArgs> {
    Field("deleteDocument", at: Resolver.deleteDocument) {
      Argument("id", at: \.id)
    }
  }
}

extension Document {
  convenience init(_ input: Document.GraphQL.Request.CreateDocumentInput) {
    self.init(
      id: .init(rawValue: input.id ?? UUID()),
      friendId: .init(rawValue: input.friendId),
      altLanguageId: input.altLanguageId != nil ? .init(rawValue: input.altLanguageId!) : nil,
      title: input.title,
      slug: input.slug,
      filename: input.filename,
      published: input.published,
      originalTitle: input.originalTitle,
      incomplete: input.incomplete,
      description: input.description,
      partialDescription: input.partialDescription,
      featuredDescription: input.featuredDescription
    )
  }

  func update(_ input: Document.GraphQL.Request.UpdateDocumentInput) {
    self.friendId = .init(rawValue: input.friendId)
    self.altLanguageId = input.altLanguageId != nil ? .init(rawValue: input.altLanguageId!) : nil
    self.title = input.title
    self.slug = input.slug
    self.filename = input.filename
    self.published = input.published
    self.originalTitle = input.originalTitle
    self.incomplete = input.incomplete
    self.description = input.description
    self.partialDescription = input.partialDescription
    self.featuredDescription = input.featuredDescription
    self.updatedAt = Current.date()
  }
}
