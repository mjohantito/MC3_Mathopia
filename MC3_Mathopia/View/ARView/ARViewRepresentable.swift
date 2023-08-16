//
//  ARViewRepresentable.swift
//  MC3_Mathopia
//
//  Created by Joey Wiryawan on 15/08/23.
//

import SwiftUI
import RealityKit

struct ARViewRepresentable: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> ARViewFactory {
        return ARViewFactory()
    }
    
    func updateUIViewController(_ uiViewController: ARViewFactory, context: Context) {
        
    }
}
