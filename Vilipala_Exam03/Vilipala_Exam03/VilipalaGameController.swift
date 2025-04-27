//
//  VilipalaGameController.swift
//  Vilipala_Exam03
//
//  Created by Sri Vidya Vilipala on 4/22/25.
//

import UIKit

class VilipalaGameController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var nameOL: UILabel!
    
    @IBOutlet weak var descriptionOL: UITextView!
    var SelectedGame: Game?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let Game = SelectedGame{
            self.title = Game.name
            nameOL.text = Game.name
            descriptionOL.text = Game.information
            imageViewOL.image = Game.imageName
            shakeMe(imageViewOL)
            
        }
    }
           func shakeMe(_ sender: Any) {
                var width = imageViewOL.frame.width
                width += 40
                var height = imageViewOL.frame.height
                height = height + 40
                var x  =  imageViewOL.frame.origin.x-20
                var y = imageViewOL.frame.origin.y-20
                var largeFrame = CGRect(x: x, y: y, width: width, height: height)
                UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
                            self.imageViewOL.frame = largeFrame
                        })
            }
    // Do any additional setup after loading the view.
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
