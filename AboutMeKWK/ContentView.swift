//
//  ContentView.swift
//  AboutMeKWK
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var presentAlert = false
    var body: some View {
        ZStack {
            Color(.systemGray3)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 20.0) {
                Text("Aishwarya Nambi")
                    .font(.title)
                Image("books")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                Button("Learn more!") {
                    presentAlert = true
                }.font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray)
                
            }
        }
        .padding()
        .alert("I love to read books, especially fantasy. A few of my favorite series are Wings of Fire, Harry Potter, and so far, I am enjoying Percy Jackson! My favorite animals are great horned owls.", isPresented: $presentAlert, actions: {})
        .background(Rectangle())
        .foregroundColor(Color.white)
        .cornerRadius(15)
        .shadow(radius:15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
