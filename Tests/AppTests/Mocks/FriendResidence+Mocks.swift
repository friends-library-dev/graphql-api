// auto-generated, do not edit
import GraphQL

@testable import App

extension FriendResidence {
  static var mock: FriendResidence {
    FriendResidence(friendId: .init(), city: "@mock city", region: "@mock region")
  }

  static var empty: FriendResidence {
    FriendResidence(friendId: .init(), city: "", region: "")
  }

  static var random: FriendResidence {
    FriendResidence(friendId: .init(), city: "@random".random, region: "@random".random)
  }

  func gqlMap(omitting: Set<String> = []) -> GraphQL.Map {
    var map: GraphQL.Map = .dictionary([
      "id": .string(id.rawValue.uuidString),
      "friendId": .string(friendId.rawValue.uuidString),
      "city": .string(city),
      "region": .string(region),
      "duration": duration != nil ? .string(duration!.jsonString!) : .null,
    ])
    omitting.forEach { try? map.remove($0) }
    return map
  }
}
