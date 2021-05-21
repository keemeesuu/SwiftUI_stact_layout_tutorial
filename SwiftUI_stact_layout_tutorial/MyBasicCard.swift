//
//  MyBasicCard.swift
//  SwiftUI_stact_layout_tutorial
//
//  Created by hogy on 2021/05/21.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        
        HStack(spacing: 20) {
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0) {
//                Rectangle().frame(height: 0)
                Divider().opacity(0)
                Text("하하하")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                
                Spacer().frame(height: 8)
                
                Text("하하하")
                    .foregroundColor(Color.white)
            }
            
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
        
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
