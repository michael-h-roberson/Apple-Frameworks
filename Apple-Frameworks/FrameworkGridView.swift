//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Michael Roberson on 5/24/24.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        VStack(spacing: 12){
            Image("app-clip")
                .resizable()
                .frame(width: 90, height: 90)
            
            Text("App Clip")
                .font(.title2)
                .fontWeight(.semibold)
                  
                
        }
    }
}

#Preview {
    FrameworkGridView()
}
