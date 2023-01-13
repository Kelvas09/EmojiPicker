//
//  LimitedEmojiProvider.swift
//  EmojiPickerSample
//
//  Created by Kévin Sibué on 13/01/2023.
//

import Foundation
import EmojiPicker

final class LimitedEmojiProvider: EmojiProvider {

    func getAll() -> [Emoji] {
        return [
            Emoji(value: "🚀", name: "rocket"),
            Emoji(value: "🇫🇷", name: "France"),
            Emoji(value: "🦄", name: "unicorn"),
            Emoji(value: "🍺", name: "beer"),
            Emoji(value: "💶", name: "euro")
        ]
    }

}
