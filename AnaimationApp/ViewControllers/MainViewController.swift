//
//  MainViewController.swift
//  AnaimationApp
//
//  Created by Stanislav Demyanov on 12.07.2022.
//

import Spring

class MainViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var nextAnimationButton: SpringButton!
    
    // MARK: - Properties
    private let animation = Animation.getAnimation()
    private var nextAnimation: Spring.AnimationPreset? = nil
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springView.animation = "pop"
        presetLabel.text = "Preset: \(springView.animation.description)"
        
        setUI()
    }
    
    // MARK: - IBActions
    @IBAction func changeAnimation(_ sender: Any) {
        setUI()
    }
    
    // MARK: - Private methods
    private func setUI() {
        if let preset = nextAnimation {
            presetLabel.text = "Preset: \(preset)"
            springView.animation = preset.rawValue
            nextAnimation = preset
        }
        
        if let curve = animation.curve.randomElement() {
            curveLabel.text = "Curve: \(curve)"
            springView.curve = curve.rawValue
        }
        
        if let delay = animation.delays.randomElement() {
            delayLabel.text = "Delay: \(String(format: "%.2f", delay))"
        }ß
        
        if let force = animation.forces.randomElement() {
            forceLabel.text = "Force: \(String(format: "%.2f", force))"
        }
        
        if let duration = animation.durations.randomElement() {
            durationLabel.text = "Duration: \(String(format: "%.2f", duration))"
        }
        
        springView.animate()
        nextAnimation = animation.preset.randomElement()
        
        if let nextAnimation = nextAnimation {
            nextAnimationButton.setTitle("Run \(nextAnimation)", for: .normal)
        }
    }
}
