//
//  CreateAccount.swift
//  Skin Detector
//
//  Created by Grant Hough on 12/23/21.
//

import SwiftUI
import Firebase

struct CreateAccount: View {
    
    @State var email = ""
    @State var password = ""
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                
                    VStack {
                        
                        Text("Let's Get Started")
                            .fontWeight(.bold)
                            .font(.system(size: UIScreen.main.bounds.width * 0.11, weight: .bold, design: .rounded))
                            .foregroundColor(Color(.black).opacity(0.8))
                        
                        Image("MakeshiftLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.width * 0.4)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.35), radius: 10, x: 0, y: 6)
                            .padding()
                        
                        TextField("Email Address", text: $email)
                            .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.04)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .padding()
                            .padding(.top, 3)
                            .foregroundColor(Color(.white).opacity(0.65))
                            .background(Color(#colorLiteral(red: 0.9777018428, green: 0.5183423758, blue: 0.5577222705, alpha: 1)).opacity(0.3))
                            .cornerRadius(16)
                            .shadow(color: Color.black.opacity(0.54), radius: 10, x: 0, y: 12)
                        
                        SecureField("Password", text: $password)
                            .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.04)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .padding()
                            .foregroundColor(Color(.white).opacity(0.65))
                            .background(Color(#colorLiteral(red: 0.9777018428, green: 0.5183423758, blue: 0.5577222705, alpha: 1)).opacity(0.3))
                            .cornerRadius(16)
                            .shadow(color: Color.black.opacity(0.54), radius: 10, x: 0, y: 12)
                        
                        Button(action: {
                            
                            guard !email.isEmpty, !password.isEmpty else {
                                
                                return
                                
                            }
                            
                            viewModel.signUp(email: email, password: password)
                            
                        }, label: {
                            Text("Sign Up")
                                .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.width * 0.13)
                                .background(Color(#colorLiteral(red: 0.9777018428, green: 0.5183423758, blue: 0.5577222705, alpha: 1)).opacity(0.8))
                                .foregroundColor(Color(.white).opacity(0.65))
                                .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 5)
                                .font(.system(size: 18, weight: .semibold))
                                .cornerRadius(10)
                                .padding(0.8)
                                .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 15)
                        }) //add alerts later
                        
                        Spacer()
                            .frame(height: UIScreen.main.bounds.height * 0.25)
                    }
                }
            }
        }
    }
}

struct CreateAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccount()
    }
}
