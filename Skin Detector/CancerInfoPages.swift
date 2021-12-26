//
//  CancerInfoPages.swift
//  Skin Detector
//
//  Created by Grant Hough on 12/24/21.
//

import SwiftUI

struct One: View {
    var body: some View {
        VStack{
            
            Text("Actinic Keratosis")
                .fontWeight(.bold)
                .font(.system(size: UIScreen.main.bounds.width * 0.11, weight: .bold, design: .rounded))
                .foregroundColor(Color(.black).opacity(0.8))
            
            Image("ActinicKeratosis")
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.56, height: UIScreen.main.bounds.height * 0.16)
                .cornerRadius(12)
                .padding(5)
                .shadow(radius: 20)
            
            ZStack{
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6120170951, blue: 0.538652122, alpha: 1)))
                    .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.56)
                    .opacity(0.7)
                    .shadow(radius: 20)
                
                Text("An Actinic Keratosis is a small, sand-papery, rough patch of skin that forms due to large amounts of exposure to the sun.  It protrudes from the rest of the surrounding skin and can be pink, yellow, red or brown.  Taking precautions with sun exposure, such as using sun-screen or covering up, can help to minimize the risk of acquiring Actinic Keratosis. After diagnosis, Actinic Keratosis can be removed in a number of ways, the most common being perscribed skin cream, cryotherapy, laser-removal, and scraping.")
                    .padding()
                
            }
            .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.56)
            
            Spacer()
                .frame(height: UIScreen.main.bounds.height * 0.1)
        }
    }
}

struct One_Previews: PreviewProvider {
    static var previews: some View {
        One()
    }
}


struct Two: View {
    var body: some View {
        VStack {
            VStack (spacing: 0) {
                Text("Basal Cell")
                    .fontWeight(.bold)
                    .font(.system(size: UIScreen.main.bounds.width * 0.11, weight: .bold, design: .rounded))
                    .foregroundColor(Color(.black).opacity(0.8))
                    .multilineTextAlignment(.center)
                
                Text("Carcinoma")
                    .fontWeight(.bold)
                    .font(.system(size: UIScreen.main.bounds.width * 0.11, weight: .bold, design: .rounded))
                    .foregroundColor(Color(.black).opacity(0.8))
                    .multilineTextAlignment(.center)
            }
            
            Image("BasalCellCarcinoma")
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.56, height: UIScreen.main.bounds.height * 0.16)
                .cornerRadius(12)
                .padding(5)
                .shadow(radius: 20)
            
            ZStack{
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6120170951, blue: 0.538652122, alpha: 1)))
                    .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.48)
                    .opacity(0.7)
                    .shadow(radius: 20)
                
                Text("Basal Cell Carcinoma usually takes form as a small, barely-opaque bump on skin that has been exposed to ultraviolet radiation for long amounts of time.  It may be scaly or smooth, and is typically a translucent white or pink.  Basal Cell Cerinoma is more prevalent in older age groups.  Prevention includes covering up, staying out of the sun, and utilizing tools like sun-screen.  It is typically removed with cryosurgery, curettage, radiation, and excision.")
                    .padding()
                
            }
            .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.48)
            
            Spacer()
                .frame(height: UIScreen.main.bounds.height * 0.1)
        }
    }
}

struct Two_Previews: PreviewProvider {
    static var previews: some View {
        Two()
    }
}

struct Three: View {
    var body: some View {
        VStack {
            VStack (spacing: 0) {
                Text("Dermatofibroma")
                    .fontWeight(.bold)
                    .font(.system(size: UIScreen.main.bounds.width * 0.11, weight: .bold, design: .rounded))
                    .foregroundColor(Color(.black).opacity(0.8))
                    .multilineTextAlignment(.center)
            }
            
            Image("Derma")
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.56, height: UIScreen.main.bounds.height * 0.16)
                .cornerRadius(12)
                .padding(5)
                .shadow(radius: 20)
            
            ZStack{
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6120170951, blue: 0.538652122, alpha: 1)))
                    .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.26)
                    .opacity(0.7)
                    .shadow(radius: 20)
                
                Text("Dermatofibromas are harmless pink or brown growths within the skin, usually on the lower legs.  Removal of these is not recommended, as their affect is cosmetic and appearance only. Their cause is unknown.")
                    .padding()
                
            }
            .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.26)
            
            Spacer()
                .frame(height: UIScreen.main.bounds.height * 0.1)
        }
    }
}

struct Three_Previews: PreviewProvider {
    static var previews: some View {
        Three()
    }
}

struct Four: View {
    var body: some View {
        VStack {
            VStack (spacing: 0) {
                Text("Melanoma")
                    .fontWeight(.bold)
                    .font(.system(size: UIScreen.main.bounds.width * 0.11, weight: .bold, design: .rounded))
                    .foregroundColor(Color(.black).opacity(0.8))
                    .multilineTextAlignment(.center)
            }
            
            Image("Melanoma")
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.56, height: UIScreen.main.bounds.height * 0.16)
                .cornerRadius(12)
                .padding(5)
                .shadow(radius: 20)
            
            ZStack{
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6120170951, blue: 0.538652122, alpha: 1)))
                    .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.50)
                    .opacity(0.7)
                    .shadow(radius: 20)
                
                Text("Melanoma is the most dangerous type of skin cancer.  It usually starts in moles, and then exapnds across the skin, becoming more rough and taking on a dark red or brown color.  Melanoma can appear anywhere on or in your body.  It's exact cause has yet to be determined, however, there is a link between high amounts of exposure to UV waves and Melanoma.  Treatment options include immunotherapy, radiation therapy, and chemotherapy.")
                    .padding()
                
            }
            .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.50)
            
            Spacer()
                .frame(height: UIScreen.main.bounds.height * 0.1)
        }
    }
}

