import SwiftUI

struct ExampleView: View {
    @State var showingSheet = false
    
    init() {
        //UINavigationBar.appearance().backgroundColor = .gray
        
//        UINavigationBar.appearance().largeTitleTextAttributes = [
//            .foregroundColor: UIColor.darkGray,
//            .font : UIFont(name:"Papyrus", size: 40)!]
        
//        UINavigationBar.appearance().titleTextAttributes = [
//            .font : UIFont(name: "HelveticaNeue-Thin", size: 20)!]
    }
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                VStack {
                    Text("Hello, world!")
                        .padding(8)
                    
                    NavigationLink {
                        ExampleLoginView(showingSheet: $showingSheet, text: "Login")
                    } label: {
                        Text("Переход на Login")
                    }
                    Button("Модальный Login") {
                        showingSheet = true
                    }
                    .padding(8)
                    
//                    Button("Переход на Login 2") {
//                        showingSheet = true
//                    }
//                    .padding(8)
                }
                .navigationBarItems(
                    trailing:
                        Button("Модальный Login Up") {
                            showingSheet = true
                        }
                        .padding(geometry.size.width / 2)
                        .foregroundColor(.red)
                )
                
                //.navigationBarTitle(Text("Main"), displayMode: .large)
                //.navigationBarHidden(true)
                .sheet(isPresented: $showingSheet) {
                    ExampleLoginView(showingSheet: $showingSheet, text: "Login")
                }
            }
        }
    }
}

struct ExampleLoginView: View {
    @Binding var showingSheet: Bool
    let text: String
    var body: some View {
        VStack {
            Text(text)
            Button("Закрыть") {
                showingSheet = false
            }
        }
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
