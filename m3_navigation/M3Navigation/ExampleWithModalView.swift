import SwiftUI

struct ExampleWithModalView: View {
    @State var showingSheet = false
        
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                .padding(8)
                
                Button("Показать ошибку") {
                    showingSheet = true
                }
                .padding(8)
            }
            .navigationBarTitle(Text("Main"), displayMode: .large)
            

            
            .fullScreenCover(isPresented: $showingSheet) { 
                ExampleLoginView(showingSheet: $showingSheet, text: "Login")
            }
        }
    }
}

struct ExampleWithModalView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleWithModalView()
    }
}
