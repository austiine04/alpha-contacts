import UIKit

class ViewController: UITableViewController {
    var contactRepository: ContactRepository?
    
    override func viewDidLoad() {
        contactRepository = ContactRepository()
        super.viewDidLoad()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (contactRepository?.all().count)!
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let contactCell = tableView.dequeueReusableCellWithIdentifier("ContactCell") as! ContactTableViewCell
        contactCell.contact = contactRepository?.all()[indexPath.row]
        return contactCell
    }
}

