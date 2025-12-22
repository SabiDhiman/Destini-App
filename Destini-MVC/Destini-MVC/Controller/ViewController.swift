
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice1Button: UIButton!
    
    let storyBrain = StoryBrain()
    let storyNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.stories[storyNumber].title
        choice1Button.setTitle(storyBrain.stories[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyNumber].choice2, for: .normal)
    }
    
}

