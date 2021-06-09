//
//  RunningTimer.swift
//  AnimationProject
//
//  Created by Gene Dimitrow on 08.06.21.
//

import Foundation
import Combine
import SwiftUI

class RunningTimer: ObservableObject {
    
    @Published var progress: CGFloat = 0.0
    @Published var isRunning: Bool = false
    
    var subscriptions = Set<AnyCancellable>()
    
    init(timeInterval: Double, step: CGFloat = 0.1) {
        
        Timer.publish(every: timeInterval, on: .main, in: .default)
            .autoconnect()
            .filter { _ in
                return self.isRunning
            }
            .filter { _ in
                return self.progress < 1
            }
            .sink { _ in
                
                if self.progress + step > 1 {
                    
                    self.progress = 1
                } else {
                    
                    self.progress += step
                }
            }
            .store(in: &subscriptions)
    }
}


