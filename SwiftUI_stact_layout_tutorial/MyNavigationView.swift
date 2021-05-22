//
//  MyNavigationView.swift
//  SwiftUI_stact_layout_tutorial
//
//  Created by hogy on 2021/05/22.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        
        NavigationView{
            
            MyList()
//                .navigationTitle("안녕하세요!")
                .navigationBarTitle("안녕하세요!", displayMode: .large)
                .navigationBarItems(
                    leading: Button(action:{
                            print("호호")
                        }){
                            Text("버톤")
                        }
                    ,trailing: NavigationLink(destination:
                            Text("넘어온 화면")
                        ){
                            Image(systemName: "bookmark.fill")
                                .font(.largeTitle)
                        }
                    )
            
            
        }
        
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
