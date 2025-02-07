//
//  Homevc.swift
//  AppleTv
//
//  Created by Hemanth chowdary on 28/04/23.
//

import SwiftUI

struct HomeVc: View {
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
        .background(Color.green)
        .focused($isFocused, equals: "test")
        .onAppear {
            isFocused = "test"
        }
    }
}  
