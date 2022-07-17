//
//  SearchTextField.swift
//  cyriptoApp
//
//  Created by Bora Erdem on 17.07.2022.
//

import SwiftUI

struct SearchTextField: View {
    @Binding var aranan: String
    var body: some View {
        TextField("Arayın...", text: $aranan)
            .padding(.leading)
            .frame(height:40)
            .background(Color.gray.opacity(0.15))
            .cornerRadius(5)
            .padding([.horizontal,.bottom])
    }
}

struct SearchTextField_Previews: PreviewProvider {
    static var previews: some View {
        SearchTextField(aranan: .constant(""))
    }
}
