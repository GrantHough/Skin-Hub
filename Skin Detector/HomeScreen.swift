//
//  HomeScreen.swift
//  Skin Detector
//
//  Created by Grant Hough on 12/23/21.
//

import SwiftUI
import Firebase
import FirebaseAuth


class AppViewModel: ObservableObject {
    
    let auth = Auth.auth()
    
    @Published var signedIn = false
    
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    func signIn(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { [weak self] result, error in
            guard result != nil, error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                self?.signedIn = true
                print("Signed In")
            }
            
        }
    }
    
    func signUp(email: String, password: String) {
        auth.createUser(withEmail: email, password: password) { [weak self] result, error in
            guard result != nil, error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                self?.signedIn = true
            }
            
        }
    }
    
    func signOut() {
        try? auth.signOut()
        self.signedIn = false
    }
    
    func resetPassword(email: String, resetCompletion: @escaping (Result<Bool,Error>) -> Void) {
        Auth.auth().sendPasswordReset(withEmail: email, completion: { (error) in
            
            if error != nil {
                
            }
            
            if let error = error {
                resetCompletion(.failure(error))
            } else {
                resetCompletion(.success(true))
            }
        })
    }
    
}

struct HomeScreen: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        NavigationView {
            
            VStack (spacing: 0) {
                
                Text("Variations of\nSkin Conditions")
                    .fontWeight(.bold)
                    .font(.system(size: UIScreen.main.bounds.width * 0.11, weight: .bold, design: .rounded))
                    .foregroundColor(Color(.black).opacity(0.8))
                    .multilineTextAlignment(.center)
                
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
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
