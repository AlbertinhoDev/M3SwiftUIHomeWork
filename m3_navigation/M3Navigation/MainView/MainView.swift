import SwiftUI

struct MainView<MainRouter: Router>: View where MainRouter.Route == MainRoute {
    let router: MainRouter
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                    .padding()
                .navigationTitle("Main")
                
                router.viewFor(route: .loginView(data: "Login")) {
                    Text("переход на логин")
                }
            }
        }
    }
}

//struct LoginView: View {
//  let text: String
//  var body: some View {
//    Text(text)
//  }
//}
//
//struct CatalogView: View {
//    var body: some View {
//      Text("Catalog")
//    }
//}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(router: MainRouter())
    }
}
