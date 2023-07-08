//
//  ContentView.swift
//  clickspeed calculator
//
//  Created by Celine Quek on 8/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isGoingOn = 0
    @State private var text = "HOW FAST CAN YOU CLICK???"
    var body: some View {
        VStack {
            Text("**\(text)**")
            .font(.largeTitle)
            if isGoingOn == 0 {
                Button() {
                    isGoingOn = 1
                    text = "3"
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        withAnimation {
                            text = "2"
                        }
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            text = "1"
                        }
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        withAnimation {
                            text = ""
                        }
                    }
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
