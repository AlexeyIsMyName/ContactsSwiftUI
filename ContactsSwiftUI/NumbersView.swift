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
                    Section(header: CustomFooterView(fullName: contact.fullName)) {
                        CustomListRow(systemSymbolName: "phone", text: contact.phoneNumber)
                        CustomListRow(systemSymbolName: "envelope", text: contact.email)
                    }
                }
            }
//            .listStyle(InsetGroupedListStyle()) // как вариант
            .navigationTitle("Numbers")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: Person.getContactList())
    }
}
