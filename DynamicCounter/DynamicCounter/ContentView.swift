//
//  ContentView.swift
//  DynamicCounter
//
//  Created by Ibrahim Mohsin on 9/30/24.
//

import SwiftUI

struct ContentView: View {
    let textColor: Color = .white
    let titleFontSize: CGFloat = 50
    let buttonFontSize: CGFloat = 90
    
    @State private var people = 0
    @State private var maxCount = 0
    
    var percentFull: Double {
            Double(people) / Double(maxCount)
        }
    
    var body: some View {
        NavigationStack{
            ZStack{
                
                Color.blue
                    .ignoresSafeArea()
                
                Color.red
                    .ignoresSafeArea()
                    .opacity(percentFull)
                
                VStack{
                    HStack{
                        Text("\(people) People")
                        
                        Spacer()
                        
                        NavigationLink{
                            SettingsView(maxCount: $maxCount)
                        }label:{
                            Image(systemName: "gear")
                        }
                        .buttonStyle(.plain)
                    }
                    .font(.system(size: titleFontSize))
                    .foregroundStyle(textColor)
                    .padding()
                    
                    Spacer()
                    
                    Spacer()
                    
                    HStack{
                        Button{
                            if(people == 0){
                                people = 0
                            }
                            else{
                                people -= 1
                            }
                        }label: {
                            Image(systemName: "minus")
                        }
                        
                        Spacer()
                        
                        Button{
                            if(people >= maxCount){
                                people = maxCount
                            }
                            else{
                                people += 1
                            }
                        }label:{
                            Image(systemName: "plus")
                        }
                    }
                    .font(.system(size: titleFontSize))
                    .foregroundStyle(textColor)
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
