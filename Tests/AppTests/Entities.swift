@testable import App

struct Entities {
  var friend: Friend
  var friendResidence: FriendResidence
  var friendResidenceDuration: FriendResidenceDuration
  var document: Document
  var edition: Edition
  var editionImpression: EditionImpression
  var isbn: Isbn
  var audio: Audio
  var audioPart: AudioPart

  static func create(beforePersist: (inout Entities) -> Void = { _ in }) async -> Entities {
    let friend: Friend = .random

    let friendResidence: FriendResidence = .random
    friendResidence.friendId = friend.id

    let friendResidenceDuration: FriendResidenceDuration = .random
    friendResidenceDuration.friendResidenceId = friendResidence.id

    let document: Document = .random
    document.altLanguageId = nil
    document.friendId = friend.id

    let edition: Edition = .random
    edition.documentId = document.id

    let editionImpression: EditionImpression = .random
    editionImpression.editionId = edition.id

    let isbn: Isbn = .random
    isbn.editionId = edition.id

    let audio: Audio = .random
    audio.editionId = edition.id

    let audioPart: AudioPart = .random
    audioPart.audioId = audio.id

    var entities = Entities(
      friend: friend,
      friendResidence: friendResidence,
      friendResidenceDuration: friendResidenceDuration,
      document: document,
      edition: edition,
      editionImpression: editionImpression,
      isbn: isbn,
      audio: audio,
      audioPart: audioPart
    )

    beforePersist(&entities)

    _ = try! await Current.db.createFriend(friend)
    _ = try! await Current.db.createFriendResidence(friendResidence)
    _ = try! await Current.db.createFriendResidenceDuration(friendResidenceDuration)
    _ = try! await Current.db.createDocument(document)
    _ = try! await Current.db.createEdition(edition)
    _ = try! await Current.db.createEditionImpression(editionImpression)
    _ = try! await Current.db.createIsbn(isbn)
    _ = try! await Current.db.createAudio(audio)
    _ = try! await Current.db.createAudioPart(audioPart)

    return entities
  }
}
