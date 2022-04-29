//
//  AnimationDescriptionView.swift
//  ComposableViewsAndAnimations
//
//  Created by Franka Keil on 2022-04-28.
//

import SwiftUI

struct AnimationDescriptionView: View {
    
    @State var emColour = Color.red
    
    // MARK: Computed properties
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Group {
                
                Text("Description")
                    .font(.title2)
                    .bold()
                    .padding(.top)
                
                Text("""
                    An exclamation mark that gets filled in when tapped.
                    
                    Enter the initial text message in the first text field and the second text message in the second text field.
                    """)
                
                ColorPicker("Set the colour for the exclamation mark", selection: $emColour, supportsOpacity: false)
                
               
                
                
                
            }
            .padding(.bottom)
            
            List {
                NavigationLink(destination: AnimationView(chosenColour: emColour)) {
                    SimpleListItemView(title: "My Composable View",
                                       caption: "An empty excalmation mark that gets filled")
                }
            }
            
        }
        .padding()
        .navigationTitle("My Composable View")
        
    }
}

struct AnimationDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        AnimationDescriptionView()
        }
    }
}
