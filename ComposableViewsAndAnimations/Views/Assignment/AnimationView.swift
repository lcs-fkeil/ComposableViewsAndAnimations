//
//  AnimationView.swift
//  ComposableViewsAndAnimations
//
//  Created by Franka Keil on 2022-04-28.
//

import SwiftUI

struct AnimationView: View {
    
    // MARK: Stored Properties
    
    @State var rotation = 0.0
    
    @State var unfilledOpacity = 1.0
    
    @State var filledOpacity = 0.0
    
    // MARK: Computed Properties
    var body: some View {
        
        
        VStack {
            
            ZStack{
                
                Image(systemName: "rectangle.portrait")
                    .resizable()
                    .frame(width: 30, height: 100)
                    .foregroundColor(.red)
                    .opacity(unfilledOpacity)
                
                Image(systemName: "rectangle.portrait.fill")
                    .resizable()
                    .frame(width: 30, height: 100)
                    .foregroundColor(.red)
                    .opacity(filledOpacity)
            }
            
            ZStack{
                
                Image(systemName: "circle")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.red)
                    .opacity(unfilledOpacity)
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.red)
                    .opacity(filledOpacity)
            }
            
        }
        .rotationEffect(.degrees(rotation))
        .onTapGesture{
            withAnimation(
                Animation
                    .interpolatingSpring(stiffness: 10.0, damping: 2.0)
            ){
                rotation = -360.0 
                
                filledOpacity = 1.0
                
                unfilledOpacity = 0.0
            }
            
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
