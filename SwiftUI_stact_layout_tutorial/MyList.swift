//
//  MyList.swift
//  SwiftUI_stact_layout_tutorial
//
//  Created by hogy on 2021/05/21.
//

import SwiftUI

struct MyList: View {
    

    init() {
        
        // List 라인 없애기(근데 안없어지는데 이유를 모르겠음
        if #available(iOS 14.0, *){
            
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
        
        UITableView.appearance().separatorStyle = .none
        // List 라인 없애기(근데 안없어지는데 이유를 모르겠음 (끝)
        
    }
    
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
            
            Section(
                header: Text("오늘 할 일")
                    .font(.headline)
                    .foregroundColor(.black)
                ,footer: Text("footer")
            ){
                ForEach(1...3, id: \.self){ itemIndex in
                    MyCard(icon: "sun.min", title: "일어나기 \(itemIndex)", start: "9 AM", end: "10 AM", bgColor: Color.green)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(
                header: Text("내일 할 일")
                    .font(.headline)
                    .foregroundColor(.black)
                ,footer: Text("footer")
            ){
                ForEach(1...3, id: \.self){ itemIndex in
                    MyCard(icon: "sun.min", title: "일어나기", start: "9 AM", end: "10 AM", bgColor: Color.blue)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(
                header: Text("Remind")
                    .font(.headline)
                    .foregroundColor(.black)
                ,footer: Text("footer")
            ){
                ForEach(1...3, id: \.self){ itemIndex in
                    MyCard(icon: "sun.min", title: "일어나기", start: "9 AM", end: "10 AM", bgColor: Color.orange)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            .listRowBackground(Color.yellow)
            
        } // List
        .listStyle(GroupedListStyle())
        .navigationBarTitle("내 목록")
        
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
