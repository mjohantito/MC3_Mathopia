//
//  FirstQuestionView.swift
//  MC3_Mathopia
//
//  Created by Joey Wiryawan on 15/08/23.
//

import SwiftUI
import ARKit
import RealityKit


//AR View
struct FirstQuestion: UIViewRepresentable {
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
    

    func makeUIView(context: Context) -> ARView {
        let viewFactory = ARViewFactory()
        viewFactory.level = "satu"
        return viewFactory.arView
    }


    class Coordinator: NSObject, ARSessionDelegate {
        weak var view: ARView?
        let anchor = AnchorEntity()
    }
    
    
    func updateUIView(_ uiView: ARView, context: Context) {

    }
}









struct FirstQuestionView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FirstQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        FirstQuestionView()
    }
}
