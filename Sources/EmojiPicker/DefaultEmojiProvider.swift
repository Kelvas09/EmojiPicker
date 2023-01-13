//
//  DefaultEmojiProvider.swift
//  
//
//  Created by Kévin Sibué on 11/01/2023.
//

import Foundation
import Smile

public final class DefaultEmojiProvider: EmojiProvider {

    public init() { }

    public func getAll() -> [Emoji] {
        return Smile.list().map({ Emoji(value: $0, name: name(emoji: $0).first ?? "") })
    }

}
