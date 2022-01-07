import Foundation

enum Scope: String, Codable, CaseIterable, Equatable {
  case all
  case queryDownloads
  case mutateDownloads
  case queryOrders
  case mutateOrders
  case mutateArtifactProductionVersions
  case mutateFriends
  case queryFriends
  case mutateEditions
  case queryEditions
  case mutateDocuments
  case queryDocuments
  case mutateEditionImpressions
  case queryEditionImpressions
  case mutateAudios
  case queryAudios
  case queryArtifactProductionVersions
  case mutateIsbns
  case queryIsbns
  case mutateEditionChapters
  case queryEditionChapters
  case queryCoverProps
}

final class TokenScope: Codable {
  var id: Id
  var scope: Scope
  var tokenId: Token.Id
  var createdAt = Current.date()

  var token = Parent<Token>.notLoaded

  init(id: Id = .init(), tokenId: Token.Id, scope: Scope) {
    self.id = id
    self.scope = scope
    self.tokenId = tokenId
  }
}

// extensions

extension Scope: PostgresEnum {
  var dataType: String { TokenScope.M5.dbEnumName }
}
