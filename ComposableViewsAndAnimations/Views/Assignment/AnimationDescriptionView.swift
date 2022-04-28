//
//  AnimationDescriptionView.swift
//  ComposableViewsAndAnimations
//
//  Created by Franka Keil on 2022-04-28.
//

import SwiftUI

struct AnimationDescriptionView: View {
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
                
               
                
                
                
            }
            .padding(.bottom)
            
            List {
                NavigationLink(destination: AnimationView()) {
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
