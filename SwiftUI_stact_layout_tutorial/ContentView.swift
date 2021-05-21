//
//  ContentView.swift
//  SwiftUI_stact_layout_tutorial
//
//  Created by hogy on 2021/05/21.
//

import SwiftUI

struct ContentView: View {
    
    // ## 네이게이션바 타이틀 공간을 없애기 위한 ##
    // isNavigationBarHidden 변수 선언
    @State var isNavigationBarHidden : Bool = false
    
    var body: some View {
        
        NavigationView{
            ZStack(alignment: .bottomTrailing) {
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    HStack{
                        
                        NavigationLink(destination: MyList()){
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        
                        Spacer()
                        Image(systemName: "person.crop.circle.fill")
                            .font(.largeTitle)
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                    .padding(.horizontal, 10)
                    
                    Text("김희수 To-do List")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding(.horizontal, 10)
                        .padding(.bottom, 10)
                    
                    ScrollView() {
                    
                        VStack() {
                            MyProjectCard()
                            MyCard(icon: "sun.min", title: "일어나기", start: "9 AM", end: "10 AM", bgColor: Color.green)
                            MyCard(icon: "book.fill", title: "챍읽기", start: "1 PM", end: "3 PM", bgColor: Color.blue)
                            MyCard(icon: "pills.fill", title: "영양제", start: "1 PM", end: "3 PM", bgColor: Color.orange)
                        }.padding(10)
                        
                    }
                }
                
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    )
                    .padding(.trailing, 10)
                    .shadow(radius: 20)
                
            } // ZStack
            
            .navigationTitle("메인")
            .navigationBarHidde(self.isNavigationBarHidden)
            
        } // NavigationView
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
