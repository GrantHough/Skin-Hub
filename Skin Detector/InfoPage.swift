//
//  InfoPage.swift
//  Skin Detector
//
//  Created by Grant Hough on 12/25/21.
//

import SwiftUI

struct InfoPage: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(1), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            VStack (spacing: 0) {
                
                Text("Variations of")
                    .fontWeight(.bold)
                    .font(.system(size: UIScreen.main.bounds.width * 0.11, weight: .bold))
                    .foregroundColor(Color(.black).opacity(0.8))
                    .multilineTextAlignment(.center)
                
                Text("Skin Conditions")
                    .fontWeight(.bold)
                    .font(.system(size: UIScreen.main.bounds.width * 0.11, weight: .bold))
                    .foregroundColor(Color(.black).opacity(0.8))
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                HStack (alignment: .center) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (alignment: .center) {
                            ActinicKeratosis()
                                .padding(.leading)
                            BasalCellCarcinoma()
                            Dermatofibroma()
                            Melanoma()
                            Nevus()
                            SeborrheicKeratosis()
                            SquamousCellCarcinoma()
                            VascularLesion()
                        }
                        
                    }
                    .cornerRadius(20)
                    .frame(height: UIScreen.main.bounds.height * 0.3)
                    .ignoresSafeArea()
                    .background(Color.black.opacity(0.1))
                    .shadow(radius: 20)
                }
                
                .cornerRadius(20)
                .padding()
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.04)
                
            }
        }
        .ignoresSafeArea()
    }
}
struct InfoPage_Previews: PreviewProvider {
    static var previews: some View {
        InfoPage()
    }
}
