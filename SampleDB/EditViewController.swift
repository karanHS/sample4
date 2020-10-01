

import UIKit

class EditViewController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var secName: UITextField!
    
    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    var nameList : SignupModel?
    var headerTitle = ""
       
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if headerTitle != ""{
            self.title = "\(headerTitle) Student"
            firstName.text = nameList?.fname
            secName.text = nameList?.lname
            number.text = nameList?.phone
            email.text = nameList?.email
        }
        
    }
    @IBAction func saveBtn(_ sender: Any) {
        
        if headerTitle != ""{
                  let student = SignupModel(id: nameList!.id, fname: firstName.text!, lname: secName.text!,phone: number.text!,email: email.text!)
            let isUpdate = ModelManager.getInstance().updateData(name: student)
                  print("isUpdate :- \(isUpdate)")
              }
              else{
            let student = SignupModel(id: "",fname: firstName.text!, lname: secName.text!,phone: number.text!,email: email.text! )
            let isSave = ModelManager.getInstance().SaveData(DetailList: student)
                  print("isSave :- \(isSave)")
              }
       }
}
