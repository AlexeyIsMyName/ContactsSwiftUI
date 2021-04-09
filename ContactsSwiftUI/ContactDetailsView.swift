//
//  ContactDetailsView.swift
//  ContactsSwiftUI
//
//  Created by ALEKSEY SUSLOV on 09.04.2021.
//

import SwiftUI

struct ContactDetailsView: View {
    
    let contact: Person
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 20) {
                Text("Phone: \(contact.phoneNumber)")
                Text("Email: \(contact.email)")
                Spacer()
            }
            Spacer()
        }
        .navigationTitle(contact.fullName)
        .padding()
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: DataManager.shared.getPersonsList().first!)
    }
}
