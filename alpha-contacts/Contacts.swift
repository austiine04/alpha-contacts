import Foundation

class Contact {
    var firstName: String
    var lastName: String
    var phoneNumber: String
    var dateAdded: NSDate
    
    init(firstName: String, lastName: String, phoneNumber: String, date: NSDate){
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.dateAdded = date
    }
}