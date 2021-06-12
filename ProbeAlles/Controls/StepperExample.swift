//
//  StepperExample.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 11.06.21.
//

import SwiftUI

struct StepperExample: View {
    
    @State private var brightness: Double = 1.0
    
    var body: some View {
        VStack {
            
            Text("Stepper")
                .font(.title)
            
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color(hue: 0.396, saturation: 1, brightness: brightness))
                .frame(width: 100, height: 60)
                
            Stepper ("brightness: \(String(format: "%.1f", brightness))") {
                brightness += 0.2
            } onDecrement: {
                brightness -= 0.2
            }

        }
        .padding()
    }
}

struct StepperExample_Previews: PreviewProvider {
    static var previews: some View {
        StepperExample()
    }
}
