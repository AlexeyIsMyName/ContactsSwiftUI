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
        VStack(alignment: .leading, spacing: 20) {
            Text(contact.fullName)
                .font(.largeTitle)
            Text("Phone: \(contact.phoneNumber)")
            Text("Email: \(contact.email)")
            Spacer()
        }
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: DataManager.shared.getPersonsList().first!)
    }
}
