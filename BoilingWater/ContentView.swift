//
//  ContentView.swift
//  BoilingWater
//
//  Created by Judy Yu on 2022-02-15.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Properties
    
    
    //MARK: Computed Properties
    
    
    var body: some View {
        VStack(spacing: 20) {
            Slider(value: .constant(100.0),
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
            Text("")
            
            //output
            Text("")
            
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
