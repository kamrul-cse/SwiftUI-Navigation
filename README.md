# SwiftUI-Navigation

A very simple and straightforward implementation of SwiftUI Navigation Flow.

<img src="https://github.com/kamrul-cse/SwiftUI-Navigation/blob/main/Screenshots/result.png" width="20%" > <img src="https://github.com/kamrul-cse/SwiftUI-Navigation/blob/main/Screenshots/result_animation.gif" width="20%" > 

Application file:
```swift
import SwiftUI

@main
struct SwiftUI_NavigationApp: App {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.red]
        UINavigationBar.appearance().tintColor = .black
    }
    
    var body: some Scene {
        WindowGroup {
            RedOneView()
        }
    }
}
```

Main view file:

```swift
import SwiftUI

struct RedOneView: View {
    var body: some View {
        NavigationView {
            VStack {
                CircleNumberView(color: .red, number: 1)
                    .offset(y: -66)
                
                NavigationLink(
                    destination: BlueTwoView(),
                    label: {
                        Text("Go Next")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .padding(.horizontal, 40)
                            .padding(.vertical, 16)
                            .background(Color.blue)
                            .cornerRadius(8)
                    })
            }
            .navigationBarTitle("Red One", displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
```


Second view file:
```swift
import SwiftUI

struct BlueTwoView: View {
    var body: some View {
        VStack {
            CircleNumberView(color: .blue, number: 2)
                .offset(y: -66)
            
            NavigationLink(
                destination: SuccessView(),
                label: {
                    Text("Go Next")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .padding(.horizontal, 40)
                        .padding(.vertical, 16)
                        .background(Color.green)
                        .cornerRadius(8)
                })
        }
        .navigationTitle("Blue Two")
    }
}
```


Last view file:
```swift
import SwiftUI

struct SuccessView: View {
    var body: some View {
        VStack (spacing: 20) {
            Text("Congratulations!")
                .font(.system(size: 35))
                .foregroundColor(.green)
            
            Text("You've completed the Navaigation Journey implemented on SwiftUI.")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .font(.system(size: 20))
        }
        
        .navigationTitle("Success")
    }
}
```

Reused circle view file:
```swift
import SwiftUI

struct CircleNumberView: View {
    let color: Color
    let number: Int
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(color)
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold, design: .default))
        }
    }
}
```

## Build Environment

Xcode 12.5.1, Swift Version 5.4.2, Deployment Target 14.5

## Author
Md. Kamrul Hasan
mhgolap11@gmail.com

Copyright © mkhglab@gmail.com

## License

MKStepper is available under the MIT license. See the LICENSE file for more info.
