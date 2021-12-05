//
//  ContentView.swift
//  SwiftUIListing
//
//  Created by Desktop-simranjeet on 18/09/21.
//

import SwiftUI

struct ListModel: Identifiable {
    let id: Int
    let imageName: String
    let title: String
    let subtitle: String
    
    static let list:[ListModel] = [
        .init(id: 0, imageName: "shiva", title: "Shiva", subtitle: "The Adiyogi"),
        .init(id: 1, imageName: "shiva", title: "Shiva", subtitle: "The Adiyogi"),
        .init(id: 2, imageName: "shiva", title: "Shiva", subtitle: "The Adiyogi"),
        .init(id: 3, imageName: "shiva", title: "Shiva", subtitle: "The Adiyogi"),
    ]
}

struct ContentView: View {
    
    let list = ListModel.list
    
    var body: some View {
        NavigationView {
        List {
            ForEach(list) { list in
                Listing(list: list)
            }
        }.navigationBarTitle(Text("Listing in SwiftUI"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Listing: View {
    
    let list: ListModel
    
    var body: some View {
        VStack(alignment: .leading) {
        HStack {
            Image(list.imageName)
                .resizable()
                . frame(width: 80, height: 80, alignment: .leading)
            VStack(alignment: .leading) {
                Text(list.title)
                    .font(.headline)
                    .bold()
                Text(list.subtitle)
            }.padding(8)
        }
        }

    }
}
