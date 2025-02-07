//
//  FavVc.swift
//  AppleTv
//
//  Created by Hemanth chowdary on 30/04/23.
//

import SwiftUI

struct FavVc: View {
    @FocusState private var isFocused: String?
    var body: some View {
        HStack {
            Button {
                print("search")
            } label: {
                Image("fav")
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.purple)
        .focused($isFocused, equals: "test")
        .onAppear {
            isFocused = "test"
        }
    }
}
