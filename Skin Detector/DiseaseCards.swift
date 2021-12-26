//
//  DiseaseCard.swift
//  Skin Detector
//
//  Created by Grant Hough on 12/24/21.
//

import SwiftUI

struct ActinicKeratosis: View {
    
    //originally had this as an object, but then ran into an issue with nav links and had a solution but no reason to execute as it would take too long and doesn't really matter
    var title: String = "Actinic Keratosis"
    var titleSize: CGFloat = 30
    var description: String = "Tap to learn more."
    var descriptionSize: CGFloat = 20
    var imageName: String = "ActinicKeratosis"
    var imageWidth: CGFloat = UIScreen.main.bounds.width * 0.56
    var imageHeight: CGFloat = UIScreen.main.bounds.height * 0.16
    var width: CGFloat = UIScreen.main.bounds.width * 0.8
    var height: CGFloat = UIScreen.main.bounds.height * 0.28
    var cornerRadius: CGFloat = 20
    var color = (Color(#colorLiteral(red: 0.9777018428, green: 0.5183423758, blue: 0.5577222705, alpha: 1)).opacity(1))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .foregroundColor(color)
                .frame(width: width, height: height)
                .opacity(0.8)
            
            VStack (spacing: 0) {
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
                Text(title)
                    .font(.system(size: titleSize, weight: .bold, design: .rounded))
                    .padding(.top)
                
                Image(imageName)
                    .resizable()
                    .frame(width: imageWidth, height: imageHeight)
                    .cornerRadius(12)
                    .padding(5)
                    .shadow(radius: 20)
                
                NavigationLink(description, destination: One())
                    .font(.system(size: descriptionSize, weight: .light, design: .rounded))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
            }
            
        }
        .frame(width: width, height: height, alignment: .center)
    }
    
    
}

struct ActinicKeratosis_Previews: PreviewProvider {
    static var previews: some View {
        ActinicKeratosis()
    }
}


struct BasalCellCarcinoma: View {
    
    var title: String = "Basal Cell Carcinoma"
    var titleSize: CGFloat = 30
    var description: String = "Tap to learn more."
    var descriptionSize: CGFloat = 20
    var imageName: String = "BasalCellCarcinoma"
    var imageWidth: CGFloat = UIScreen.main.bounds.width * 0.56
    var imageHeight: CGFloat = UIScreen.main.bounds.height * 0.16
    var width: CGFloat = UIScreen.main.bounds.width * 0.8
    var height: CGFloat = UIScreen.main.bounds.height * 0.28
    var cornerRadius: CGFloat = 20
    var color = (Color(#colorLiteral(red: 0.9777018428, green: 0.5183423758, blue: 0.5577222705, alpha: 1)).opacity(1))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .foregroundColor(color)
                .frame(width: width, height: height)
                .opacity(0.8)
            
            VStack (spacing: 0) {
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
                Text(title)
                    .font(.system(size: titleSize, weight: .bold, design: .rounded))
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                
                Image(imageName)
                    .resizable()
                    .frame(width: imageWidth, height: imageHeight)
                    .cornerRadius(12)
                    .padding(5)
                    .shadow(radius: 20)
                
                NavigationLink(description, destination: Two())
                    .font(.system(size: descriptionSize, weight: .light, design: .rounded))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
            }
            
        }
        .frame(width: width, height: height, alignment: .center)
    }
}

struct BasalCellCarcinoma_Previews: PreviewProvider {
    static var previews: some View {
        BasalCellCarcinoma()
    }
}

struct Dermatofibroma: View {
    
    var title: String = "Dermatofibroma"
    var titleSize: CGFloat = 30
    var description: String = "Tap to learn more."
    var descriptionSize: CGFloat = 20
    var imageName: String = "Derma"
    var imageWidth: CGFloat = UIScreen.main.bounds.width * 0.56
    var imageHeight: CGFloat = UIScreen.main.bounds.height * 0.16
    var width: CGFloat = UIScreen.main.bounds.width * 0.8
    var height: CGFloat = UIScreen.main.bounds.height * 0.28
    var cornerRadius: CGFloat = 20
    var color = (Color(#colorLiteral(red: 0.9777018428, green: 0.5183423758, blue: 0.5577222705, alpha: 1)).opacity(1))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .foregroundColor(color)
                .frame(width: width, height: height)
                .opacity(0.8)
            
            VStack (spacing: 0) {
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
                Text(title)
                    .font(.system(size: titleSize, weight: .bold, design: .rounded))
                    .padding(.top)
                
                Image(imageName)
                    .resizable()
                    .frame(width: imageWidth, height: imageHeight)
                    .cornerRadius(12)
                    .padding(5)
                    .shadow(radius: 20)
                
                NavigationLink(description, destination: Three())
                    .font(.system(size: descriptionSize, weight: .light, design: .rounded))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
            }
            
        }
        .frame(width: width, height: height, alignment: .center)
    }
}

