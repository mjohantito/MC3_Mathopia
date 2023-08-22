//
//  StageView.swift
//  MC3_Mathopia
//
//  Created by Manuel Johan Tito on 15/08/23.
//

import SwiftUI

struct StageView: View {
    
    @State var lvl1 = true
    @State var lvl2 = true
    @State var lvl3 = true
    @State var lvl4 = true
    
    let LevelTitle = ["Level 1", "Level 2", "Level 3", "Level 4"]
    let LevelSubtitle = ["Intro to Numbers", "Numbers 1", "Numbers 2", "Think Number"]
    
    
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Circle()
                    .position(x:-290, y:800)
                    .frame(width: 500)
                    .foregroundColor(.gray)
                Circle()
                    .position(x:750, y:0)
                    .frame(width: 500)
                    .foregroundColor(.gray)
                VStack{
                    
                    ZStack{
                        //back
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            ZStack{
                                Rectangle()
                                    .frame(width: 60.0, height: 60.0)
                                    .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.861))
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                Image(systemName: "arrow.left")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 25.0, height: 25.0)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            }

                        }
                        .padding(.leading, 50.0)
                        .padding(.top, 30.0)
                        .frame(maxWidth: .infinity, alignment: .leading)

                                            
                        //select stage
                        Text("Select Stage")
                            .padding(.top, 30.0)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .lineLimit(nil)
                    }

                    //circle circle
                    //level 1
                    NavigationLink(destination: FirstQuestionView(stageLevel: 0)){
                        Group{
                            VStack{
                                ZStack{
                                    Circle()
                                        .frame(width: 120)
                                        .foregroundColor(.blue)
                                    Circle()
                                        .trim(from: 0.0, to: CGFloat(1))
                                        .stroke(Color.green, lineWidth: 5)
                                        .frame(width: 130)
                                    Image("level1")
                                }
                                Text(LevelTitle[0])
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Text(LevelSubtitle[0])
                                    .foregroundColor(.black)
                            }
                        }
                        .position(x:200, y:180)
                    }
                    
                    
                    //level 2
                    if lvl2 == true {
                        NavigationLink(destination: FirstQuestionView(stageLevel: 1)){
                            Group{
                                VStack{
                                    ZStack{
                                        Circle()
                                            .frame(width: 120)
                                            .foregroundColor(.red)
                                        Circle()
                                            .trim(from: 0.0, to: CGFloat(1))
                                            .stroke(Color.green, lineWidth: 5)
                                            .frame(width: 130)
                                        Image("level2")
                                    }
                                    Text(LevelTitle[1])
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                    Text(LevelSubtitle[1])
                                        .foregroundColor(.black)
                                    
                                }
                            }
                            .position(x:600, y:30)
                        }
                        
                    } else {
                        Group{
                            VStack{
                                ZStack{
                                    Circle()
                                        .frame(width: 120)
                                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.713))
                                    Circle()
                                        .trim(from: 0.0, to: CGFloat(1))
                                        .stroke(Color.gray, lineWidth: 5)
                                        .frame(width: 130)
                                    Image("questionmark")
                                }
                                Text(LevelTitle[1])
                                    .fontWeight(.bold)
                                Text("Locked")
                            }
                        }
                        .position(x:600, y:0)
                    }
                    
                    
                    //level 3
                    if lvl3 == true {
                        NavigationLink(destination: FirstQuestionView(stageLevel: 2)){
                            Group{
                                VStack{
                                    ZStack{
                                        Circle()
                                            .frame(width: 120)
                                            .foregroundColor(.orange)
                                        Circle()
                                            .trim(from: 0.0, to: CGFloat(1))
                                            .stroke(Color.green, lineWidth: 5)
                                            .frame(width: 130)
                                        Image("level3")
                                    }
                                    Text(LevelTitle[2])
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                    Text(LevelSubtitle[2])
                                        .foregroundColor(.black)
                                    
                                }
                            }
                            .position(x:400, y:50)
                        }
                        
                    } else {
                        Group{
                            VStack{
                                ZStack{
                                    Circle()
                                        .frame(width: 120)
                                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.713))
                                    Circle()
                                        .trim(from: 0.0, to: CGFloat(1))
                                        .stroke(Color.gray, lineWidth: 5)
                                        .frame(width: 130)
                                    Image("questionmark")
                                }
                                Text(LevelTitle[2])
                                    .fontWeight(.bold)
                                Text("Locked")
                            }
                        }
                        .position(x:400, y:50)
                    }
                    
                    
                    //level 4
                    if lvl4 == true {
                        NavigationLink(destination: FirstQuestionView(stageLevel: 3)){
                            Group{
                                VStack{
                                    ZStack{
                                        Circle()
                                            .frame(width: 120)
                                            .foregroundColor(Color(red: 0.551, green: 0.979, blue: 0.35))
                                        Circle()
                                            .trim(from: 0.0, to: CGFloat(1))
                                            .stroke(Color.green, lineWidth: 5)
                                            .frame(width: 130)
                                        Image("level4")
                                    }
                                    Text(LevelTitle[3])
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                    Text(LevelSubtitle[3])
                                        .foregroundColor(.black)
                                }
                            }
                            .position(x:180, y:90)
                        }
                    } else {
                        Group{
                            VStack{
                                ZStack{
                                    Circle()
                                        .frame(width: 120)
                                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.713))
                                    Circle()
                                        .trim(from: 0.0, to: CGFloat(1))
                                        .stroke(Color.gray, lineWidth: 5)
                                        .frame(width: 130)
                                    Image("questionmark")
                                }
                                Text(LevelTitle[3])
                                    .fontWeight(.bold)
                                Text("Locked")
                            }
                        }
                        .position(x:180, y:90)
                        
                    }
                }
                Path{ path in
                    path.move(to: CGPoint(x:280, y:280)) // start
                    path.addQuadCurve(to: CGPoint(x: 520, y: 350), control: CGPoint(x:400, y:320))
                }
                .stroke(style: StrokeStyle(lineWidth: 3, dash: [20]))
                
                Path{ path in
                    path.move(to: CGPoint(x:670, y:430)) // start
                    path.addQuadCurve(to: CGPoint(x: 490, y: 650), control: CGPoint(x:900, y:520))
                }
                .stroke(style: StrokeStyle(lineWidth: 3, dash: [20]))
                
                Path{ path in
                    path.move(to: CGPoint(x:320, y:720)) // start
                    path.addQuadCurve(to: CGPoint(x: 150, y: 880), control: CGPoint(x:20, y:800))
                }
                .stroke(style: StrokeStyle(lineWidth: 3, dash: [20]))
            }
        }
        
    }
    // add function to open nextview, with return what level to open
//    func openstageview(level: Int) -> Int{
//        NavigationLink(destination: DrawingView())
//        return level
//    }
}

struct StageView_Previews: PreviewProvider {
    static var previews: some View {
        StageView()
    }
}
