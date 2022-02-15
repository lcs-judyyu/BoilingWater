//
//  ContentView.swift
//  BoilingWater
//
//  Created by Judy Yu on 2022-02-15.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Properties
    @State var temperature: Double = 100.0
    
    //MARK: Computed Properties
    var atmosphericPressure: Double {
        return temperature * 5 - 400
    }
    
    //sea level
    var seaLevel: String {
        if atmosphericPressure > 100 {
            return "below sea level 🌊"
        } else if atmosphericPressure < 100 {
            return "above sea level 🌄"
        } else {
            return "at sea level 🏞"
        }
    }
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                //title
                Text("Boiling Water")
                    .font(.title)
                
                //input
                Text("Temperature at which water begins to boil (°C):")
                    .bold()
                
                Slider(value: $temperature,
                       in: 80.0...200.0,
                       step: 0.5,
                       label: {
                    Text("Temperature at which water begins to boil (°C):")
                },
                       minimumValueLabel: {
                    Text("80")
                },
                       maximumValueLabel: {
                    Text("200")
                })
                //show slider value
                Text("\(String(format:"%.1f", temperature))")
                    .font(.title2)
                    .bold()
                
                //output
                Text("The atmospheric pressure is " + "\(atmosphericPressure)" + " kPa, " + "\(seaLevel)")
                    .font(.title2)
                
                //some animation
                //sea
                
                //land
                
                //air
                
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
