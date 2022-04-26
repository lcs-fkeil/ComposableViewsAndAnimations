//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    
    // MARK: Stored Properties
    
    // Horizontal position
    @State var xOffset = -100.0
    
    // Rotation amount
    @State var rotationAmount = 0.0
    
    // Trigger to start the animation
    let timer = Timer.publish(every: 2.0, on: .main, in: .common).autoconnect()
    
    
    
    // MARK: Computed Properties
    
    var body: some View {
        ZStack {
            
            Circle()
                .frame(width: 50, height: 50)
            
            Text("OK")
                .foregroundColor(.white)
            
            
        }
        
        .rotationEffect(.degrees(rotationAmount), anchor: .center)
        .offset(x: xOffset, y: 0)
        .animation(
    
            Animation
                .easeInOut(duration: 2)
                .repeatForever(autoreverses: true)
        )
        .onReceive(timer) {input in
            // Move the circle and text over to the right
            xOffset = 100.0
            
            // turn once
            rotationAmount = 360.0

            // turn off the timer
            timer.upstream.connect().cancel()
        }


    }
}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
