//
//  NewVc.swift
//  AppleTv
//
//  Created by Hemanth chowdary on 30/04/23.
//

import SwiftUI

struct NewVc: View {
    @FocusState private var isFocused: String?
    var body: some View {
        HStack {
            Button {
                print("search")
            } label: {
                Image("new")
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.mint)
        .focused($isFocused, equals: "test")
        .onAppear {
            isFocused = "test"
        }
    }
}
  
