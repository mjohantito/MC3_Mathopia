//
//  DrawingView.swift
//  MC3_Mathopia
//
//  Created by Manuel Johan Tito on 18/08/23.
//

import SwiftUI

struct DrawingView: View {
    
    
    
//    @ObservedObject var classifier: ImageClassifier
    
    @Environment(\.managedObjectContext) var viewContext
    
    @State var id: UUID?
    @State var data: Data?
    @State var title: String?
    
//    @ObservedObject var classifier: ImageClassifier
    
    @State var predictednumber: String = ""
    
    
//    @State var predictednumber: Int?
    
    var body: some View {
        NavigationStack{
            DrawingCanvasView(data: data ?? Data(), id: id ?? UUID())
            .frame(width: 500, height: 500)
            .background(.red)
                .environment(\.managedObjectContext, viewContext)
                .navigationTitle(title ?? "Untitled")
            Button(action: {
//                DrawingCanvasViewController.shared.preprocessImage()
                DrawingCanvasViewController.shared.preprocessImage(){ hasil in
                    predictednumber = hasil
                }
//                predictednumber = classifier.imageClass ?? ""
                
                
            }, label: {
                Text("Check")
            })
            .onChange(of: DrawingCanvasViewController.shared.classifier.results) { newValue in
                print("new :\(newValue)")
                predictednumber = newValue ?? ""
            }
            
            Text("Predicted Number : \(predictednumber)")
                
//            Group {
//                if let imageClass = classifier.imageClass {
//                    HStack{
//                        Text("Predicted Numbers:\(predictednumber)")
//
//                    }
//                }else {
//                    HStack{
//                        Text("Predicted Numbers: NA")
//                    }
//                }
//            }

        }
    }
}

struct DrawingView_Previews: PreviewProvider {
    static var previews: some View {
        DrawingView()
    }
}
