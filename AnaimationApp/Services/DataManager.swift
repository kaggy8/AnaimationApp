//
//  DataManager.swift
//  AnaimationApp
//
//  Created by Stanislav Demyanov on 15.07.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let preset = Spring.AnimationPreset.allCases
    let curve = Spring.AnimationCurve.allCases
    let force = 0.15...1
    let duration = 0.15...1
    let delay = 0.15...1
    
    private init() {}
}

