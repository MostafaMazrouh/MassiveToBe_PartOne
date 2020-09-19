//
//  PostDetailsDI.swift
//  MassiveToBe
//
//  Created by Mostafa Mazrouh on 9/18/20.
//  Copyright © 2020 Thiqah. All rights reserved.
//

import Foundation

import presentation
import domain
import data


class PostDetailsDI {
    
    let appEnvironment: AppEnvironment
    
    init(appEnvironment: AppEnvironment) {
        self.appEnvironment = appEnvironment
    }
    
    func postDetailsDependencies() -> PostDetailsVM{
        
        // Presentation
        let postDetailsVM = PostDetailsVM()
        
        return postDetailsVM
    }
}
