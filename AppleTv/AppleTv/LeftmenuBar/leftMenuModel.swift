//
//  leftMenuModel.swift
//  AppleTv
//
//  Created by Hemanth chowdary on 08/05/23.
//

import SwiftUI

struct MenuItem: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var subMenuItems: [MenuItem]?
}

//struct leftMenuModel: View {
//    var body: some View {
//        let sampleMenuItems = [ MenuItem(name: "Espresso Machines", image: "linea-mini" )]
//        ForEach(0..<sampleMenuItems.count, id: \.self) { item in
////             ContactRow(item: self.items[i])
////        List(sampleMenuItems, children: \.subMenuItems) { item in
//            HStack {
//                Image(item.image)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 50, height: 50)
//
//                Text(item.name)
//                    .font(.system(.title3, design: .rounded))
//                    .bold()
//            }
//        }
//    }
//}
//
//struct leftMenuModel_Previews: PreviewProvider {
//    static var previews: some View {
//        leftMenuModel()
//    }
//}
