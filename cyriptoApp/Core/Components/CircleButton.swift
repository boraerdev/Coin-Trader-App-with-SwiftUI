//
//  CircleButton.swift
//  cyriptoApp
//
//  Created by Bora Erdem on 16.07.2022.
//

import SwiftUI

struct CircleButton: View {
    let title: String
    @State var  goAnotherPage: Bool = false
    var body: some View {
        Image(systemName: title)
            .foregroundColor(.primary)
            .font(.headline)
            .frame(width: 50, height: 50)
            
            
            .onTapGesture(perform: {
                goAnotherPage.toggle()
            })
            .rotationEffect(Angle(degrees: goAnotherPage ?? false ? 180 : 0))
            
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleButton(title: "chevron.right")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
