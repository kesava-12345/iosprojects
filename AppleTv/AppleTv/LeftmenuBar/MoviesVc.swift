//
//  Moviesvc.swift
//  AppleTv
//
//  Created by Hemanth chowdary on 28/04/23.
//

import SwiftUI

struct MoviesVc: View {
    @FocusState private var isFocused: String?
        
        var body: some View {
            HStack {
                Button {
                    print("search")
                } label: {
                    Image("movies")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.yellow)
            .focused($isFocused, equals: "test")
            .onAppear {
                isFocused = "test"
            }
        }
}
