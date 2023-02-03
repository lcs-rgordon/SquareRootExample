//
//  CalculationView.swift
//  SquareRootExample
//
//  Created by Russell Gordon on 2023-02-03.
//

import SwiftUI

struct CalculationView: View {
    
    // MARK: Stored properties
    @State var radicand = ""
    
    // MARK: Computed properties
    
    // User interface
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading, spacing: 15) {
                Text("Enter a number to find the square root of (also known as the 'radicand'):")
                    .font(.headline.smallCaps())
                    .bold()
                
                TextField("25.0", text: $radicand)
                    .padding(.horizontal)
                    .font(.title2)
                
                Text("The square root of that value is:")
                    .font(.headline.smallCaps())
                    .bold()

                HStack(alignment: .firstTextBaseline) {
                    Text("5")
                    Text("and")
                        .font(.headline.smallCaps())
                        .bold()
                    Text("-5")
                }
                .padding(.horizontal)
                .font(.title2)

                Spacer()

            }
            .navigationTitle("Square Rooter")
            .padding()
        }
    }
}

struct CalculationView_Previews: PreviewProvider {
    static var previews: some View {
        CalculationView()
    }
}
