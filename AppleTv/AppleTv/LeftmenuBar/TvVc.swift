//
//  TvVc.swift
//  AppleTv
//
//  Created by Hemanth chowdary on 30/04/23.
//

import SwiftUI

struct TvVc: View {
    @FocusState private var isFocused: String?
    var body: some View {
        HStack {
            Button {
                print("search")
            } label: {
                Image("tv")
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.orange)
        .focused($isFocused, equals: "test")
        .onAppear {
            isFocused = "test"
        }
    }
}
 
