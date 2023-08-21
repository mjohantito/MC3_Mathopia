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
    func makeUIViewController(context: Context) -> ARViewFactory {
        let viewFactory = ARViewFactory()
        viewFactory.level = "satu"
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
                    Text("Level 1")
                        .font(
                            Font.custom("SF Pro Rounded", size: 32)
                                .weight(.bold)
                        )
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding()
                .padding(.top)
                VStack{
                    HStack{
                        Button("Back") {
                            dismiss()
                        }.frame(width: 100, height: 100)
                            .background(.red)
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
                                    //add button dari drawing view check jawaban
                                }
                                Spacer()
                            }
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
