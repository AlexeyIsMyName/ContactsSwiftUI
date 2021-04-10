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
        List {
            Section(header: PhoneHeaderView()) {
                Text("\(contact.phoneNumber)")
            }
            
            Section(header: EmailHeaderView()) {
                Text("\(contact.email)")
            }
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle(contact.fullName)
        .navigationBarItems(trailing: Image(systemName: "person.circle"))
    }
}

struct PhoneHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "phone")
            Text("Phone number")
        }
    }
}

struct EmailHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "envelope")
            Text("email")
        }
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Person.getContactList().first!)
    }
}
