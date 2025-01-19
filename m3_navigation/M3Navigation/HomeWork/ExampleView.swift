import SwiftUI

struct ExampleView: View {
    @State var showingSheet = false

    @Binding var tabSelection: Int
    
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
                    
                    Button(action: {
                        tabSelection = 2 // Меняем значение на 2 для перехода ко вкладке Login
                    }) {
                        Text("Перейти к Login 2")
                    }
                    .padding(8)
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

//struct ExampleView_Previews: PreviewProvider {
//    static var previews: some View {
//        ExampleView()
//    }
//}
