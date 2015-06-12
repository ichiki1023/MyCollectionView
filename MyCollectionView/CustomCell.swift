import UIKit

class CustomCell: UICollectionViewCell {
    
    @IBOutlet var cloth_image: UIImageView!
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }

}