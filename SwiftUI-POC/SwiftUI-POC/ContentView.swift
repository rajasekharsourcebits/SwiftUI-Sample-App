//
//  ContentView.swift
//  SwiftUI-POC
//
//  Created by Rajshekar on 19/05/20.
//  Copyright © 2020 Sourcebits. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var Profiles: [Profile] = testData
    var body: some View {
        NavigationView {
            List(Profiles) { profile in
                ProfileCell(profile: profile)
            }.navigationBarTitle(Text("Profiles"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ProfileCell : View {
    let profile: Profile
    var body: some View {
        return NavigationLink(destination: ProfileDetail(name: profile.name, headline: profile.headline, bio: profile.bio, imageName:profile.imageName)) {
            Image(profile.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 50.0,height:50.0)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.orange, lineWidth: 1)
                )
                .shadow(radius: 5)
            VStack(alignment: .leading) {
                Text(profile.name).foregroundColor(.black).bold()
                Text(profile.headline).foregroundColor(.gray).font(.system(.body))
                   
            }
        }
    }
}
