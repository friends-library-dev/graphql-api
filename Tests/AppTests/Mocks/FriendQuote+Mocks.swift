// auto-generated, do not edit
import GraphQL

@testable import App

extension FriendQuote {
  static var mock: FriendQuote {
    FriendQuote(friendId: .init(), source: "@mock source", order: 42)
  }

  static var empty: FriendQuote {
    FriendQuote(friendId: .init(), source: "", order: 0)
  }

  static var random: FriendQuote {
    FriendQuote(friendId: .init(), source: "@random".random, order: Int.random)
  }

  func gqlMap(omitting: Set<String> = []) -> GraphQL.Map {
    var map: GraphQL.Map = .dictionary([
      "id": .string(id.rawValue.uuidString),
      "friendId": .string(friendId.rawValue.uuidString),
      "source": .string(source),
      "order": .number(Number(order)),
      "context": context != nil ? .string(context!) : .null,
    ])
    omitting.forEach { try? map.remove($0) }
    return map
  }
}
