//
//  ContentView.swift
//  MightyMe
//
//  Created by GA006973 on 12/19/20.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                Color(.black).ignoresSafeArea()
                VStack{
                    Spacer()
                    ClearButton(count: $count)
                    Spacer()
                    Text(String(count)).font(.system(size: geometry.size.height/4)).foregroundColor(.white)
                    Spacer()
                    CountButton(count: $count)
                    Spacer()
                }
            }.frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CountButton: View {
    @Binding var count: Int
        
    var body: some View {
        Button(action: countItem){
            HStack{
                Image(systemName: "plus").foregroundColor(.blue)
                Text("count").foregroundColor(.blue)
            }
        }.padding().padding(.horizontal,50)
        .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color.blue, lineWidth: 3)
        )
    }
    
    func countItem() {
        count += 1
    }
}

struct ClearButton: View {
    @Binding var count: Int
    var body: some View {
        Button(action: clearItem){
            HStack{
                Image(systemName: "xmark").foregroundColor(.red)
                Text("clear").foregroundColor(.red)
            }
        }.padding().padding(.horizontal,50)
        .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color.red, lineWidth: 3)
        )
    }
    
    func clearItem() {
        count = 0
    }
}
