//
//  CustomListRow.swift
//  ContactsSwiftUI
//
//  Created by ALEKSEY SUSLOV on 10.04.2021.
//

import SwiftUI

struct CustomListRow: View {
    let systemSymbolName: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: systemSymbolName)
                .foregroundColor(.blue)
            Text("\(text)")
                .font(.subheadline)
        }
        .padding(.horizontal)
    }
}

struct CustomListRow_Previews: PreviewProvider {
    static var previews: some View {
        CustomListRow(systemSymbolName: "phone", text: "Text")
    }
}
