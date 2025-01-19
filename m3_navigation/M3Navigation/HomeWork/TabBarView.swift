import SwiftUI

struct TabBarView: View {

    var body: some View {
        TabView {
            ExampleView()
                .tabItem {
                    Label("Main", systemImage: "list.dash")
                }
            CatalogView()
                .tabItem {
                    Label("Catalog", systemImage: "note")
                }
            LoginView(text: "Login")
                .tabItem {
                    Label("Login", systemImage: "square.and.pencil")
                }
        }
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

