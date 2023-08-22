//
//  FirstQuestionView.swift
//  MC3_Mathopia
//
//  Created by Manuel Johan Tito on 21/08/23.
//

import SwiftUI
import ARKit
import RealityKit







//AR View
struct FirstQuestion: UIViewControllerRepresentable {
    
    @State var stageLevel: Int = 0
    
    func makeUIViewController(context: Context) -> ARViewFactory {
        let viewFactory = ARViewFactory()
        if stageLevel == 0 {
            viewFactory.level = "satu"
        }else if stageLevel == 1 {
            viewFactory.level = "dua"
        }else if stageLevel == 2 {
            viewFactory.level = "tiga"
        }else if stageLevel == 3 {
            viewFactory.level = "empat"
        }else {
            viewFactory.level = "satu"
        }
        
        viewFactory.level = "satu" //mention level 1
        return viewFactory
    }
    
    func updateUIViewController(_ uiViewController: ARViewFactory, context: Context) {
        
    }
    
    typealias UIViewControllerType = ARViewFactory
    
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
    
    
//    func makeUIView(context: Context) -> ARView {
//        let viewFactory = ARViewFactory()
//        viewFactory.level = "satu"
//        print("satuan")
//        return viewFactory.arView
//    }
    
    
    class Coordinator: NSObject, ARSessionDelegate {
        weak var view: ARView?
        let anchor = AnchorEntity()
    }
    
//
//    func updateUIView(_ uiView: ARView, context: Context) {
//
//    }
}

struct FirstQuestionView: View {
    @Environment(\.dismiss) var dismiss
    
    
    
    @State var predictednumber: String = ""
    
    @State var level: Int = 0
    
    let ans = ["8","6","3","4"]
    
    var checkans:Bool = true
    
    
    @State var stageLevel: Int = 0
    var leveltext = ["Level 1","Level 2", "Level 3", "Level 4"]
    
    
   
    
    @State var showPopup: Bool = false
    
    
    
    var body: some View {
        ZStack {
            
            FirstQuestion()
            VStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                    .background(
                        LinearGradient(
                            stops: [
                                Gradient.Stop(color: .black.opacity(0.75), location: 0.00),
                                Gradient.Stop(color: Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0.5, y: 0),
                            endPoint: UnitPoint(x: 0.5, y: 1)
                        )
                    )
                Spacer()
            }
            ZStack {
                VStack {
                    Text(leveltext[stageLevel])
                        .padding(.top, 30.0)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .lineLimit(nil)//mention level 1
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding()
                .padding(.top)
                VStack{
                    HStack{
                        Button {
                            dismiss()
                        } label: {
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


//                        Button("Back") {
//                            dismiss()
//                        }.frame(width: 100, height: 100)
//                            .background(.red)
                        Spacer()
                    }
                    Spacer()
                }
                .padding()
                .padding(.top)
                
                ZStack{
                    VStack {
                        Spacer()
                        ZStack {
                            Text("")
                                .frame(maxWidth: .infinity)
                                .frame(height: 100)
                                .background(.white)
                            
                            HStack {
                                Spacer()
                                
                                //CLEAR ANSWER BUTTON
                                HStack(alignment: .center, spacing: 10) { Text("Clear Answer")
                                        .foregroundColor(.white)
                                }
                                .padding(.horizontal, 70)
                                .padding(.vertical, 20)
                                .background(
                                    LinearGradient(
                                        stops: [
                                            Gradient.Stop(color: Color(red: 0.83, green: 0.3, blue: 0.3), location: 0.00),
                                            Gradient.Stop(color: Color(red: 0.65, green: 0.18, blue: 0.18), location: 1.00),
                                        ],
                                        startPoint: UnitPoint(x: 0.5, y: 0),
                                        endPoint: UnitPoint(x: 0.5, y: 1)
                                    )
                                )
                                .cornerRadius(60)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 60)
                                        .inset(by: -2.5)
                                        .stroke(Color(red: 0.88, green: 0.88, blue: 0.88), lineWidth: 5)
                                )
                                .onTapGesture {
                                    // clear canvas
                                    
                                }
                                Spacer()
                                
                                //CONFIRM ANSWER
                                HStack(alignment: .center, spacing: 10) {Text("Confirm Answer")
                                        .foregroundColor(.white)
                                }
                                .padding(.horizontal, 70)
                                .padding(.vertical, 20)
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
                                .cornerRadius(60)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 60)
                                        .inset(by: -2.5)
                                        .stroke(Color(red: 0.88, green: 0.88, blue: 0.88), lineWidth: 5)
                                )
                                .onTapGesture {
                                    DrawingCanvasViewController.shared.preprocessImage(){ hasil in
                                        predictednumber = hasil
                                        if predictednumber == ans[stageLevel] {
                                            print("Jawaban benar baru")
                                            print(stageLevel)
                                            showPopup.toggle()
//                                            self.checkans = true
                                            // clear jawaban, clear canvas, balik ke stage view, buka level berikutnya yang true
                                        }else {
                                            print("jawaban salah baru")
                                            print(stageLevel)
                                            showPopup.toggle()
//                                            self.checkans = false
                                        }
                                    }
                                }
                                
                                Spacer()
                            }
                        }
                    }
                }
                HStack{
                    Spacer()
                    VStack{
                        Spacer()
                        DrawingView()
                    }
                    .padding(130)
                }
                .padding(.trailing,-60)
                
            }
        }
        .popupNavigationView(show: $showPopup) {
            if predictednumber == ans[stageLevel] {
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

            }else {
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
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        
    }
}

struct FirstQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        FirstQuestionView()
    }
}
