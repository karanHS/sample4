
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    
    var nameArr = [SignupModel]()
      
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
      nameArr = ModelManager.getInstance().getData()
             tableview.reloadData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.namelbl.text    = nameArr[indexPath.row].fname
        cell.secNamelbl.text = nameArr[indexPath.row].lname
        cell.numlbl.text     = nameArr[indexPath.row].phone
        cell.emaillbl.text   = nameArr[indexPath.row].email
        cell.updateBtn.tag   = indexPath.row
        cell.deleteBtn.tag   = indexPath.row
        cell.updateBtn.addTarget(self, action: #selector(onClickupdateBtn(_:)), for: .touchUpInside)
        cell.deleteBtn.addTarget(self, action: #selector(onClickdeleteBtn(_:)), for: .touchUpInside)
        return cell
    }
    
    @objc func onClickupdateBtn(_ sender: UIButton){
        let vc = storyboard?.instantiateViewController(identifier: "Detail") as! EditViewController
        vc.nameList = nameArr[sender.tag]
        vc.headerTitle = "Update"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func onClickdeleteBtn(_ sender: UIButton){
        let isDeleted = ModelManager.getInstance().deleteData(name: nameArr[sender.tag])
        nameArr.remove(at: sender.tag)
        tableview.reloadData()
        print("isDeleted :- \(isDeleted)")
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
//        return 120
//    }
}
