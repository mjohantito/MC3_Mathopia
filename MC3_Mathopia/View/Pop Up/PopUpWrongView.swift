//
//  PopUpWrongView.swift
//  MC3_Mathopia
//
//  Created by Michael Chandra on 22/08/23.
//

import SwiftUI

struct PopUpWrongView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("❌")
                    .font(.system(size: 200))
                    .frame(width:250,height: 250)
                Text("Oops, Wrong Answer!")
                    .fontWeight(.bold)
                    .font(.system(size: 36))
                    .foregroundColor(Color.blue)
                Text("Do you want to try again?")
                    .foregroundColor(Color.gray)
                    .padding(.bottom,15)
                Button{
                    
                } label: {
                    HStack{
                        Text("Try Again")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                    }
                    .padding()
                    .padding(.horizontal, 100)
                    .padding(.vertical,5)
                    
                    .background(
                        LinearGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.17, green: 0.45, blue: 0.87), location: 0.00),
                                Gradient.Stop(color: Color(red: 0.1, green: 0.36, blue: 0.78), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0.5, y: 0),
                            endPoint: UnitPoint(x: 0.5, y: 1)
                        )
                    )
                    .cornerRadius(90)
                    
                    
                    
                    
                }
                .padding(.bottom,5)
                Button{
                    
                } label: {
                    HStack{
                        Text("Exit to Main Menu")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.blue)
                        
                        
                    }
                    .padding()
                    .padding(.horizontal, 55)
                    .padding(.vertical,5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 90)
                            .stroke(.blue, lineWidth: 3)
                    )
                    .background(Color.white)
                    
                    
                    
                    
                }
                
            }
            
            
            
        }
    }
}

struct PopUpWrongView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpWrongView()
    }
}
