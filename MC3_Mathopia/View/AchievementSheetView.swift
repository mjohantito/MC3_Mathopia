//
//  AchievementSheetView.swift
//  MC3_Mathopia
//
//  Created by Michael Chandra on 16/08/23.
//

import SwiftUI

struct AchievementSheetView: View {
    
    @Environment(\.dismiss) var dismissSheet
    
    // Level Status
    @State var level1Status = true
    @State var level2Status = true
    @State var level3Status = true
    @State var level4Status = false
    
    
    
    
    
    
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
                        
                        if (level1Status == false){
                            Image("level1")
                                .grayscale(1)
                            VStack{
                                Text("Complete Level 1")
                                    .font(.system(size: 32))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                                    .frame(maxWidth:.infinity,
                                           alignment: .leading)
                                
                                Text("You must complete level 1 to unlock this achievement")
                                    .frame(maxWidth:.infinity,
                                           alignment: .leading)
                                    .foregroundColor(Color.gray)
                                
                                
                            }
                            Text("LOCKED")
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                        } else {
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
                        if (level2Status == false){
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
                            
                            
                        } else {
                            Image("level2")
                            
                            VStack{
                                Text("Complete Level 2")
                                    .font(.system(size: 32))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                                    .frame(maxWidth:.infinity,
                                           alignment: .leading)
                                
                                Text("You successfully finished level 2. Great Job!")
                                    .frame(maxWidth:.infinity,
                                           alignment: .leading)
                                    .foregroundColor(Color.black)
                                
                                
                            }
                            
                            // Level 2 Status
                            
                            Text("UNLOCKED")
                                .fontWeight(.bold)
                                .foregroundColor(Color.blue)
                            
                        }
                        
 
                        
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
                        
                        if (level3Status == false){
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
                            
                        } else {
                            Image("level3")

                            VStack{
                                Text("Complete Level 3")
                                    .font(.system(size: 32))
                                    .fontWeight(.bold)
                                    .frame(maxWidth:.infinity,
                                           alignment: .leading)
                                    .foregroundColor(Color.black)
                                
                                Text("You successfully finished level 3. Great Job!")
                                    .frame(maxWidth:.infinity,
                                           alignment: .leading)
                                    .foregroundColor(Color.black)
                                
                                
                            }
                            
                            Text("UNLOCKED")
                                .fontWeight(.bold)
                                .foregroundColor(Color.blue)
                        }
  
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
                        
                        if (level4Status == false){
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
                        } else {
                            Image("level4")
                            
                            VStack{
                                Text("Complete Level 4")
                                    .font(.system(size: 32))
                                    .fontWeight(.bold)
                                    .frame(maxWidth:.infinity,
                                           alignment: .leading)
                                    .foregroundColor(Color.black)
                                
                                Text("You successfully finished level 4. Great Job!")
                                    .frame(maxWidth:.infinity,
                                           alignment: .leading)
                                    .foregroundColor(Color.black)
                                
                                
                            }
                            Text("UNLOCKED")
                                .fontWeight(.bold)
                                .foregroundColor(Color.blue)
                        }
                        
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
                            
                            if (level1Status && level2Status && level3Status && level4Status == true){
                                Image("target_icon")
                                    .resizable()
                                    .frame(width:110,height: 110)
                                
                                VStack{
                                    Text("Complete All Level")
                                        .font(.system(size: 32))
                                        .fontWeight(.bold)
                                        .frame(maxWidth:.infinity,
                                               alignment: .leading)
                                        .foregroundColor(Color.black)
                                    
                                    Text("You successfully finished all level. What a great mathematics skill!")
                                        .frame(maxWidth:.infinity,
                                               alignment: .leading)
                                        .foregroundColor(Color.black)
                                    
                                    
                                }
                                Text("UNLOCKED")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.blue)
                            } else {
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
                                    
                                    Text("You must complete all levels to unlock this achievement")
                                        .frame(maxWidth:.infinity,
                                               alignment: .leading)
                                        .foregroundColor(Color.gray)
                                    
                                    
                                }
                                Text("LOCKED")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                            }
                            
                            
                            
                            
                            
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
