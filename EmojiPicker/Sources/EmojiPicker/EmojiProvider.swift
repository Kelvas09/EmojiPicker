//
//  EmojiProvider.swift
//  
//
//  Created by Kévin Sibué on 11/01/2023.
//

import Foundation
import Smile

public final class EmojiProvider {

    func getAll() -> [Emoji] {
        return Smile.list().map({ Emoji(value: $0, name: name(emoji: $0).first ?? "") })
        //return emoticons + transportAndMap + regionalCountryFlags + miscItems + miscSymbols + miscSymbolsAndPictographs + supplementalSymbolsAndPictographs + dingbats + variationSelectors + variousAsianCharacters + diacriticalMarksAndSymbols + variationSelector
    }

    var emoticons: [String] {
        return convert(0x1F601...0x1F64F)
    }

    var diacriticalMarksAndSymbols: [String] {
        return convert(8400...8447)
    }

    var miscItems: [String] {
        return convert(9100...9300)
    }

    var miscSymbols: [String] {
        return convert(0x2600...0x26FF)
    }

    var dingbats: [String] {
        return convert(0x2700...0x27BF)
    }

    var variationSelectors: [String] {
        return convert(0xFE00...0xFE0F)
    }

    var variousAsianCharacters: [String] {
        return convert(0x1F018...0x1F270)
    }

    var miscSymbolsAndPictographs: [String] {
        return convert(0x1F300...0x1F5FF)
    }

    var transportAndMap: [String] {
        return convert(0x1F680...0x1F6FF)
    }

    var regionalCountryFlags: [String] {
        return convert(0x1F1E6...0x1F1FF)
    }

    var supplementalSymbolsAndPictographs: [String] {
        return convert(0x1F900...0x1F9FF)
    }

    var variationSelector: [String] {
        return convert(65024...65039)
    }

    private func convert(_ range: ClosedRange<Int>) -> [String] {
        return range.map({ String(UnicodeScalar($0) ?? " ") }).filter({ !$0.isEmpty })
    }

}
