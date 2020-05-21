//
//  ContentView.swift
//  SwiftUI-POC
//
//  Created by Rajshekar on 19/05/20.
//  Copyright © 2020 Sourcebits. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
        List(0 ..< 10) { item in
                    Image("rajasekhar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle()
                    .stroke(Color.orange, lineWidth: 4))
                    .shadow(radius: 10)
        VStack (alignment: .leading){
                     Text("Rajasekhar")
                     Text("iOS developer")
                      .font(.subheadline)
                      .foregroundColor(.blue)
                   }
               }
        .navigationBarTitle(Text("Rajasekhar"))
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
