//
//  BlueTwoView.swift
//  SwiftUI-Navigation
//
//  Created by Md. Kamrul Hasan on 7/8/21.
//

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

struct BlueTwoView_Previews: PreviewProvider {
    static var previews: some View {
        BlueTwoView()
    }
}
