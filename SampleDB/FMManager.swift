
import Foundation
import  UIKit

var shareInstance = ModelManager()

class ModelManager {
    
    var database : FMDatabase? = nil
    
    static func getInstance() -> ModelManager{
        if shareInstance.database == nil{
            shareInstance.database = FMDatabase(path: Util.share.getPath(dbName: "Signup.db"))
        }
        return shareInstance
    }
    
    func SaveData(DetailList : SignupModel) -> Bool{
        shareInstance.database?.open()
        let isSave = shareInstance.database?.executeUpdate("INSERT INTO Signup (fname,lname,phone,email) VALUES(?,?,?,?)", withArgumentsIn: [DetailList.fname, DetailList.lname,DetailList.phone,DetailList.email])
        shareInstance.database?.close()
        return isSave!
    }
    
    func getData() -> [SignupModel]{
        shareInstance.database?.open()
        let resultSet : FMResultSet! = try! shareInstance.database?.executeQuery("SELECT * FROM Signup", values: nil)
        var allData = [SignupModel]()
        
        if resultSet != nil{
            while resultSet.next() {
                let list = SignupModel(id: resultSet.string(forColumn: "id")!, fname: resultSet.string(forColumn: "fname")!, lname: resultSet.string(forColumn: "lname")!, phone: resultSet.string(forColumn: "phone")!, email: resultSet.string(forColumn: "email")!)
                allData.append(list)
            }
        }
        shareInstance.database?.close()
        return allData
    }

    func updateData(name: SignupModel) -> Bool{
        shareInstance.database?.open()
        
        let isUpdated = shareInstance.database?.executeUpdate("UPDATE Signup SET fname=?, lname=?, phone=?, email=? WHERE id=? ", withArgumentsIn: [name.fname,name.lname,name.phone,name.email,name.id])
        
        shareInstance.database?.close()
        return isUpdated!
    }
    
    func deleteData(name: SignupModel) -> Bool{
        shareInstance.database?.open()
        let isDeleted = (shareInstance.database?.executeUpdate("DELETE FROM Signup WHERE fname=?", withArgumentsIn: [name.fname]))
        shareInstance.database?.close()
        return isDeleted!
    }
}
