//
//  MainViewController.swift
//  AnaimationApp
//
//  Created by Stanislav Demyanov on 12.07.2022.
//

import Spring

class MainViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var nextAnimationButton: SpringButton!
    
    // MARK: - Properties
    private var animation = Animation.getAnimation()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationLabel.text = animation.description
    }
    
    // MARK: - IBActions
    @IBAction func changeAnimation(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        springView.animation = animation.preset
        springView.delay = animation.delay
        springView.force = animation.force
        springView.curve = animation.curve
        springView.duration = animation.duration
        
        springView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}
