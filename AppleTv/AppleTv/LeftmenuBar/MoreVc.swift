//
//  MoreVc.swift
//  AppleTv
//
//  Created by Hemanth chowdary on 30/04/23.
//

import SwiftUI

struct MoreVc: View {
    @FocusState private var isFocused: String?
    var body: some View {
        HStack {
            Button {
                print("search")
            } label: {
                Image("more")
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue)
        .focused($isFocused, equals: "test")
        .onAppear {
            isFocused = "test"
        }
    }
}
