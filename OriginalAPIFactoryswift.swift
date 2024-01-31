import Foundation
import NetworkClient

struct APIFactory {
    static func makeDefault() -> NetworkClient {
        #if DEBUG
        if ProcessInfo.processInfo.arguments.contains("-UITests") {
            return MockNetworkClient()
        }
        #endif
        return MainNetworkClient()
    }
}
