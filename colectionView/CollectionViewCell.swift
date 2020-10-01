

import UIKit

class CollectionViewCell: UICollectionViewCell{
   
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLBL: UILabel!
   
    override func awakeFromNib() {
    super.awakeFromNib()
       
//        let Nature1 = AllNameArr(names: "Nature1", imgNames: "img1")
//             allArray.append(Nature1)
//             let Nature2 = AllNameArr(names: "Nature2", imgNames: "img2")
//             allArray.append(Nature2)
//             let Nature3 = AllNameArr(names: "Nature3", imgNames: "img3")
//             allArray.append(Nature3)
//             let Nature4 = AllNameArr(names: "Nature4", imgNames: "img4")
//             allArray.append(Nature4)
//             let Nature5 = AllNameArr(names: "Nature5", imgNames: "img5")
//             allArray.append(Nature5)
//             let Nature6 = AllNameArr(names: "Nature6", imgNames: "img6")
//             allArray.append(Nature6)
//             let Nature7 = AllNameArr(names: "Nature7", imgNames: "img7")
//             allArray.append(Nature7)
//             let Nature8 = AllNameArr(names: "Nature8", imgNames: "img8")
//             allArray.append(Nature8)
//             let Nature9 = AllNameArr(names: "Nature9", imgNames: "img9")
//             allArray.append(Nature9)
//             let Nature10 = AllNameArr(names: "Nature10", imgNames: "img10")
//             allArray.append(Nature10)
//             let Nature11 = AllNameArr(names: "Nature11", imgNames: "img11")
//             allArray.append(Nature11)
//             let Nature12 = AllNameArr(names: "Nature2", imgNames: "img1")
//             allArray.append(Nature12)
//             let Nature13 = AllNameArr(names: "Nature3", imgNames: "img2")
//             allArray.append(Nature13)
//             let Nature14 = AllNameArr(names: "Nature4", imgNames: "img3")
//             allArray.append(Nature14)
//             let Nature15 = AllNameArr(names: "Nature5", imgNames: "img4")
//             allArray.append(Nature15)
//             let Nature16 = AllNameArr(names: "Nature6", imgNames: "img5")
//             allArray.append(Nature16)
//             let Nature17 = AllNameArr(names: "Nature7", imgNames: "img6")
//             allArray.append(Nature17)
//             let Nature18 = AllNameArr(names: "Nature8", imgNames: "img7")
//             allArray.append(Nature18)
//             let Nature19 = AllNameArr(names: "Nature9", imgNames: "img8")
//             allArray.append(Nature19)
//             let Nature20 = AllNameArr(names: "Nature10", imgNames: "img9")
//             allArray.append(Nature20)
//             let Nature21 = AllNameArr(names: "Nature11", imgNames: "img10")
//             allArray.append(Nature21)
//             let Nature22 = AllNameArr(names: "Nature2", imgNames: "img11")
//             allArray.append(Nature22)
             
   imgView.layer.cornerRadius = 50
        
    }
}
