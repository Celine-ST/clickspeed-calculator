//
//  ContentView.swift
//  clickspeed calculator
//
//  Created by Celine Quek on 8/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isGoingOn = 0
    var body: some View {
        VStack {
            if isGoingOn == 0 {
                Text("**HOW FAST CAN YOU CLICK??**")
                .font(.largeTitle)
                Button() {
                    isGoingOn = 1
                } label: {
                    Text("**Click to start**")
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(30)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
