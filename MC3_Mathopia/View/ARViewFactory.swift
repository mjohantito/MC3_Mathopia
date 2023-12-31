//
//  ARViewFactory.swift
//  MC3_Mathopia
//
//  Created by Manuel Johan Tito on 21/08/23.
//

import SwiftUI
import ARKit
import RealityKit

class ARViewFactory: UIViewController, ARSessionDelegate{
    
    var anchorDetect = [ARAnchor]()
    var arView = ARView(frame: .zero)
    var level = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.generateARView()
        self.view = self.arView
        self.arView.cameraMode = .ar
        self.arView.session.delegate = self
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var timerCreate = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(createEntity), userInfo: nil, repeats: false)
    }
    
    //Generate AR View
    func generateARView() -> ARView {
        
        //Start Session
        let session = arView.session
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = [.horizontal]
        session.run(config)
        
        //Coaching Overlay
        let coachingOverlay = ARCoachingOverlayView()
        coachingOverlay.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        coachingOverlay.session = session
        coachingOverlay.goal = .horizontalPlane
        arView.addSubview(coachingOverlay)
        
        
        return arView
    }
    
    @objc func createEntity() {
        if anchorDetect.count > 0{
            DispatchQueue.main.async {
                let FirstEntity = try! Question1.loadBox()
                let SecondEntity = try! Question2.loadBox()
//                let AnchorEntity = AnchorEntity(anchor: self.anchorDetect[0])
                let AnchorEntity = AnchorEntity(plane: .any)
                
//                AnchorEntity.addChild(FirstEntity)
                
                if self.level == "satu" {
                    AnchorEntity.addChild(FirstEntity)
                } else if self.level == "dua" {
                    AnchorEntity.addChild(SecondEntity)
                }
                self.arView.scene.anchors.append(AnchorEntity)
            }
        }
    }
    
    func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
        self.anchorDetect = anchors
    }
    
    func session(_ session: ARSession, didUpdate anchors: [ARAnchor]) {
        self.anchorDetect = anchors
    }
}
