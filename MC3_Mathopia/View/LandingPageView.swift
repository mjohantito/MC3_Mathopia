//
//  LandingPageView.swift
//  MC3_Mathopia
//
//  Created by Michael Chandra on 15/08/23.
//

import SwiftUI

//For Rounded Corner
struct RoundedCorner: Shape {
    
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct LandingPageView: View {
    
    
    @State private var isShowingStageView = false
    
    
    var body: some View {
        
        
        NavigationStack {
            
            // Blue Bar
            
            
            ScrollView{
                ZStack{
                    HStack{
                        Text("👋 Welcome!")
                            .font(.system(size: 36))
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                        Spacer()
                        NavigationLink(destination: AchievementSheetView(level1Status: true, level2Status: true, level3Status: true, level4Status: true)) {
                            Group {
                                HStack{
                                    Image("Trophy_Icon")
                                        .resizable()
                                        .frame(maxWidth:40,maxHeight:40)
                                        .padding(5)
                                        .background(Color.yellow)
                                        .cornerRadius(8)
                                    
                                    
                                    Text("Achievement")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color.orange)
                                        .fontWeight(.semibold)
                                    
                                }
                                .padding()
                                .padding(.leading,8)
                                .padding(.trailing,8)
                                .background()
                                .cornerRadius(16)
                            }
                        }
                    }
                    
                    .padding(48)
                    
                }.padding(.top,-20)
                    .background(Color.blue)
                    .zIndex(0)
                
                //White Bar
                ScrollView{
                    VStack{
                        HStack{
                            Text("Let's Play!")
                                .font(.system(size:48))
                                .fontWeight(.bold)
                                .padding(.leading,40)
                                .padding(.top,36)
                            Spacer()
                        }.padding(.bottom,30)
                        
                        ZStack(alignment:.leading){
                            Image("BGRev1_Artboard")
                                .resizable()
                                .frame(width: 738,height:479)
                                .cornerRadius(22)
                            VStack (alignment: .leading){
                                Text("Math is Fun!")
                                    .font(.system(size:64))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .padding(.leading,40)
                                    .padding(.bottom, 8)
                                
                                Text("Learn math together using camera \nwith Pencil & Hand so fun")
                                    .font(.system(size:28))
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                    .padding(.leading,40)
                                    .padding(.bottom,140)
                                
                                NavigationLink(destination: StageView(lvl1: true, lvl2: true, lvl3: true, lvl4: false).navigationBarBackButtonHidden(true)){
                                    HStack{
                                        
                                        Text("Start")
                                            .font(.system(size: 32))
                                            .foregroundColor(Color.white)
                                            .fontWeight(.semibold)
                                        
                                    }
                                    .padding()
                                    .padding(.leading,60)
                                    .padding(.trailing,60)
                                    .background(Color.orange)
                                    .cornerRadius(72)
                                }
                                .padding(.leading,40)
                                
                            }
                            
                        }
                        
                        ZStack(alignment:.leading){
                            Image("BG_Coming Soon")
                                .resizable()
                                .frame(width: 738,height:291)
                                .cornerRadius(22)
                            VStack (alignment: .leading){
                                Text("Coming Soon")
                                    .font(.system(size:64))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .padding(.leading,40)
                                    .padding(.bottom, 8)
                                
                                
           
                            }
   
                        }
 
                    }.padding(.top,30)
                    
                }.padding(.bottom,70)
                
                    .background()
                    .cornerRadius(50, corners: [.topLeft, .topRight])
    
                //                .frame(height: 300)
            }.background(Color.blue)
                .padding(.bottom,-30)
     
        }
       .navigationBarHidden(true)
        
    }
}



struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageView()
    }
}
