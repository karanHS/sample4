
import UIKit

class cvLayout: UICollectionViewLayout {
    
    let CELL_HEIGHT = 300
    let CELL_WIDTH = 300
    let STATUS_BAR = UIApplication.shared.statusBarFrame.height
    
    var cellAttrsDictionary = Dictionary<IndexPath, UICollectionViewLayoutAttributes>()
    
    var contentSize = CGSize.zero
    override var collectionViewContentSize: CGSize {
        return self.contentSize
    }
    override func prepare() {
        
        // Cycle through each section of the data source.
        if (collectionView?.numberOfSections)! > 0 {
            for section in 0...collectionView!.numberOfSections-1 {
                
                // Cycle through each item in the section.
                if (collectionView?.numberOfItems(inSection: section))! > 0 {
                    for item in 0...collectionView!.numberOfItems(inSection: section)-1 {
                        
                        // Build the UICollectionVieLayoutAttributes for the cell.
                        let cellIndex = NSIndexPath.init(item: item, section: section)
                        
                        let xPos = Double(item) * 300
                        let yPos = Double(section) * 300

                            let cellAttributes = UICollectionViewLayoutAttributes(forCellWith: cellIndex as IndexPath)
                        cellAttributes.frame = CGRect(x: xPos, y: yPos, width: 300, height: 300)
                        
                            if section == 0 && item == 0 {
                                cellAttributes.zIndex = 4
                            } else if section == 0 {
                                cellAttributes.zIndex = 3
                            } else if item == 0 {
                                cellAttributes.zIndex = 2
                            } else {
                                cellAttributes.zIndex = 1
                            }
                            // Save the attributes.
                            cellAttrsDictionary[cellIndex as IndexPath] = cellAttributes
                        }
                    }
                }
            }
            let contentWidth = Double(collectionView!.numberOfItems(inSection: 0)) * 300
            let contentHeight = Double(collectionView!.numberOfSections) * 300
            self.contentSize = CGSize(width: contentWidth, height: contentHeight)
        }
        override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
            // Create an array to hold all elements found in our current view.
            var attributesInRect = [UICollectionViewLayoutAttributes]()

            // Check each element to see if it should be returned.
            for cellAttributes in cellAttrsDictionary.values {
                if rect.intersects(cellAttributes.frame) {
                    attributesInRect.append(cellAttributes)
                }
            }
            // Return list of elements.
            return attributesInRect
        }
        override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
            return cellAttrsDictionary[indexPath]!
        }

        override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
            return true
        }
    
}
