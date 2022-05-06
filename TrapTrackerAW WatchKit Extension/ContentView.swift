//
//  ContentView.swift
//  TrapTrackerAW WatchKit Extension
//
//  Created by Doxie Davis on 5/5/22.
//
//

import Foundation
import SwiftUI

struct ContentView: View {
    
    @State var score: Int = 0
    @State var shots: Int = 0
    
    var body: some View {
        VStack {
            Button(action: {
                score += 1
                shots += 1
            }, label: {
                Text("Hit")
            })
            .font(.title)
            .background(Color(.green))
            .foregroundColor(.black)
            .clipShape(Capsule())
            HStack{
                Spacer()
                VStack {
                    Text("Score")
                    Text("\(score)")
                        .fontWeight(.bold)
                        .font(.title2)
                }
                Spacer()
                VStack {
                    Text("Shots")
                    Text("\(shots)")
                        .fontWeight(.bold)
                        .font(.title2)
                }
                Spacer()
            }
            .onLongPressGesture(minimumDuration: 2) {
                self.reset()
            }
            Button(action: {
                shots += 1
            }, label: {
                Text("Miss")
            })
            .font(.headline)
            .background(Color(.red))
            .foregroundColor(.white)
            .clipShape(Capsule())
        }
    }
    
    func reset() {
        score = 0
        shots = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        return ContentView()
    }
}

