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
    
    var body: some View {
        VStack(spacing: 20) {
            //title
            Text("Boiling Water")
                .font(.title)
            
            //input
            Text("Temperature at which water begins to boil (∘C):")
                .bold()
            
            Slider(value: $temperature,
                   in: 80.0...200.0,
                   step: 0.5,
                   label: {
                Text("Temperature at which water begins to boil (∘C):")
            },
                   minimumValueLabel: {
                Text("80")
            },
                   maximumValueLabel: {
                Text("200")
            })
            //show slider value
            Text("\(String(format:"%.0f", temperature))")
                .font(.title2)
                .bold()
            
            //output
            Text("The atmospheric pressure is" + "\(atmosphericPressure)" + "kPa, " + "at sea level")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