struct Dermatofibroma_Previews: PreviewProvider {
    static var previews: some View {
        Dermatofibroma()
    }
}


struct Melanoma: View {
    
    var title: String = "Melanoma"
    var titleSize: CGFloat = 30
    var description: String = "Tap to learn more."
    var descriptionSize: CGFloat = 20
    var imageName: String = "Melanoma"
    var imageWidth: CGFloat = UIScreen.main.bounds.width * 0.56
    var imageHeight: CGFloat = UIScreen.main.bounds.height * 0.16
    var width: CGFloat = UIScreen.main.bounds.width * 0.8
    var height: CGFloat = UIScreen.main.bounds.height * 0.28
    var cornerRadius: CGFloat = 20
    var color = (Color(#colorLiteral(red: 0.9777018428, green: 0.5183423758, blue: 0.5577222705, alpha: 1)).opacity(1))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .foregroundColor(color)
                .frame(width: width, height: height)
                .opacity(0.8)
            
            VStack (spacing: 0) {
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
                Text(title)
                    .font(.system(size: titleSize, weight: .bold, design: .rounded))
                    .padding(.top)
                
                Image(imageName)
                    .resizable()
                    .frame(width: imageWidth, height: imageHeight)
                    .cornerRadius(12)
                    .padding(5)
                    .shadow(radius: 20)
                
                NavigationLink(description, destination: Four())
                    .font(.system(size: descriptionSize, weight: .light, design: .rounded))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
            }
            
        }
        .frame(width: width, height: height, alignment: .center)
    }
}

struct Melanoma_Previews: PreviewProvider {
    static var previews: some View {
        Melanoma()
    }
}


struct Nevus: View {
    
    var title: String = "Nevus"
    var titleSize: CGFloat = 30
    var description: String = "Tap to learn more."
    var descriptionSize: CGFloat = 20
    var imageName: String = "NEVUS"
    var imageWidth: CGFloat = UIScreen.main.bounds.width * 0.56
    var imageHeight: CGFloat = UIScreen.main.bounds.height * 0.16
    var width: CGFloat = UIScreen.main.bounds.width * 0.8
    var height: CGFloat = UIScreen.main.bounds.height * 0.28
    var cornerRadius: CGFloat = 20
    var color = (Color(#colorLiteral(red: 0.9777018428, green: 0.5183423758, blue: 0.5577222705, alpha: 1)).opacity(1))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .foregroundColor(color)
                .frame(width: width, height: height)
                .opacity(0.8)
            
            VStack (spacing: 0) {
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
                Text(title)
                    .font(.system(size: titleSize, weight: .bold, design: .rounded))
                    .padding(.top)
                
                Image(imageName)
                    .resizable()
                    .frame(width: imageWidth, height: imageHeight)
                    .cornerRadius(12)
                    .padding(5)
                    .shadow(radius: 20)
                
                NavigationLink(description, destination: Five())
                    .font(.system(size: descriptionSize, weight: .light, design: .rounded))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
            }
            
        }
        .frame(width: width, height: height, alignment: .center)
    }
}

struct Nevus_Previews: PreviewProvider {
    static var previews: some View {
        Nevus()
    }
}

struct PigmentedBenignKeratosis: View {
    
    var title: String = "Pigmented Benign Keratosis"
    var titleSize: CGFloat = 30
    var description: String = "Tap to learn more."
    var descriptionSize: CGFloat = 20
    var imageName: String = "pigmentedbenign"
    var imageWidth: CGFloat = UIScreen.main.bounds.width * 0.56
    var imageHeight: CGFloat = UIScreen.main.bounds.height * 0.16
    var width: CGFloat = UIScreen.main.bounds.width * 0.8
    var height: CGFloat = UIScreen.main.bounds.height * 0.28
    var cornerRadius: CGFloat = 20
    var color = (Color(#colorLiteral(red: 0.9777018428, green: 0.5183423758, blue: 0.5577222705, alpha: 1)).opacity(1))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .foregroundColor(color)
                .frame(width: width, height: height)
                .opacity(0.8)
            
            VStack (spacing: 0) {
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
                Text(title)
                    .font(.system(size: titleSize, weight: .bold, design: .rounded))
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                
                Image(imageName)
                    .resizable()
                    .frame(width: imageWidth, height: imageHeight)
                    .cornerRadius(12)
                    .padding(5)
                    .shadow(radius: 20)
                
                Text(description)
                    .font(.system(size: descriptionSize, weight: .light, design: .rounded))
                    .padding(.bottom)
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
            }
            
        }
        .frame(width: width, height: height, alignment: .center)
    }
}

struct PigmentedBenignKeratosis_Previews: PreviewProvider {
    static var previews: some View {
        PigmentedBenignKeratosis()
    }
}

