//
//  CircleNumberView.swift
//  SwiftUI-Navigation
//
//  Created by Md. Kamrul Hasan on 7/8/21.
//

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

struct CircleNumberView_Previews: PreviewProvider {
    static var previews: some View {
        CircleNumberView(color: .black, number: 5)
    }
}
