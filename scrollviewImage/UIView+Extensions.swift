
import UIKit

public extension UIView {
    /**
     Captures view and subviews in an image
     */
    func snapshotViewHierarchy() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, UIScreen.main.scale)
        self.drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        let copied = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return copied
    }
}
