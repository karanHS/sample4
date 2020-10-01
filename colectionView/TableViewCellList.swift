

import UIKit

class TableViewCellList: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         allArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as!  CollectionViewCell2
        //          cell.namelbl.text = allArray[indexPath.row].names1
                  cell.imgView.image = UIImage(named:allArray[indexPath.row].names1)
                return cell
    }
    
    
    var allArray = [AllNameArr] ()
    
    @IBOutlet weak var collectionView: UICollectionView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        
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
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
