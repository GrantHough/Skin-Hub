//
//  DiseaseCard.swift
//  Skin Detector
//
//  Created by Grant Hough on 12/24/21.
//

import SwiftUI

struct DiseaseCard: View {
    
    var title: String = ""
    var titleSize: CGFloat = 0
    var description: String = ""
    var descriptionSize: CGFloat = 0
    var imageName: String = ""
    var imageWidth: CGFloat = 0
    var imageHeight: CGFloat = 0
    var width: CGFloat = 0
    var height: CGFloat = 0
    var cornerRadius: CGFloat = 0
    var color = Color(#colorLiteral(red: 1, green: 0.6120170951, blue: 0.538652122, alpha: 1))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .foregroundColor(color)
                .frame(width: width, height: height)
            
            VStack {
                Text(title)
                    .font(.system(size: titleSize, weight: .bold, design: .rounded))
                Image(imageName)
                    .resizable()
                    .frame(width: imageWidth, height: imageHeight)
                Text(description)
                    .font(.system(size: descriptionSize, weight: .medium, design: .rounded))
                
            }
            
        }
        .frame(width: width, height: height, alignment: .center)
    }
}

struct DiseaseCard_Previews: PreviewProvider {
    static var previews: some View {
        DiseaseCard()
    }
}
