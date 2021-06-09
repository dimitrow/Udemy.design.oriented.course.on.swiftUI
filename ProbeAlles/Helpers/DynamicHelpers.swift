//
//  DynamicHelpers.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 09.06.21.
//

import Foundation
import SwiftUI

extension CGSize {
    
    static func +(lhs: Self, rhs: Self) -> CGSize {
        
        return CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
    }
}
