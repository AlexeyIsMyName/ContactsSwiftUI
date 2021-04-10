//
//  CustomFooterView.swift
//  ContactsSwiftUI
//
//  Created by ALEKSEY SUSLOV on 10.04.2021.
//

import SwiftUI

struct CustomHeaderView: View {
    
    let fullName: String
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)), Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))]),
                startPoint: .leading,
                endPoint: .trailing
            )
            
            HStack {
                Text(fullName)
                Spacer()
                Image(systemName: "person.circle")
            }
            .font(.headline)
            .padding(.horizontal)
        }
    }
}

struct CustomFooterView_Previews: PreviewProvider {
    static var previews: some View {
        CustomHeaderView(fullName: "Tim Cook")
    }
}
