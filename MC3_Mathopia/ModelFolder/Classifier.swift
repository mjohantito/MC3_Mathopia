//
//  Classifier.swift
//  MC3_Mathopia
//
//  Created by Manuel Johan Tito on 17/08/23.
//

import CoreML
import Vision
import CoreImage

class Classifier {
    
    var results: String?
    
    
    func detect(ciImage: CIImage, complettion:(String)->()) {
        
        guard let model = try? VNCoreMLModel(for: MNISTClassifier(configuration: MLModelConfiguration()).model) else {
            return
        }
            let request = VNCoreMLRequest(model: model)
            
            let handler = VNImageRequestHandler(ciImage: ciImage, options: [:])
            
            try? handler.perform([request])
            
            guard let result = request.results as? [VNClassificationObservation] else {
                return
            }
            
            if let firstResult = result.first {
                results = firstResult.identifier
                print("hasil", results ?? "")
                complettion(results ?? "")
            }
        
    }
    
}
