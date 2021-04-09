//
//  Person.swift
//  HomeWork7
//
//  Created by ALEKSEY SUSLOV on 17.02.2021.
//

struct Person { 
    let firstName: String
    let secondName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        firstName + " " + secondName
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var persons = [Person]()
        
        let firstNames = DataManager.shared.firstNames.shuffled()
        let secondNames = DataManager.shared.secondNames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let quantityPersons = min(firstNames.count, secondNames.count, phoneNumbers.count, emails.count)
        
        for index in 0..<quantityPersons {
            let person = Person(
                firstName: firstNames[index],
                secondName: secondNames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
