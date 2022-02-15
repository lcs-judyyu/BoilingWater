//
//  ContentView.swift
//  BoilingWater
//
//  Created by Judy Yu on 2022-02-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Slider(value: .constant(50.0),
                   in: 80.0...200.0,
                   step: 0.5,
                   label: {
                        Text("Opacity")
            },
                   minimumValueLabel: {
                        Text("80")
            },
                   maximumValueLabel: {
                        Text("200")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
