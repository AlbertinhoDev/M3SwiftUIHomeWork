import SwiftUI

struct TabBarViewWithRouter<TabBarRouter: Router>: View where TabBarRouter.Route == TabBarRoute {

    let router: TabBarRouter
    
    @State private var tabSelection = 1
    
    var body: some View {
        TabView (selection: $tabSelection) {
            router.viewFor(route: .exampleView) {
                ExampleView(tabSelection: $tabSelection)
            }
            .tabItem {
                Label("Main", systemImage: "list.dash")
            }
            .tag(1)
            router.viewFor(route: .loginView){
                LoginView(text: "Login 2")
            }
            .tabItem{
                Label("Login 2", systemImage: "square.and.pencil")
            }
            .tag(2)
            router.viewFor(route: .catalogView) {
                CatalogView()
            }
            .tabItem {
                Label("Catalog", systemImage: "note")
            }
        }
    }
}

struct TabBarViewWithRouter_Previews: PreviewProvider {
    static var previews: some View {
        TabBarViewWithRouter(router: TabBarRouter())
    }
}

