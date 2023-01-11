//
//  Emoji.swift
//  
//
//  Created by Kévin Sibué on 11/01/2023.
//

import Foundation

public struct Emoji: Hashable {

    public let value: String
    public let name: String

    public init(value: String, name: String) {
        self.value = value
        self.name = name
    }

}
