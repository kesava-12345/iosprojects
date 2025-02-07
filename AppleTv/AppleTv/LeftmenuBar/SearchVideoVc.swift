//
//  searchvideovc.swift
//  AppleTv
//
//  Created by Hemanth chowdary on 25/04/23.
//

import SwiftUI

struct SearchVideoVc: View {
    
    @FocusState private var isFocused: String?
    
    var body: some View {
        HStack {
            Button {
                print("search")
            } label: {
                Image("search")
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .focused($isFocused, equals: "test")
        .onAppear {
            isFocused = "test"
        }
    }
}
