//
//  ContentView.swift
//  EmojiPickerSample
//
//  Created by Kévin Sibué on 11/01/2023.
//

import SwiftUI
import EmojiPicker

struct ContentView: View {

    @State
    var selectedEmoji: Emoji?

    @State
    var displayEmojiPicker: Bool = false

    @State
    var displayLimitedEmojiPicker: Bool = false

    var body: some View {
        VStack {
            VStack {
                Text(selectedEmoji?.value ?? "")
                    .font(.largeTitle)
                Text(selectedEmoji?.name ?? "")
                    .font(.title3)
            }
            .padding(8)
            Button {
                displayEmojiPicker = true
            } label: {
                Text("Select standard emoji")
            }
            .buttonStyle(.borderedProminent)
            Button {
                displayLimitedEmojiPicker = true
            } label: {
                Text("Select limited emoji (custom provider)")
            }
            .buttonStyle(.borderedProminent)
            .padding(.top, 8)
        }
        .padding()
        .sheet(isPresented: $displayEmojiPicker) {
            NavigationView {
                EmojiPickerView(selectedEmoji: $selectedEmoji, selectedColor: .orange)
                    .padding(.top, 32)
                    .navigationTitle("Emojis")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
        .sheet(isPresented: $displayLimitedEmojiPicker) {
            NavigationView {
                EmojiPickerView(selectedEmoji: $selectedEmoji, selectedColor: .orange, emojiProvider: LimitedEmojiProvider())
                    .padding(.top, 32)
                    .navigationTitle("Emojis")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
