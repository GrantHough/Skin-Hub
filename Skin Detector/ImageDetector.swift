//
//  ImageDetector.swift
//  Skin Detector
//
//  Created by Grant Hough on 12/25/21.
//

import SwiftUI

struct ImageDetector: View {
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    @ObservedObject var classifier: ImageClassifier
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "photo")
                    .onTapGesture {
                        isPresenting = true
                        sourceType = .photoLibrary
                    }
                
                Image(systemName: "camera")
                    .onTapGesture {
                        isPresenting = true
                        sourceType = .camera
                    }
            }
            .font(.title)
            .foregroundColor(.blue)
            
            Rectangle()
                .strokeBorder()
                .foregroundColor(.yellow)
                .overlay(
                    Group {
                        if uiImage != nil {
                            Image(uiImage: uiImage!)
                                .resizable()
                                .scaledToFit()
                        }
                    }
                )
            
            
            VStack{
                Button(action: {
                    if uiImage != nil {
                        classifier.detect(uiImage: uiImage!)
                    }
                }) {
                    Text("Scan Image")
                        .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.width * 0.13)
                        .background(Color(#colorLiteral(red: 0.9777018428, green: 0.5183423758, blue: 0.5577222705, alpha: 1)).opacity(0.8))
                        .foregroundColor(Color(.white).opacity(0.65))
                        .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 5)
                        .font(.system(size: 18, weight: .semibold))
                        .cornerRadius(10)
                        .padding(0.8)
                        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 15)
                }
                
                Group {
                    if let imageClass = classifier.imageClass {
                        HStack{
                            Text("Possible Condition(s):")
                                .font(.caption)
                            Text(imageClass)
                                .bold()
                        }
                    } else {
                        HStack{
                            Text("Please Scan Image")
                                .font(.caption)
                        }
                    }
                }
                .font(.subheadline)
                .padding()
                
            }
        }
        .sheet(isPresented: $isPresenting){
            ImagePicker(uiImage: $uiImage, isPresenting:  $isPresenting, sourceType: $sourceType)
                .onDisappear{
                    if uiImage != nil {
                        classifier.detect(uiImage: uiImage!)
                    }
                }
            
        }
        
        .padding()
    }
}

struct ImageDetector_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetector(classifier: ImageClassifier())
    }
}
