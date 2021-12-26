
import SwiftUI

struct ImageDetector: View {
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    @ObservedObject var classifier: ImageClassifier
    
    var body: some View {
      
        VStack {
            Weird(classifier: ImageClassifier())
            Spacer()
                .frame(height: UIScreen.main.bounds.height * 0.2)
            
            //have to click lower
        }
        
    }
}

struct ImageDetector_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetector(classifier: ImageClassifier())
    }
}
