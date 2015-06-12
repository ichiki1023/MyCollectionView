import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
 
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // コレクションビュー作成
        collectionView.registerClass(UICollectionViewCell.self,forSupplementaryViewOfKind: UICollectionElementKindSectionHeader,withReuseIdentifier: "Cell")
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        view.addSubview(collectionView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /*
    Cellが選択された際に呼び出される
    */
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        println("Num: \(indexPath.row)")
        println("SectionNum:\(indexPath.section)")
        
    }
    
    /*
    Cellの総数を返す
    */
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    /*
    Cellに値を設定する
    */
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell:CustomCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CustomCell
        
        cell.cloth_image.image = UIImage(named: "cloth.jpg")
        return cell
    }
    
    /*func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        var reusableView : UICollectionReusableView? = nil
        
        // Create header
        /*if (kind == UICollectionElementKindSectionHeader) {
            // Create Header
            var headerView : PackCollectionSectionView = collectionView.dequeueReusableSupplementaryViewOfKind(UICollectionElementKindSectionHeader, withReuseIdentifier: kCellheaderReuse, forIndexPath: indexPath) as PackCollectionSectionView
            
            reusableView = headerView
        }*/
        println("実行")
        return reusableView!
    }*/
}

