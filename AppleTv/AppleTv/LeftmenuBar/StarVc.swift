//
//  StarVc.swift
//  AppleTv
//
//  Created by Hemanth chowdary on 30/04/23.
//

import SwiftUI

struct StarVc: View {
    @FocusState private var isFocused: String?
    var body: some View {
        HStack {
            Button {
                print("search")
            } label: {
                Image("option")
                
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
