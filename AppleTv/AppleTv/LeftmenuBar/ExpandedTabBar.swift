//
//  ExpandedTabBar.swift
//  AppleTv
//
//  Created by Hemanth chowdary on 10/05/23.
//

import SwiftUI

struct ExpandedTabBar: View {
    var body: some View {
        VStack {
            HStack {
                Text("search")
            }.frame(maxWidth: 288, maxHeight: .infinity)
                .background(Color.red)
                .position(x: 20,y: 480)
        }
    }
}

struct ExpandedTabBar_Previews: PreviewProvider {
    static var previews: some View {
        ExpandedTabBar()
    }
}
