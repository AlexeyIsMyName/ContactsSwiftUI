//
//  StartTabView.swift
//  ContactsSwiftUI
//
//  Created by ALEKSEY SUSLOV on 09.04.2021.
//

import SwiftUI

struct StartTabView: View {
    
    private let contacts = DataManager.shared.getPersonsList()
    
    var body: some View {
        TabView {
            ContactsView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            NumbersView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone")
                        .accentColor(.green)
                    Text("Numbers")
                }
        }
    }
}

struct StartTabView_Previews: PreviewProvider {
    static var previews: some View {
        StartTabView()
    }
}
