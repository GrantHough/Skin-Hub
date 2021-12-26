//
//  HomeScreen.swift
//  Skin Detector
//
//  Created by Grant Hough on 12/23/21.
//

import SwiftUI
import Firebase
import FirebaseAuth
import CoreML

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
    
    
    
    var body: some View {
        
        NavigationView {
            
            TabView{
                
                ImageDetector(classifier: ImageClassifier())
                    .tabItem {
                        Image(systemName:"camera")
                        Text("Scanner")
                    }
               
                InfoPage()
                    .tabItem {
                        Image(systemName:"book")
                        Text("Information")
                    }
                
                Settings()
                    .tabItem {
                        Image(systemName:"gear")
                        Text("Settings")
                    }
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
