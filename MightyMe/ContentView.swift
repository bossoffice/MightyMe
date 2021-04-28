//
//  ContentView.swift
//  MightyMe
//
//  Created by GA006973 on 12/19/20.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    
    func randomColor() -> Color {
        var colors : [Double] = []
        for i in 1...3 {
            colors.append(Double(Int.random(in: 1...255)))
        }
        let color: Color = Color.rgb(r: colors[0], g: colors[1], b: colors[2])
        return color
    }
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
                randomColor().ignoresSafeArea()
                VStack{
                    ZStack(alignment: Alignment(horizontal: .center, vertical: .center)){
                        Circle()
                            .strokeBorder(randomColor(),lineWidth: 4)
                            .foregroundColor(Color(.white))
                            .frame(width: 250, height: 250)
                        Text(String(self.count))
                            .foregroundColor(randomColor()).font(.system(size: 50))
                    }.frame(width: .infinity, height: .infinity,alignment: .top)
                    Spacer()
                    Button(action: {self.count += 1}, label: {
                        Text("Tab me !")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(randomColor())
                            .background(        LinearGradient(gradient: Gradient(colors: [randomColor(), randomColor()]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(40).padding()
                    })
                    Spacer()
                    
                }.padding()
//                .frame(width: geometry.frame(in: .global).width)
            }
        }
    }
}

extension Color {
    static func rgb(r: Double = 0, g: Double = 0, b: Double = 0) -> Color {
        return Color(red: r/255, green: g/255, blue: b/255)
    }
}

func returnSomeView() -> some View {
    return Text("hello Guys")
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
