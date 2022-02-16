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
                    .font(Font.custom("Apple Chancery", size: 30))
                    .bold()
                
                //input
                Text("Temperature at which water begins to boil (°C):")
                    .bold()
                
                Slider(value: $temperature,
                       in: 80.0...200.0,
                       step: 1.0,
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
                Text("The atmospheric pressure is " + "\(atmosphericPressure)" + " kPa, ")
                    .font(.title2)
                + Text("\(seaLevel)")
                    .font(.title2)
                    .bold()
                
                //some animation
                
                ZStack {
                    //ocean
                    LottieView(animationNamed: "79611-water-animation")
                        .opacity(atmosphericPressure > 100  ? 1.0 : 0.0)
                        .padding()
                    
                    //sea level
                    LottieView(animationNamed: "23936-lighthouse")
                        .opacity(atmosphericPressure == 100 ? 1.0 : 0.0)
                        .padding()
                    
                    //sky
                    LottieView(animationNamed: "65837-clouds-in-the-sky")
                        .opacity(atmosphericPressure < 100 ? 1.0 : 0.0)
                        .padding()
                }
                
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
