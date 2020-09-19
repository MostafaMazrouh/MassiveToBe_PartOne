//
//  AppDI.swift
//  MassiveToBe
//
//  Created by Mostafa Mazrouh on 9/18/20.
//  Copyright © 2020 Thiqah. All rights reserved.
//

import Foundation

import presentation


class AppDI: AppDIInterface {
    
    static let shared = AppDI(appEnvironment: AppEnvironment())
    
    let appEnvironment: AppEnvironment
    
    init(appEnvironment: AppEnvironment) {
        self.appEnvironment = appEnvironment
    }
    
    func postDependencies() -> PostVM {
        
        let postDI: PostDI = PostDI(appEnvironment: appEnvironment)
        
        let postVM = postDI.postDependencies()
                
        return postVM
    }
    
    func postDetailsDependencies() -> PostDetailsVM {
        
        let postDetailsDI: PostDetailsDI = PostDetailsDI(appEnvironment: appEnvironment)
        
        let postDetailsVM = postDetailsDI.postDetailsDependencies()
                
        return postDetailsVM
    }
    
}
