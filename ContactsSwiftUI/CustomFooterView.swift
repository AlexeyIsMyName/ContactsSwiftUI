//
//  CustomFooterView.swift
//  ContactsSwiftUI
//
//  Created by ALEKSEY SUSLOV on 10.04.2021.
//

import SwiftUI

struct CustomFooterView: View {
    
    let fullName: String
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)), Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))]),
                startPoint: .leading,
                endPoint: .trailing
            )
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.accentColor)
            )
            
            HStack {
                Text(fullName)
                    .font(.headline)
                Spacer()
                Image(systemName: "person.circle")
            }
            .foregroundColor(.black)
            .padding(.horizontal)
        }
        
    }
}

struct CustomFooterView_Previews: PreviewProvider {
    static var previews: some View {
        CustomFooterView(fullName: "Tim Cook")
    }
}
