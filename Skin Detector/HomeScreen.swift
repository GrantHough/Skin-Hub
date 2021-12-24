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
    

    @State private var alertIsShowing = false  // not using
    @Published var signedIn = false
    @Published var realSignedIn = false
    @State var alertMessage = "Something went wrong."
    
    @State var errString: String?
    @Published var signInAlert = false
    
    @AppStorage("video1Completed") var video1Completed = false
    @AppStorage("video2Completed") var video2Completed = false
    @AppStorage("video3Completed") var video3Completed = false
    @AppStorage("video4Completed") var video4Completed = false
    @AppStorage("video5Completed") var video5Completed = false
    @AppStorage("video6Completed") var video6Completed = false
    @AppStorage("video7Completed") var video7Completed = false
    @AppStorage("video8Completed") var video8Completed = false
    @AppStorage("video9Completed") var video9Completed = false
    @AppStorage("video10Completed") var video10Completed = false
    @AppStorage("video11Completed") var video11Completed = false
    @AppStorage("video12Completed") var video12Completed = false
    @AppStorage("video13Completed") var video13Completed = false
    
    @AppStorage("marimbaVideo1Completed") var marimbaVideo1Completed = false
    @AppStorage("marimbaVideo2Completed") var marimbaVideo2Completed = false
    @AppStorage("marimbaVideo3Completed") var marimbaVideo3Completed = false
    
    @Published var resetAlert = false
    @Published var completed = false
    @Published var completed2 = false
    @Published var completed3 = false
    
    
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    func lessonsFinishing() {
        
        if video1Completed {
            lessonsFinished = 1
        }
        
    }
    
    func videoCompletion() {
        if video1Completed {
            lessonsFinished = 1
        }
        
        if video2Completed {
            lessonsFinished = 2
        }
        
        if video3Completed {
            lessonsFinished = 3
        }
    }
    
    
    @Published var lessonsFinished: CGFloat = 0

    func signIn(email: String, password: String) { //login
        auth.signIn(withEmail: email, password: password) { [weak self] (result, error) in
            
      
            
            
            DispatchQueue.main.async {
                self?.signedIn = true
            }
            
            if error != nil {
                self?.alertMessage = error?.localizedDescription ?? ""
                print("\(String(describing: error))")
                
                self?.errString = error?.localizedDescription
                self?.signInAlert = true
            }
          
            else {
             
                self?.signedIn = true
                print("Signed In")
                self?.realSignedIn = true
              
            }
         
            guard result != nil, error == nil else {
                self?.alertIsShowing = true
                return
            }
            
           
        }
    }
    
    
    func signUp(email: String, password: String) {
        auth.createUser(withEmail: email, password: password) { [weak self] result, error in
            
            if error != nil {
                self?.signInAlert = true
            }
            
            
            
            guard result != nil, error == nil else {
                self?.alertIsShowing = true
                return
            }
            
            DispatchQueue.main.async {
                self?.signedIn = true
                self?.realSignedIn = true
            }
            
        }
    }
    
    func resetPassword(email: String, resetCompletion: @escaping (Result<Bool,Error>) -> Void) {
        Auth.auth().sendPasswordReset(withEmail: email, completion: { (error) in
            
            if error != nil {
                self.resetAlert = true
            }
            
            if let error = error {
                resetCompletion(.failure(error))
            } else {
                resetCompletion(.success(true))
            }
        })
    }

    
    func signOut() {
        try? auth.signOut()
        
        self.realSignedIn = false
    }

}


struct HomeScreen: View {

    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        NavigationView {
            if viewModel.realSignedIn {
                Text("sdf")
            }
            else {
                TitleScreen()
            }
        }
        .onAppear {
            viewModel.realSignedIn = viewModel.isSignedIn
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
