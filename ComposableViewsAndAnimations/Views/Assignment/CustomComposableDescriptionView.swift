//
//  CustomComposableDescriptionView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI

struct CustomComposableDescriptionView: View {
    
    // MARK: Stored properties
    @State private var phrase1: String = ""
    
    @State var phrase2: String = ""
    
    // MARK: Computed properties
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Group {
                
                Text("Description")
                    .font(.title2)
                    .bold()
                    .padding(.top)
                
                Text("""
                    A text field with confetti when clicked.

                    Enter the initial text message in the first text field and the second text message in the second text field.
                    """)
                
                TextField("Enter the first message here", text: $phrase1)
                TextField("Enter the second message here", text: $phrase2)
                
                
            }
            .padding(.bottom)
            
            List {
                NavigationLink(destination: CustomComposableView(message1: phrase1, message2: phrase2)) {
                    SimpleListItemView(title: "My Composable View",
                                       caption: "A brief description of my view")
                }
            }
            
        }
        .padding()
        .navigationTitle("My Composable View")
        
    }
}

struct CustomComposableDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CustomComposableDescriptionView()
        }
    }
}
