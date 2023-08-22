//
//  PopUpCorrectView.swift
//  MC3_Mathopia
//
//  Created by Michael Chandra on 22/08/23.
//

import SwiftUI

struct PopUpCorrectView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("✅")
                    .font(.system(size: 200))
                    .frame(width:250,height: 250)
                Text("Congratulations!")
                    .fontWeight(.bold)
                    .font(.system(size: 36))
                    .foregroundColor(Color.blue)
                Text("You answer correctly")
                    .foregroundColor(Color.gray)
                    .padding(.bottom,15)
                Button{
                    
                } label: {
                    HStack{
                        Text("Next")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                    }
                    .padding()
                    .padding(.horizontal, 120)
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
                
                
            }
            
            
            
        }
    }
}

struct PopUpCorrectView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpCorrectView()
    }
}
