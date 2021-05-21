//
//  MyCard.swift
//  SwiftUI_stact_layout_tutorial
//
//  Created by hogy on 2021/05/21.
//

import SwiftUI

struct MyCard: View {
    
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    var body: some View {
        
        
        HStack(spacing: 20) {
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0) {
//                Rectangle().frame(height: 0)
                Divider().opacity(0)
                Text(title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                
                Spacer().frame(height: 8)
                
                Text("\(start) - \(end)")
                    .foregroundColor(Color.white)
            }
            
        }
        .padding(20)
        .background(bgColor)
        .cornerRadius(20)
        
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "book.fill", title: "챍읽기", start: "1 PM", end: "3 PM", bgColor: Color.green)
    }
}
