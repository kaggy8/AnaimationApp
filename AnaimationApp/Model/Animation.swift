//
//  Animation.swift
//  AnaimationApp
//
//  Created by Stanislav Demyanov on 10.07.2022.
//
import Spring

struct Animation {
    let preset: [Spring.AnimationPreset]
    let curve: [Spring.AnimationCurve]
    let force: [Double]
    let duration: [Double]
    let delay: [Double]
    
    static func getAnimation() -> Animation {
        let preset = Spring.AnimationPreset.allCases
        let curve = Spring.AnimationCurve.allCases
        var numbers = [Double]()
        
        for _ in 1...100 {
            numbers.append(Double.random(in: 0.15...1))
        }
        
        return Animation(preset: preset,
                         curve: curve,
                         force: numbers.shuffled(),
                         duration: numbers.shuffled(),
                         delay: numbers.shuffled())
    }
}
