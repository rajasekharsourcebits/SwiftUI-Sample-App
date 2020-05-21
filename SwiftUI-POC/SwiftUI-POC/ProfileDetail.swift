//
//  ProfileDetail.swift
//  SwiftUI-POC
//
//  Created by Rajshekar on 21/05/20.
//  Copyright © 2020 Sourcebits. All rights reserved.
//

import SwiftUI

struct ProfileDetail: View {
     var name: String
       var headline: String
       var bio: String
       
       var body: some View {
           VStack {
               Image(name)
                   .clipShape(Circle())
                   .overlay(
                       Circle().stroke(Color.orange, lineWidth: 4)
                   )
                   .shadow(radius: 10)
               Text(name)
                   .font(.title)
               Text(headline)
                   .font(.subheadline)
               Divider()
               Text(bio)
                   .font(.headline)
                   .multilineTextAlignment(.center)
                   .lineLimit(50)
               }.padding().navigationBarTitle(Text(name), displayMode: .inline)
       }
}

struct ProfileDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetail(name: "--", headline: "--", bio: "--")
    }
}
