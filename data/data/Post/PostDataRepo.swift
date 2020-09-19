//
//  PostDataRepo.swift
//  data
//
//  Created by Mostafa Mazrouh on 9/17/20.
//  Copyright © 2020 Thiqah. All rights reserved.
//

import Foundation
import domain


public class PostDataRepo: PostDomainRepoInterface {
    
    let postRemoteDataSource: PostRemoteDataSourceInterface
    let postLocalDataSource: PostLocalDataSourceInterface?
    let coder: Coder
    
    public init(postRemoteDataSource: PostRemoteDataSourceInterface,
                postLocalDataSource: PostLocalDataSourceInterface? = nil,
                coder: Coder = Coder()) {
        
        self.postRemoteDataSource = postRemoteDataSource
        self.postLocalDataSource = postLocalDataSource
        
        self.coder = coder
    }
    
    
    public func getPosts(handler: @escaping ([PostEntity]) -> ()) {
        
        postRemoteDataSource.getPosts { (postModels) in
            
            var postEntities = [PostEntity]()
            for postModel in postModels {
                postEntities.append(postModel.dotPostEntity())
            }
            
            handler(postEntities)
        }
    }
}
