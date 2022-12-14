//
//  ContentView.swift
//  study_swift
//
//  Created by bong on 2022/11/24.
//

import SwiftUI

struct ContentView: View {
    @State
    private var isTrue: Bool = false;
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    increaseView()
                        //
                        .padding(isTrue ? 50 : 0)//
                        .background(isTrue ? Color(.blue) : Color(.white))
                    //
                        .foregroundColor(isTrue ? .red : .black)
                    increaseView()
                    increaseView()
                } //VStack
                .onTapGesture{
                    print("탭 클릭");
                    withAnimation{
                        self.isTrue.toggle()
                    }}
                //네비게이션 버튼(링크)
                NavigationLink(destination: MyTextView()) {
                    Text("네비게이션")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }.padding(.top, 50)
            } //VStack
            
            
            
        }//NavigationView
        
    }
}

struct increaseView: View {
    var body: some View {
        HStack{
            Text("1!").fontWeight(.bold).font(.system(size:50))
            Text("2!").fontWeight(.bold).font(.system(size:60))
            Text("3!").fontWeight(.bold).font(.system(size:70))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
