//
//  ContentView.swift
//  Declarative FTW
//
//  Created by Kyle Lee on 6/4/19.
//  Copyright © 2019 Kilo Loco. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    var id: Int
    
    let name: String
}

struct ContentView : View {
    
    let users = [User(id: 0, name: "Kyle"),
                 User(id: 1, name: "Eman"),
                 User(id: 2, name: "Marc"),
                 User(id: 3, name: "Paul")]
    
    var body: some View {
        NavigationView {
//            ScrollView {
//                Text("kyle")
//                Text("eman")
//                Text("marc")
//                Text("paul")
//            }
            
            
            List(users) { user in
                Text(user.name)
            }
            
            
            .navigationBarTitle(Text("whatever you want"), displayMode: .large)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
