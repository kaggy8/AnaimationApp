//
//  Animation.swift
//  AnaimationApp
//
//  Created by Stanislav Demyanov on 10.07.2022.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        "Preset: \(preset.description)\n" +
        "Curve: \(curve.description)\n" +
        "Force: \(String(format: "%.2f", force))\n" +
        "Duration: \(String(format: "%.2f", duration))\n" +
        "Delay: \(String(format: "%.2f", delay))"
    }
    
    static func getAnimation() -> Animation {
        let data = DataManager.shared
        
        let preset = data.preset.randomElement()?.rawValue
        let curve = data.curve.randomElement()?.rawValue
        let force = data.force
        let duration = data.duration
        let delay = data.delay
        
        return Animation(preset: preset ?? "Нет анимации",
                         curve: curve ?? "Нет кривой анимации",
                         force: Double.random(in: force),
                         duration: Double.random(in: duration),
                         delay: Double.random(in: delay))
    }
}

