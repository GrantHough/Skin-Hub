//
//  Settings.swift
//  Skin Detector
//
//  Created by Grant Hough on 12/25/21.
//

import SwiftUI

struct Settings: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(1), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            VStack {
                
                Text("Settings")
                    .fontWeight(.bold)
                    .font(.system(size: UIScreen.main.bounds.width * 0.11, weight: .bold))
                    .foregroundColor(Color(.black).opacity(0.8))
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                Button(action: {
                    
                    viewModel.signOut()
                    
                }, label: {
                    Text("Sign Out")
                        .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.width * 0.13)
                        .background(Color(#colorLiteral(red: 0.9777018428, green: 0.5183423758, blue: 0.5577222705, alpha: 1)).opacity(0.8))
                        .foregroundColor(Color(.white).opacity(0.65))
                        .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 5)
                        .font(.system(size: 18, weight: .semibold))
                        .cornerRadius(10)
                        .padding(0.8)
                        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 15)
                })
                
            }
            
        }
        .ignoresSafeArea()
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
