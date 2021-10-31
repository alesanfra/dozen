//
//  ContentView.swift
//  Dozen WatchKit Extension
//
//  Created by Alessio on 17/10/21.
//

import SwiftUI

struct ContentView: View {
    @State var currentDate12 = "Dozen"
    @State var currentDate10 = "The best clock"
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let calendar = Calendar.current
    
    var body: some View {
        VStack {
            Text("\(currentDate12)")
                .font(.system(size: 36, weight: .bold))
                .onReceive(timer) { input in
                    let hour = calendar.component(.hour, from: input)
                    let minute = calendar.component(.minute, from: input)
                    let second = calendar.component(.second, from: input)
                    
                    currentDate12 = "\(hour/12)\(String(format: "%01X", hour%12)):\(minute/12)\(String(format: "%01X", minute%12)):\(second/12)\(String(format: "%01X", second%12))"
                }
            Text("\(currentDate10)")
                .onReceive(timer) { input in
                    let hour = calendar.component(.hour, from: input)
                    let minute = calendar.component(.minute, from: input)
                    let second = calendar.component(.second, from: input)
                    
                    currentDate10 = "\(String(format: "%02D", hour)):\(String(format: "%02D", minute)):\(String(format: "%02D", second))"
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
