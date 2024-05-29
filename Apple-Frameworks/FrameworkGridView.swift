//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Michael Roberson on 5/24/24.
//
//reume @2:56:10
import SwiftUI

struct FrameworkGridView: View {
    
    
    @StateObject var viewModel = FrameworkGridViewModel()
    //stateobject means that FrameworkGridView will stay constant as the struct framework grid view keeps getting reset.
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),
                               
    ]
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks, id: \.id){ framework in
                        // id: \.id means we're setting an identifier called "id" for the "frameworks" object so that it can be iterated through in this For Loop
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                                //"CHANGING OUR SOURCE OF TRUTH" -> NEW DATA CONNECTION HERE.
                            }
                        }
                    }
                }
                .navigationTitle("🍎 Frameworks")
            }
        }
    }
    
    
    struct FrameworkGridView_Previews: PreviewProvider {
        static var previews: some View {
            FrameworkGridView()
            
        }
    }
    
    struct FrameworkTitleView: View {
        
        let framework: Framework
        
        var body: some View {
            
            VStack {
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 90, height: 90)
                
                Text(framework.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                //below we're making the text responsive/shrinkable
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
                
            }
            .padding()
        }
    }
    

