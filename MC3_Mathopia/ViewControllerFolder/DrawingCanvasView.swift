//
//  DrawingCanvasView.swift
//  MC3_Mathopia
//
//  Created by Manuel Johan Tito on 17/08/23.
//

import SwiftUI
import CoreData
import PencilKit

struct DrawingCanvasView: UIViewControllerRepresentable {
    @Environment(\.managedObjectContext) private var viewContext
    
    func updateUIViewController(_ uiViewController: DrawingCanvasViewController, context: Context) {
        uiViewController.drawingData = data
        
    }
    typealias UIViewControllerType = DrawingCanvasViewController
    
    var data: Data
    var id: UUID
    
    func makeUIViewController(context: Context) -> DrawingCanvasViewController {
        let viewController = DrawingCanvasViewController.shared
        viewController.drawingData = data
        viewController.drawingChanged = { data in
            let request: NSFetchRequest<Drawing> = Drawing.fetchRequest()
            let predicate = NSPredicate(format: "id == %@", id as CVarArg)
            request.predicate = predicate
            
            do{
                let result = try viewContext.fetch(request)
                let obj = result.first
                obj?.setValue(data, forKey:"Canvasdata")
                do{
                    try viewContext.save()
                }
                catch {
                    print(error)
                }
            }
            catch{
                print(error)
            }
        }
        return viewController
    }
}
