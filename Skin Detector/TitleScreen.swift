//
//  TitleScreen.swift
//  Skin Detector
//
//  Created by Grant Hough on 12/23/21.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct TitleScreen: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        NavigationView {
            
            if viewModel.signedIn {
                HomeScreen()
            }
            
            else {
                VStack{
                    
                    Text("Skin Hub")
                        .fontWeight(.bold)
                        .padding(2)
                        .font(.system(size: UIScreen.main.bounds.width * 0.2, weight: .bold))
                        .foregroundColor(Color(.black).opacity(0.8))
                    
                    Image("MakeshiftLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.width * 0.5)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.35), radius: 10, x: 0, y: 6)
                        .padding()
                    
                    NavigationLink (destination: CreateAccount()) {
                        Text("Get Started")
                            .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.width * 0.13)
                            .background(Color(#colorLiteral(red: 0.9777018428, green: 0.5183423758, blue: 0.5577222705, alpha: 1)).opacity(0.8))
                            .foregroundColor(Color(.white).opacity(0.65))
                            .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 5)
                            .font(.system(size: 18, weight: .semibold))
                            .cornerRadius(10)
                            .padding(0.8)
                            .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 15)
                    }
                    
                    NavigationLink (destination: SignIn()) {
                        Text("Already have an account?")
                            .font(.system(size: UIScreen.main.bounds.width * 0.036))
                            .bold()
                            .foregroundColor(Color(.black).opacity(0.8))
                    }
                    
                    Spacer()
                        .frame(height: UIScreen.main.bounds.width * 0.35)
                }
            }
            
        }
        .onAppear {
            viewModel.signedIn = viewModel.isSignedIn
        }
    }
}

struct TitleScreen_Previews: PreviewProvider {
    static var previews: some View {
        TitleScreen()
    }
}
