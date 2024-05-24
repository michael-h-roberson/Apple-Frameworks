//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Michael Roberson on 5/24/24.
//

import SwiftUI

struct DetailView: View {
    
    let framework: Framework
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
            
            Text(framework.description)
                .font(.caption)
                .fontWeight(.medium)
            
            Button {
                
            } label: {
                LearnMoreButton (title: "Learn More",
                                 backgroundColor: .red,
                                 textColor: .white,
                                 cornerRadius: 5)
            }
            
            #Preview {
                DetailView(framework: Framework)
            }
            
            
            
            //VStack {
            //    Image(framework.imageName)
            //        .resizable()
            //        .frame(width: 90, height: 90)
            //
            //    Text(framework.name)
            //        .font(.title2)
            //        .fontWeight(.semibold)
            //    //below we're making the text responsive/shrinkable
            //        .scaledToFit()
            //        .minimumScaleFactor(0.6)
        }
    }
}

