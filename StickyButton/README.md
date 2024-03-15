# A Sticky Button in SwiftUI
## A simple example


Difficulty: **Beginner** | Easy | Normal | Challenging<br/>
This article has been developed using Xcode 15.0, and Swift 5.9

## Terminology:
SwiftUI: A simple way to build user interfaces Across Apple platforms

# In the past...
I remember when we would need to know the height of the keyboard and move our views appropriately.

If you're not using UIKit you are no longer using the paradigms that matched SwiftUI.

So let us go full SwiftUI!

# The SwiftUI solution
Since iOS15 you are able to use FocusState to maintain a binding to a `TextField` about whether it is focussed or not.  



```swift
import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @FocusState private var isTextFieldFocused: Bool
    var body: some View {
        VStack {
            ScrollView {
                TextField("Type something...", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                ForEach(0..<10) { _ in
                    Text("This is text content")
                        .padding()
                }
            }
            Spacer()
            Button(action: {
                isTextFieldFocused = false
            }) {
                Text("Sticky Button")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}
```

# Conclusion 
