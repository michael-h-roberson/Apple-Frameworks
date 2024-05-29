//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Michael Roberson on 5/28/24.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .font(.title2)
            .fontWeight(.semibold)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10.0)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Test Title")
    }
}
    
