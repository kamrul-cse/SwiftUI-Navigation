//
//  SuccessView.swift
//  SwiftUI-Navigation
//
//  Created by Md. Kamrul Hasan on 7/8/21.
//

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

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
