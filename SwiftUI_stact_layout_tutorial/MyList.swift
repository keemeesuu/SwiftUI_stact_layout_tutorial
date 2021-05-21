//
//  MyList.swift
//  SwiftUI_stact_layout_tutorial
//
//  Created by hogy on 2021/05/21.
//

import SwiftUI

struct MyList: View {
    var body: some View {
        
//        List {
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//        }
        
//        List {
//            ForEach(1...10, id: \.self){
//                Text("마이리스트 \($0)")
//            }
//        }
        
//        List {
//            ForEach(1...10, id: \.self){ itemIndex in
//                Text("마이리스트 \(itemIndex)")
//            }
//        }
        
        List {
            
            Section(header: Text("오늘 할 일")){
                ForEach(1...3, id: \.self){ itemIndex in
                    MyCard(icon: "sun.min", title: "일어나기", start: "9 AM", end: "10 AM", bgColor: Color.green)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(header: Text("내일 할 일")){
                ForEach(1...3, id: \.self){ itemIndex in
                    MyCard(icon: "sun.min", title: "일어나기", start: "9 AM", end: "10 AM", bgColor: Color.blue)
                }
            }
            
            Section(header: Text("Remind")){
                ForEach(1...3, id: \.self){ itemIndex in
                    MyCard(icon: "sun.min", title: "일어나기", start: "9 AM", end: "10 AM", bgColor: Color.yellow)
                }
            }
            
        } // List
//        .listStyle(GroupedListStyle())
        
        
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
