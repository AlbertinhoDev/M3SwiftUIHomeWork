import SwiftUI

enum TabBarRoute {
    case loginView
    case exampleView
    case catalogView
}

struct TabBarRouter: Router {
  typealias Route = TabBarRoute
//  var usingNavigation = true
  
  func viewFor<T>(route: TabBarRoute, content: () -> T) -> AnyView where T : View {
    switch route {
        case let .loginView:
        return AnyView(TabView {
            content()
        })
        case .exampleView:
        return AnyView(TabView{
            content()
        })
        case .catalogView:
        return AnyView(TabView{
            content()
        })
        }
    }
}

