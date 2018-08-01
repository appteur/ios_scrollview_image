
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func save(_ sender: Any) {
        guard let snapshot = contentView.snapshotViewHierarchy() else {
            return
        }
        
        // save photo
        UIImageWriteToSavedPhotosAlbum(snapshot, nil, nil, nil)
    }
    

}
