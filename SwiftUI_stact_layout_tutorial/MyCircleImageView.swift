//
//  MyCircleImageView.swift
//  SwiftUI_stact_layout_tutorial
//
//  Created by hogy on 2021/05/22.
//

import SwiftUI

struct MyCircleImageView: View {
    
    var imageString: String
    
    var body: some View {

        Image(imageString)
        .resizable()
            .scaledToFill()
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 0, y: 10)
            .overlay(
                Circle().strokeBorder(Color.yellow, lineWidth: 15)
            )
        
    }
}

struct MyCircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyCircleImageView(imageString: "sabito")
    }
}
