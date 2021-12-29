// auto-generated, do not edit
@testable import App

extension Audio {
  static var mock: Audio {
    Audio(
      editionId: .init(),
      reader: "@mock reader",
      mp3ZipSizeHq: .init(rawValue: 42),
      mp3ZipSizeLq: .init(rawValue: 42),
      m4bSizeHq: .init(rawValue: 42),
      m4bSizeLq: .init(rawValue: 42)
    )
  }

  static var empty: Audio {
    Audio(
      editionId: .init(),
      reader: "",
      mp3ZipSizeHq: .init(rawValue: 0),
      mp3ZipSizeLq: .init(rawValue: 0),
      m4bSizeHq: .init(rawValue: 0),
      m4bSizeLq: .init(rawValue: 0)
    )
  }
}
