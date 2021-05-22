//
//  MyProfileView.swift
//  SwiftUI_stact_layout_tutorial
//
//  Created by hogy on 2021/05/22.
//

import SwiftUI

struct MyProfileView: View {
    
    @Binding var isNavigationBarHidden: Bool

    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        
        _isNavigationBarHidden = isNavigationBarHidden
        
    }
    
    var body: some View {
        
//      NavigationView{ // 네비로 넘어오는순간 이미 감싸져서 안넣는다.
        
        ScrollView{
            VStack{
                
                MyCircleImageView(imageString: "sabito")
                .padding(.vertical, 20)
            
                Text("사비토")
                    .font(.system(size: 30))
                    .fontWeight(.black)
                
                Spacer().frame(height: 20)
                
                Text("구독 좋아요 부탁드립니다!")
                    .font(.system(size: 25))
                    .fontWeight(.black)
                
                HStack{
                    
                        Text("구독하기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                    
                        Text("오픈카톡방")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(20)
                    
                } // Hstack
                .padding(20)
                Spacer()
                
            }// Vstack
        } // ScrollView
        .navigationBarTitle("내 프로필")
        .navigationBarItems(trailing:
            NavigationLink(destination:
                Text("설정화면 입니다.")
                    .font(.largeTitle)
                    .fontWeight(.black)
            ){
                Image(systemName: "gear")
                    .font(.largeTitle)
                    .foregroundColor(.black)
            }
        )
        .onAppear(){
            self.isNavigationBarHidden = false
        }

//      } //NavigationView
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
