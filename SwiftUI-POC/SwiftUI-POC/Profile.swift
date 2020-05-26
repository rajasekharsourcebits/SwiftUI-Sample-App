//
//  Profile.swift
//  SwiftUI-POC
//
//  Created by Rajshekar on 21/05/20.
//  Copyright © 2020 Sourcebits. All rights reserved.
//

import Foundation
import SwiftUI
struct Profile: Identifiable {
    var id = UUID()
    var name: String
    var headline: String
    var bio: String
    var image: String
    var imageName: String { return image }
}

#if DEBUG
let testData = [
    Profile(name: "Rajasekhar", headline: "iOS developer at SourceBits", bio: "rajasekhar is an app developer. He lives in Bangalore, Proficient in iOS and Android, it's his dream to develop an AI product.", image:"rajasekhar"),
    Profile(name: "Vedha", headline: "Lead at SourceBits", bio: "Lead at SourceBits. Author of multiple iOS prgramming books including Beginning iOS 12 Programming with Swift and Intermediate iOS 12 Programming with Swift. iOS Developer and Blogger.", image:"image1"),
    Profile(name: "Ramakrishna", headline: "Advanced Software Developer", bio: "Gabriel has been a software developer for about two decades. He has long experience in developing software solutions for various platforms in many programming languages.", image:"image2"),
    Profile(name: "Sanjeeva Rao", headline: "Author and Software Developer", bio: "Avid and well-published author and software developer now specializing in iOS mobile app development in Obj-C and Swift. Andrew has published several apps in the Apple App Store and 30 years of experience.", image:"image3"),
    Profile(name: "Naga Rani", headline: "Content marketing professional", bio: "Athena is a co-founder of Business 3.0, a publication dedicated to sharing founders journeys in product and business development in East Asia. Social justice advocate.", image:"image4"),
    Profile(name: "Srikanth", headline: "Lifelong Learner", bio: "Mobile, Web, a bit of backend Software Developer and LifeLong Learner. Current building super app.", image:"image5"),
    Profile(name: "Phani", headline: "Passionate iOS Developer", bio: "Lawrence is a passionate iOS Developer with over 3 years of commercial experience and had worked with clirents from US, Europe, and Asia. He's a tech addict and Swift enthusiast.", image:"image1"),
    Profile(name: "Hema", headline: "Self-taught iOS Mobile Developer", bio: "Kelvin is a self taught iOS Mobile Developer who is currently active writing Profileials on his site. He is from Malaysia and speaks about 4 different languages.", image:"image2"),
]
#endif
