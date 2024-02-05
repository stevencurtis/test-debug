//
//  UserView.swift
//  FormatSortCode
//
//  Created by Steven Curtis on 05/02/2024.
//

import SwiftUI

final class UserViewModel: ObservableObject {
    @Published var sortCode: String = ""
}


import SwiftUI

struct UserView: View {
    @ObservedObject private var viewModel: UserViewModel

    init(viewModel: UserViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        TextField("sort code", text: $viewModel.sortCode)
        .onChange(of: viewModel.sortCode) { initial, val in
            let filtered = val.filter {$0.isNumber}
            viewModel.sortCode = formatSortCode(filtered)
        }
        .keyboardType(.numberPad)
    }
    
    private func formatSortCode(_ sortCode: String) -> String {
         let maxCharacters = 6
         var formatted = ""
         for (index, char) in sortCode.enumerated() {
             if index > 0, index % 2 == 0, index < maxCharacters - 1 {
                 formatted += "-"
             }
             formatted.append(char)
         }
         return String(formatted.prefix(maxCharacters))
     }
}


#Preview {
    UserView(viewModel: UserViewModel())
}
