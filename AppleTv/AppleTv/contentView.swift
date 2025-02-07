//
//  contentView.swift
//  AppleTv
//
//  Created by Hemanth chowdary on 29/05/23.
//

import SwiftUI

struct contentView: View {

    @State private var option: LeftTabBarOption = .SearchVideoVc
    @State private var tabselection = 1
    @State private var selections: LeftTabBarOption?
    var body: some View {
        NavigationStack(root: {
            VStack(alignment: .leading) {
                HStack(spacing: 0) {
                    LeftTabBar(option: $option, selections: $selections)
                    getTabView()
//                    Spacer()
                }
                
            }
        })
    }
    @ViewBuilder
    private func getTabView() -> some View {
        switch option {
        case .SearchVideoVc:
            SearchVideoVc()
        case .HomeVc:
            HomeVc()
        case .MoviesVc:
            MoviesVc()
        case .TvVc:
            TvVc()
        case .NewVc:
            NewVc()
        case .FavVc:
            FavVc()
        case .MoreVc:
            MoreVc()
        case .StarVc:
            StarVc()
        }
    }
}




