//
//  ContentView.swift
//  Button
//
//  Created by Scholar on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    @State private var bottomText = ""
    var body: some View {
        VStack{
            Text(textTitle)
                .font(.title2)
                .foregroundColor(Color(hue: 0.417, saturation: 0.404, brightness: 0.482))
            TextField("Type name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title2)
                .border(Color.gray, width:0.7)
                .padding()
            Text(bottomText)
                .font(.title2)
                .foregroundColor(Color(hue: 0.417, saturation: 0.278, brightness: 0.235))
            Button("Submit") {
                textTitle = "Welcome, \(name)!"
                bottomText = "I'm glad to see you here, \(name)."
            }
            
            .font(.title2)
            .buttonStyle(.borderedProminent)
            Image("clover")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: 130.0, height: 130.0)
            }
        .accentColor(Color(hue: 0.331, saturation: 0.255, brightness: 0.549))
    }
}

#Preview {
    ContentView()
}