struct Four_Previews: PreviewProvider {
    static var previews: some View {
        Four()
    }
}

struct Five: View {
    var body: some View {
        VStack {
            VStack (spacing: 0) {
                Text("Nevus")
                    .fontWeight(.bold)
                    .font(.system(size: UIScreen.main.bounds.width * 0.11, weight: .bold, design: .rounded))
                    .foregroundColor(Color(.black).opacity(0.8))
                    .multilineTextAlignment(.center)
            }
            
            Image("NEVUS")
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.56, height: UIScreen.main.bounds.height * 0.16)
                .cornerRadius(12)
                .padding(5)
                .shadow(radius: 20)
            
            ZStack{
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6120170951, blue: 0.538652122, alpha: 1)))
                    .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.39)
                    .opacity(0.7)
                    .shadow(radius: 20)
                
                Text("The term Nevus refers to something that is more commonly known as a birthmark.  Their believed cause is a sudden and localized increase in melanocytes as a baby develops in its mother's womb.  Nevuses are harmeless and only affect appearance. Because of this, removal of these physical defects is not recommended.")
                    .padding()
                
            }
            .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.39)
            
            Spacer()
                .frame(height: UIScreen.main.bounds.height * 0.1)
        }
    }
}

struct Five_Previews: PreviewProvider {
    static var previews: some View {
        Five()
    }
}

struct Six: View {
    var body: some View {
        VStack {
            VStack (spacing: 0) {
                Text("Seborrheic Keratosis")
                    .fontWeight(.bold)
                    .font(.system(size: UIScreen.main.bounds.width * 0.11, weight: .bold, design: .rounded))
                    .foregroundColor(Color(.black).opacity(0.8))
                    .multilineTextAlignment(.center)
            }
            
            Image("sebo")
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.56, height: UIScreen.main.bounds.height * 0.16)
                .cornerRadius(12)
                .padding(5)
                .shadow(radius: 20)
            
            ZStack{
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6120170951, blue: 0.538652122, alpha: 1)))
                    .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.29)
                    .opacity(0.7)
                    .shadow(radius: 20)
                
                Text("Seborrheic Keratoses are a form of non-cancerous skin growth that are commonly found in older people.  They are typically brown or black waxy protrusions but can also take on a tan color.  Treatment is not needed as they are harmless.")
                    .padding()
                
            }
            .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.29)
            
            Spacer()
                .frame(height: UIScreen.main.bounds.height * 0.1)
        }
    }
}

struct Six_Previews: PreviewProvider {
    static var previews: some View {
        Six()
    }
}

struct Seven: View {
    var body: some View {
        VStack {
            VStack (spacing: 0) {
                Text("Squamous Cell")
                    .fontWeight(.bold)
                    .font(.system(size: UIScreen.main.bounds.width * 0.11, weight: .bold, design: .rounded))
                    .foregroundColor(Color(.black).opacity(0.8))
                    .multilineTextAlignment(.center)
                
                Text("Carcinoma")
                    .fontWeight(.bold)
                    .font(.system(size: UIScreen.main.bounds.width * 0.11, weight: .bold, design: .rounded))
                    .foregroundColor(Color(.black).opacity(0.8))
                    .multilineTextAlignment(.center)
            }
            
            Image("squamows")
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.56, height: UIScreen.main.bounds.height * 0.16)
                .cornerRadius(12)
                .padding(5)
                .shadow(radius: 20)
            
            ZStack{
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6120170951, blue: 0.538652122, alpha: 1)))
                    .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.44)
                    .opacity(0.7)
                    .shadow(radius: 20)
                
                Text("Squamous Cell Carcinoma is one of the most common forms of skin cancer that can develop from the usually harmeless Actinic Keratosis.  Squamous Cell Carcinoma usually aktes form as red patch or bump, usually on your skin.  They are created from large amounts of exposure to UV rays.  Once diagnosed, removal procedures include laser removal, freezing, and curettage.")
                    .padding()
                
            }
            .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.44)
            
            Spacer()
                .frame(height: UIScreen.main.bounds.height * 0.1)
        }
    }
}

struct Seven_Previews: PreviewProvider {
    static var previews: some View {
        Seven()
    }
}

struct Eight: View {
    var body: some View {
        VStack {
            VStack (spacing: 0) {
                Text("Vascular Lesion")
                    .fontWeight(.bold)
                    .font(.system(size: UIScreen.main.bounds.width * 0.11, weight: .bold, design: .rounded))
                    .foregroundColor(Color(.black).opacity(0.8))
                    .multilineTextAlignment(.center)
            }
            
            Image("vascular_lesion")
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.56, height: UIScreen.main.bounds.height * 0.16)
                .cornerRadius(12)
                .padding(5)
                .shadow(radius: 20)
            
            ZStack {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6120170951, blue: 0.538652122, alpha: 1)))
                    .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.58)
                    .opacity(0.7)
                    .shadow(radius: 20)
                
                Text("Vascular Lesions are a form of birthmark.  They are found beneath the skin and appear to just be darker, more visible veins and blood.  There are three times of vascular lesion, Hemangiomas, Vascular Malformations, and Pyogenic Granulomas.  Hemangiomas can typially be ignored and are harmless.  Vascular Malformations are usually harmless as well, but diagnosis from a doctor and advice for future actipon is highly recommended.  Pyogenic Granulomas are benign vascular lesions that are created in rsponse to the injury of local tissue.")
                    .padding()
                
            }
            .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.58)
            
            Spacer()
                .frame(height: UIScreen.main.bounds.height * 0.1)
        }
    }
}

struct Eight_Previews: PreviewProvider {
    static var previews: some View {
        Eight()
    }
}
