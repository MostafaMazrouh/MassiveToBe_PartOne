//
//  AppDIInterface.swift
//  presentation
//
//  Created by Mostafa Mazrouh on 9/18/20.
//  Copyright © 2020 Thiqah. All rights reserved.
//

import Foundation


public protocol AppDIInterface {
    
    func postDependencies() -> PostVM
    
    func postDetailsDependencies() -> PostDetailsVM
}
