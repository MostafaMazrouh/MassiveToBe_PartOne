//
//  PostDI.swift
//  MassiveToBe
//
//  Created by Mostafa Mazrouh on 9/18/20.
//  Copyright © 2020 Thiqah. All rights reserved.
//

import Foundation

import presentation
import domain
import data


class PostDI {
    
    let appEnvironment: AppEnvironment
    
    init(appEnvironment: AppEnvironment) {
        self.appEnvironment = appEnvironment
    }
    
    func postDependencies() -> PostVM {
        
        // Data Layer
        let baseURL = appEnvironment.baseURL
        
        // Post Data Source
        let postRemoteDataSource = PostRemoteDataSource(urlString: baseURL)
        
        // Post Data Repo
        let postDataRepo = PostDataRepo(postRemoteDataSource: postRemoteDataSource)
        
        // Domain Layer
        let postInteractor = PostInteractor(postDomainRepo: postDataRepo)
        
        // Presentation
        let postVM = PostVM(postInteractor: postInteractor)
        
        return postVM
    }
}