struct SeborrheicKeratosis: View {
    
    var title: String = "Seborrheic Keratosis"
    var titleSize: CGFloat = 30
    var description: String = "Tap to learn more."
    var descriptionSize: CGFloat = 20
    var imageName: String = "sebo"
    var imageWidth: CGFloat = UIScreen.main.bounds.width * 0.56
    var imageHeight: CGFloat = UIScreen.main.bounds.height * 0.16
    var width: CGFloat = UIScreen.main.bounds.width * 0.8
    var height: CGFloat = UIScreen.main.bounds.height * 0.28
    var cornerRadius: CGFloat = 20
    var color = (Color(#colorLiteral(red: 0.9777018428, green: 0.5183423758, blue: 0.5577222705, alpha: 1)).opacity(1))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .foregroundColor(color)
                .frame(width: width, height: height)
                .opacity(0.8)
            
            VStack (spacing: 0) {
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
                Text(title)
                    .font(.system(size: titleSize, weight: .bold, design: .rounded))
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                
                Image(imageName)
                    .resizable()
                    .frame(width: imageWidth, height: imageHeight)
                    .cornerRadius(12)
                    .padding(5)
                    .shadow(radius: 20)
                
                NavigationLink(description, destination: Six())
                    .font(.system(size: descriptionSize, weight: .light, design: .rounded))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
            }
            
        }
        .frame(width: width, height: height, alignment: .center)
    }
}

struct SeborrheicKeratosis_Previews: PreviewProvider {
    static var previews: some View {
        SeborrheicKeratosis()
    }
}


struct SquamousCellCarcinoma: View {
    
    var title: String = "Squamous Cell Carcinoma"
    var titleSize: CGFloat = 30
    var description: String = "Tap to learn more."
    var descriptionSize: CGFloat = 20
    var imageName: String = "squamows"
    var imageWidth: CGFloat = UIScreen.main.bounds.width * 0.56
    var imageHeight: CGFloat = UIScreen.main.bounds.height * 0.16
    var width: CGFloat = UIScreen.main.bounds.width * 0.8
    var height: CGFloat = UIScreen.main.bounds.height * 0.28
    var cornerRadius: CGFloat = 20
    var color = (Color(#colorLiteral(red: 0.9777018428, green: 0.5183423758, blue: 0.5577222705, alpha: 1)).opacity(1))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .foregroundColor(color)
                .frame(width: width, height: height)
                .opacity(0.8)
            
            VStack (spacing: 0) {
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
                Text(title)
                    .font(.system(size: titleSize, weight: .bold, design: .rounded))
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                
                Image(imageName)
                    .resizable()
                    .frame(width: imageWidth, height: imageHeight)
                    .cornerRadius(12)
                    .padding(5)
                    .shadow(radius: 20)
                
                NavigationLink(description, destination: Seven())
                    .font(.system(size: descriptionSize, weight: .light, design: .rounded))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
            }
            
        }
        .frame(width: width, height: height, alignment: .center)
    }
}

struct SquamousCellCarcinoma_Previews: PreviewProvider {
    static var previews: some View {
        SquamousCellCarcinoma()
    }
}

struct VascularLesion: View {
    
    var title: String = "Vascular Lesion"
    var titleSize: CGFloat = 30
    var description: String = "Tap to learn more."
    var descriptionSize: CGFloat = 20
    var imageName: String = "vascular_lesion"
    var imageWidth: CGFloat = UIScreen.main.bounds.width * 0.56
    var imageHeight: CGFloat = UIScreen.main.bounds.height * 0.16
    var width: CGFloat = UIScreen.main.bounds.width * 0.8
    var height: CGFloat = UIScreen.main.bounds.height * 0.28
    var cornerRadius: CGFloat = 20
    var color = (Color(#colorLiteral(red: 0.9777018428, green: 0.5183423758, blue: 0.5577222705, alpha: 1)).opacity(1))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .foregroundColor(color)
                .frame(width: width, height: height)
                .opacity(0.8)
            
            VStack (spacing: 0) {
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
                Text(title)
                    .font(.system(size: titleSize, weight: .bold))
                    .padding(.top)
                
                Image(imageName)
                    .resizable()
                    .frame(width: imageWidth, height: imageHeight)
                    .cornerRadius(12)
                    .padding(5)
                    .shadow(radius: 20)
                
                NavigationLink(description, destination: Eight())
                    .font(.system(size: descriptionSize, weight: .light, design: .rounded))
                    .foregroundColor(Color.black)
                    .padding(.bottom)
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
            }
            
        }
        .frame(width: width, height: height, alignment: .center)
    }
}

struct VascularLesion_Previews: PreviewProvider {
    static var previews: some View {
        VascularLesion()
    }
}
