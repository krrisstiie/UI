//
//  ContentView.swift
//  UI
//
//  Created by Scholar on 6/21/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State var textTitle = "What is your name?"
    
    var body: some View {
       
        VStack {
            Text(textTitle)
                .font(.title)
                
            TextField("Type your name here", text: $name)
                .padding()
                .multilineTextAlignment(.center)
                .border(Color.black, width: 2)
            
            Button("Enter") {
                textTitle = "Welcome, \(name) 🩷"
                
            } // close button
            .font(.body)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        } // close VStack
        
        .padding()
        
    } // close body
    
} // close struct

#Preview {
    ContentView()
}
