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
    
    @State var level: Int = 0
    
    let ans = ["8","6","3","4"]
    
    
//    @State var predictednumber: Int?
    
    var body: some View {
        NavigationStack{
            ZStack{
                
                
                // Drawing View
                Group{
                    DrawingCanvasView(data: data ?? Data(), id: id ?? UUID())
                    .frame(width: 300, height: 400)
                    .background(.red)
                        .environment(\.managedObjectContext, viewContext)
                        .navigationTitle(title ?? "Untitled")
                        .cornerRadius(50)
        //                .position(x:0, y:0)
                    Button(action: {
        //                DrawingCanvasViewController.shared.preprocessImage()
                        DrawingCanvasViewController.shared.preprocessImage(){ hasil in
                            predictednumber = hasil
                            if predictednumber == ans[level] {
                                print("Jawaban benar atas")
                                print(level)
                                // clear jawaban, clear canvas, balik ke stage view, buka level berikutnya yang true
                            }else {
                                print("jawaban salah atas")
                                print(level)
                            }
                        }
        //                predictednumber = classifier.imageClass ?? ""
                        
                        
                    }, label: {
                        Text("Check")
                    })
                    .onChange(of: DrawingCanvasViewController.shared.classifier.results) { newValue in
        //                print("new :\(newValue)")
                        predictednumber = newValue ?? ""
                        if newValue == ans[level] {
                            print("Jawaban benar")
                            print(level)
                            // clear jawaban, clear canvas, balik ke stage view, buka level berikutnya yang true
                        }else {
                            print("jawaban salah")
                            print(level)
                        }
                    }
                    
//                    Text("Predicted Number : \(predictednumber)")
                }
            }
            
                
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
        DrawingView(level: 0)
    }
}
