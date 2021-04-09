//
//  ContactsView.swift
//  ContactsSwiftUI
//
//  Created by ALEKSEY SUSLOV on 09.04.2021.
//

import SwiftUI

struct ContactsView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts, id: \.fullName) { contact in
                Text("\(contact.fullName)")
            }
            .navigationBarTitle("Contacts")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contacts: DataManager.shared.getPersonsList())
    }
}
