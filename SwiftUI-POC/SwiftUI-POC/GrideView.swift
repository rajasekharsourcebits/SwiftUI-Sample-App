//
//  GrideView.swift
//  SwiftUI-POC
//
//  Created by Rajshekar on 05/06/20.
//  Copyright © 2020 Sourcebits. All rights reserved.
//

import SwiftUI

struct GrideView: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        GridStack(rows: 4, columns: 4) { row, col in
//            Image(systemName: "\(row * 4 + col).circle")
            // Image(systemName: "image1")
            VStack (spacing: 0){
           // GeometryReader { geo in
            Image("image1").resizable()
                .frame(
                   width:UIScreen.main.bounds.width/4,
                    height:100
                )
               // }
            Text("R\(row) C\(col)")
            }
        }
    }
}

struct GrideView_Previews: PreviewProvider {
    static var previews: some View {
        GrideView()
    }
}

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content

    var body: some View {
        ScrollView {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< self.columns, id: \.self) { column in
                        self.content(row, column)
                    }
                }//hstack
            }
        }//vstack
        }//scroll
    }

    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}
