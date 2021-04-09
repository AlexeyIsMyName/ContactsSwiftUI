//
//  NumbersView.swift
//  ContactsSwiftUI
//
//  Created by ALEKSEY SUSLOV on 09.04.2021.
//

import SwiftUI

struct NumbersView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts, id: \.fullName) { contact in
                    Section(header: Text(contact.fullName)) {
                        Text("Phone: \(contact.phoneNumber)")
                        Text("Email: \(contact.email)")
                    }
                }
            }
            .navigationTitle("Numbers")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: DataManager.shared.getPersonsList())
    }
}
