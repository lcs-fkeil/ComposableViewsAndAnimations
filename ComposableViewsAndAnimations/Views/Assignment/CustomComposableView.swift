//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    
    // MARK: Stored Properties
    
    @State var opacityText1 = 1.0
    @State var opacityText2 = 0.0
    
    @State var opacity1 = 0.0
    @State var opacity2 = 0.0
    @State var opacity3 = 0.0
    @State var opacity4 = 0.0
    @State var opacity5 = 0.0
    @State var opacity6 = 0.0
    @State var opacity7 = 0.0
    @State var opacity8 = 0.0
    @State var opacity9 = 0.0
    @State var opacity10 = 0.0
    
    
    // Horizontal position
    @State var xOffset1 = 0.0
    @State var xOffset2 = 0.0
    @State var xOffset3 = 0.0
    @State var xOffset4 = 0.0
    @State var xOffset5 = 0.0
    @State var xOffset6 = 0.0
    @State var xOffset7 = 0.0
    @State var xOffset8 = 0.0
    @State var xOffset9 = 0.0
    @State var xOffset10 = 0.0
    
    // vertical position
    @State var yOffset1 = 0.0
    @State var yOffset2 = 0.0
    @State var yOffset3 = 0.0
    @State var yOffset4 = 0.0
    @State var yOffset5 = 0.0
    @State var yOffset6 = 0.0
    @State var yOffset7 = 0.0
    @State var yOffset8 = 0.0
    @State var yOffset9 = 0.0
    @State var yOffset10 = 0.0
    
    
    // MARK: Computed Properties
    
    var body: some View {
        ZStack {
            
            Text("Submit")
                .font(.title2)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.black, lineWidth: 4)
                )
                .opacity(opacityText1)
            
            Text("Re-submit")
                .font(.title2)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.black, lineWidth: 4)
                )
                .opacity(opacityText2)
            Group {
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.purple)
                    .opacity(opacity1)
                    .offset(x: xOffset1, y: yOffset1)
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.green)
                    .opacity(opacity2)
                    .offset(x: xOffset2, y: yOffset2)
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.blue)
                    .opacity(opacity3)
                    .offset(x: xOffset3, y: yOffset3)
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.orange)
                    .opacity(opacity4)
                    .offset(x: xOffset4, y: yOffset4)
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.pink)
                    .opacity(opacity5)
                    .offset(x: xOffset5, y: yOffset5)
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.green)
                    .opacity(opacity6)
                    .offset(x: xOffset6, y: yOffset6)
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.red)
                    .opacity(opacity7)
                    .offset(x: xOffset7, y: yOffset7)
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.orange)
                    .opacity(opacity8)
                    .offset(x: xOffset8, y: yOffset8)
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.blue)
                    .opacity(opacity9)
                    .offset(x: xOffset9, y: yOffset9)
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.yellow)
                    .opacity(opacity10)
                    .offset(x: xOffset10, y: yOffset10)
            }
            
            
            
        }
        .onTapGesture {
            opacityText1 = 0.0
            opacityText2 = 1.0
            opacity1 = 1.0
            opacity2 = 1.0
            opacity3 = 1.0
            opacity4 = 1.0
            opacity5 = 1.0
            opacity6 = 1.0
            opacity7 = 1.0
            opacity8 = 1.0
            opacity9 = 1.0
            opacity10 = 1.0
            
            xOffset1 = -150.0
            xOffset2 = -120.0
            xOffset3 = -60.0
            xOffset5 = 100.0
            xOffset6 = 130.0
            xOffset7 = 150.0
            xOffset8 = 80.0
            xOffset9 = -30.0
            xOffset10 = -110.0
            
            yOffset2 = -100.0
            yOffset3 = -130-0
            yOffset4 = -90.0
            yOffset5 = -120.0
            yOffset6 = -30.0
            yOffset7 = 50.0
            yOffset8 = 130.0
            yOffset9 = 80.0
            yOffset10 = 100.0
        }
        .animation(.default)
        
        
        
        
    }
}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
