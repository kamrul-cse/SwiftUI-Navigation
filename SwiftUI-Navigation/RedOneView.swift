//
//  RedOneView.swift
//  SwiftUI-Navigation
//
//  Created by Md. Kamrul Hasan on 7/8/21.
//

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RedOneView()
    }
}
