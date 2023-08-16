//
//  AchievementSheetView.swift
//  MC3_Mathopia
//
//  Created by Michael Chandra on 16/08/23.
//

import SwiftUI

struct AchievementSheetView: View {
    
    @Environment(\.dismiss) var dismissSheet
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    
                    VStack{
                        Text("Achievements")
                            .font(.system(size: 36))
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                        Image("level1")
                            .resizable()
                            .frame(width:200,height: 200)
                        
                    }.frame(maxWidth: .infinity)
                        .padding(.top,40)
                        .padding(.bottom,40)
                    .background(Color.blue)

                    
                    // Level 1
                    
                    HStack{
                        Image("level1")
                        
                        VStack{
                            Text("Complete Level 1")
                                .font(.system(size: 32))
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity,
                                       alignment: .leading)
                                
                            Text("You successfully finished level 1. Great Job!")
                                .frame(maxWidth:.infinity,
                                       alignment: .leading)
                            
                            
                        }
                        
                        Text("UNLOCKED")
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                    }
                    .padding(.top,30)
                    .padding(.bottom,30)
                    .padding(.leading,50)
                    .padding(.trailing,70)
                    
                    Divider()
                        .padding(.leading,50)
                        .padding(.trailing,50)
                    
                    
                    // Level 2
                    
                    HStack{
                        Image("level2")
                            .grayscale(1)
                        
                        VStack{
                            Text("Complete Level 2")
                                .font(.system(size: 32))
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                                .frame(maxWidth:.infinity,
                                       alignment: .leading)
                                
                            Text("You must complete level 2 to unlock this achievement")
                                .frame(maxWidth:.infinity,
                                       alignment: .leading)
                                .foregroundColor(Color.gray)
                            
                            
                        }
                        
                        Text("LOCKED")
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.top,30)
                    .padding(.bottom,30)
                    .padding(.leading,50)
                    .padding(.trailing,70)
                    
                    Divider()
                        .padding(.leading,50)
                        .padding(.trailing,50)
                    
                    // Level 3
                    
                    HStack{
                        Image("level3")
                            .grayscale(1)
                        
                        VStack{
                            Text("Complete Level 3")
                                .font(.system(size: 32))
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity,
                                       alignment: .leading)
                                .foregroundColor(Color.gray)
                                
                            Text("You must complete level 3 to unlock this achievement")
                                .frame(maxWidth:.infinity,
                                       alignment: .leading)
                                .foregroundColor(Color.gray)
                            
                            
                        }
                        
                        Text("LOCKED")
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.top,30)
                    .padding(.bottom,30)
                    .padding(.leading,50)
                    .padding(.trailing,70)
                    
                    Divider()
                        .padding(.leading,50)
                        .padding(.trailing,50)
                    
                    // Level 4
                    
                    HStack{
                        Image("level4")
                            .grayscale(1)
                        
                        VStack{
                            Text("Complete Level 4")
                                .font(.system(size: 32))
                                .fontWeight(.bold)
                                .frame(maxWidth:.infinity,
                                       alignment: .leading)
                                .foregroundColor(Color.gray)
                                
                            Text("You must complete level 4 to unlock this achievement")
                                .frame(maxWidth:.infinity,
                                       alignment: .leading)
                                .foregroundColor(Color.gray)
                            
                            
                        }
                        
                        Text("LOCKED")
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.top,30)
                    .padding(.bottom,30)
                    .padding(.leading,50)
                    .padding(.trailing,70)
                    
                    Divider()
                        .padding(.leading,50)
                        .padding(.trailing,50)
                    
                    VStack{
                        // Level 5
                        
                        HStack{
                            Image("target_icon")
                                .resizable()
                                .grayscale(1)
                                
                                .frame(width:110,height: 110)
                            
                            VStack{
                                Text("Complete All Level")
                                    .font(.system(size: 32))
                                    .fontWeight(.bold)
                                    .frame(maxWidth:.infinity,
                                           alignment: .leading)
                                    .foregroundColor(Color.gray)
                                    
                                Text("You must complete all level to unlock this achievement")
                                    .frame(maxWidth:.infinity,
                                           alignment: .leading)
                                    .foregroundColor(Color.gray)
                                
                                
                            }
                            
                            Text("LOCKED")
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                        }
                        .padding(.top,30)
                        .padding(.bottom,30)
                        .padding(.leading,50)
                        .padding(.trailing,70)
                        
                        Divider()
                            .padding(.leading,50)
                            .padding(.trailing,50)
                    }
                    
   
                }
                
                
            }
            
        }
//        .navigationTitle("Achievements")
//
//        .navigationBarTitleDisplayMode(.inline)
//        .multilineTextAlignment(.leading)
//        .toolbar{
//            ToolbarItem(placement: .cancellationAction){
//                Button("Close", action: {
//                    dismissSheet()
//                })
//            }
//        }
        
    }
}

struct AchievementSheetView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementSheetView()
    }
}
