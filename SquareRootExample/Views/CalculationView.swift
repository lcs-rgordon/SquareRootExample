//
//  CalculationView.swift
//  SquareRootExample
//
//  Created by Russell Gordon on 2023-02-03.
//

import SwiftUI

struct CalculationView: View {
    
    // MARK: Stored properties
    
    // Stores input (STEP 1)
    @State var radicand: String = ""
    
    // MARK: Computed properties
    
    // Get the input as an optional Double
    // Makes input a numeric, but optional data type (STEP 2)
    var radicandAsOptionalDouble: Double? {
        
        // Try to unwrap the String input
        guard let unwrappedRadicand = Double(radicand) else {
            // Could not unwrap – invalid input
            return nil
        }
        
        // Return the unwrapped value
        return unwrappedRadicand
    }
    
    // Use the numeric, optional value and attempt to find
    // it's square root
    var positiveSquareRoot: String {
        
        // Try to unwrap the optional Double
        // Get the value as an actual Double, not optional (STEP 3)
        guard let radicandAsDouble = radicandAsOptionalDouble else  {
            
            return "Please enter a positive, numeric value."
        }
        
        return ""
        
    }
    
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
