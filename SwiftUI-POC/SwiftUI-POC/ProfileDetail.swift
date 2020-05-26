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
     var imageName: String
       
       var body: some View {
           VStack {
               Image(imageName)
                   .resizable()
                   .scaledToFill()
                   .frame(width: 200.0,height:200.0)
                   .clipShape(Circle())
                   .overlay(
                       Circle().stroke(Color.orange, lineWidth: 4)
                   )
                   .shadow(radius: 10)
               Text(name)
                .font(.title).foregroundColor(.purple)
               Text(headline)
                .font(.subheadline).foregroundColor(.blue)
               Divider()
               Text(bio)
                .font(.system(size: 14.0))
                .foregroundColor(.orange)
                   .multilineTextAlignment(.center)
                   .lineLimit(50)
            Spacer()
           }.padding().navigationBarTitle(Text(name).foregroundColor(.yellow), displayMode: .large)
           
       }
}

struct ProfileDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetail(name: "--", headline: "--", bio: "--", imageName: "--")
    }
}
