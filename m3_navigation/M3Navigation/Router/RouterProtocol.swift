import SwiftUI

protocol Router {
    associatedtype Route
    func viewFor<T: View>(route: Route, content: () -> T) -> AnyView
}
