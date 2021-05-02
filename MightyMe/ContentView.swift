//
//  ContentView.swift
//  MightyMe
//
//  Created by GA006973 on 12/19/20.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAddUser = true
    //    @State private var someSheet = true
    
    var body: some View {
        VStack {
            Button("Show Modal"){
                showingAddUser = true
            }
            // your code here
        }.sheet(isPresented: $showingAddUser, content: {
            AddView(isPresented: $showingAddUser)
        })
    }
}

struct AddView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack{
            Color(.white)
            Button("Dismiss") {
                isPresented = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
