//
//  ARViewRepresentableTest.swift
//  MC3_Mathopia
//
//  Created by Joey Wiryawan on 19/08/23.
//

import SwiftUI
import RealityKit

struct ARViewRepresentableTest: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> ARViewFactoryTest {
        return ARViewFactoryTest()
    }
    
    func updateUIViewController(_ uiViewController: ARViewFactoryTest, context: Context) {
        
    }
}
