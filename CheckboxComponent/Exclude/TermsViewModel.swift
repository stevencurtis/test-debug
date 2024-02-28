import Combine
import SwiftUI

final class TermsViewModel: ObservableObject {
    @Published var termsConditions: [TermsConditions] = [
        TermsConditions(label: "Terms One", isChecked: false),
        TermsConditions(label: "Terms Two", isChecked: false),
    ] {
        didSet {
            buttonState = termsConditions.allSatisfy({ $0.isChecked }) ? .enabled : .disabled
        }
    }
    @Published var buttonState: ButtonState = .disabled
    private var cancellables: Set<AnyCancellable> = []

    init() {
        //  could also do this, butwhy.gif
//        $termsConditions
//            .map { terms in
//                terms.allSatisfy { $0.isChecked }
//            }
//            .receive(on: RunLoop.main)
//            .map { allChecked in
//                allChecked ? ButtonState.enabled : ButtonState.disabled
//            }
//            .assign(to: \.buttonState, on: self)
//            .store(in: &cancellables)
    }
}


struct TermsConditions: Identifiable {
    var id = UUID()
    
    let label: String
    var isChecked: Bool
}
