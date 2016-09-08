import Foundation

class ContactRepository {
    var contacts: [Contact]
    init() {
        contacts = [Contact]()
        contacts.append(Contact(firstName: "John", lastName: "Doe", phoneNumber: "0474296609",date: NSDate()))
        contacts.append(Contact(firstName: "Sarah", lastName: "Mei", phoneNumber: "0475296609",date: NSDate()))
        contacts.append(Contact(firstName: "Foo", lastName: "Bar", phoneNumber: "0474216609", date: NSDate()))
    }
    
    func all() -> [Contact] {
        return self.contacts
    }
    
    func size() -> Int {
        return self.contacts.count
    }
}
