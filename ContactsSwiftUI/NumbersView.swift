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
                    Section(header: CustomHeaderView(fullName: contact.fullName)) {
                        CustomListRow(systemSymbolName: "phone", text: contact.phoneNumber)
                        CustomListRow(systemSymbolName: "envelope", text: contact.email)
                    }
                    .listRowInsets(EdgeInsets(
                        top: 0,
                        leading: 0,
                        bottom: 0,
                        trailing: 0
                    ))
                }
            }
            .navigationTitle("Numbers")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: Person.getContactList())
    }
}
