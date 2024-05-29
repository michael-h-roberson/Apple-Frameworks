//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Michael Roberson on 5/24/24.
//

//Resume @2:40:10

import SwiftUI

struct FrameworkDetailView: View {
   
    
        var framework : Framework
        
    
        var body: some View {

            VStack{
                HStack {
                    Spacer()
                    
                    Button {
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                        //can use imageScale with SF symbols
                            .frame(width: 44, height: 44)
                        //making hitbox larger than the acutual "x"
                    }
                   
                }
                
                .padding()
                
                Spacer()
                
                FrameworkTitleView(framework: framework)
                   
                    Text(framework.description)
                    .padding()
                    .font(.body)
                       
                Spacer()
                
                Button {
                    
                } label: {
                    AFButton(title: "Learn More")
                    
                
                    

                }
            }
        }
    }

struct FrameworkDetailView_Previews: PreviewProvider {
        static var previews: some View {
            FrameworkDetailView(framework: MockData.sampleFramework)
    }
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

