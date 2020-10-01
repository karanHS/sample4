

import UIKit
import Gemini

class AllNameArr {
    
    var names1 = String()
    var imgNames1 = String()
    
    init (names:String,imgNames:String) {
        
        self.names1 = names
        self.imgNames1 = imgNames
    }
}
var allArray = [AllNameArr]()

class TableViewCell1: UITableViewCell {
    
    @IBOutlet weak var collectionview: UICollectionView!

    
    //       func numberOfSections(in collectionView: UICollectionView) -> Int {
    //             return 2
    //         }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
       
        collectionview.reloadData()
        
        let Nature1 = AllNameArr(names: "Nature1", imgNames: "img1")
        allArray.append(Nature1)
        let Nature2 = AllNameArr(names: "Nature2", imgNames: "img2")
        allArray.append(Nature2)
        let Nature3 = AllNameArr(names: "Nature3", imgNames: "img3")
        allArray.append(Nature3)
        let Nature4 = AllNameArr(names: "Nature4", imgNames: "img4")
        allArray.append(Nature4)
        let Nature5 = AllNameArr(names: "Nature5", imgNames: "img5")
        allArray.append(Nature5)
        let Nature6 = AllNameArr(names: "Nature6", imgNames: "img6")
        allArray.append(Nature6)
        let Nature7 = AllNameArr(names: "Nature7", imgNames: "img7")
        allArray.append(Nature7)
        let Nature8 = AllNameArr(names: "Nature8", imgNames: "img8")
        allArray.append(Nature8)
        let Nature9 = AllNameArr(names: "Nature9", imgNames: "img9")
        allArray.append(Nature9)
        let Nature10 = AllNameArr(names: "Nature10", imgNames: "img10")
        allArray.append(Nature10)
        let Nature11 = AllNameArr(names: "Nature11", imgNames: "img11")
        allArray.append(Nature11)
        let Nature12 = AllNameArr(names: "Nature2", imgNames: "img1")
        allArray.append(Nature12)
        let Nature13 = AllNameArr(names: "Nature3", imgNames: "img2")
        allArray.append(Nature13)
        let Nature14 = AllNameArr(names: "Nature4", imgNames: "img3")
        allArray.append(Nature14)
        let Nature15 = AllNameArr(names: "Nature5", imgNames: "img4")
        allArray.append(Nature15)
        let Nature16 = AllNameArr(names: "Nature6", imgNames: "img5")
        allArray.append(Nature16)
        let Nature17 = AllNameArr(names: "Nature7", imgNames: "img6")
        allArray.append(Nature17)
        let Nature18 = AllNameArr(names: "Nature8", imgNames: "img7")
        allArray.append(Nature18)
        let Nature19 = AllNameArr(names: "Nature9", imgNames: "img8")
        allArray.append(Nature19)
        let Nature20 = AllNameArr(names: "Nature10", imgNames: "img9")
        allArray.append(Nature20)
        let Nature21 = AllNameArr(names: "Nature11", imgNames: "img10")
        allArray.append(Nature21)
        let Nature22 = AllNameArr(names: "Nature2", imgNames: "img11")
        allArray.append(Nature22)
    }
}
extension multiView: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
           return 10
       }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return allArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collecCell", for: indexPath) as! CollectionViewCell
           cell.imgView.image = UIImage(named:allArray[indexPath.row].names1)
           cell.nameLBL.text = allArray[indexPath.row].names1
           return cell
    }
}
