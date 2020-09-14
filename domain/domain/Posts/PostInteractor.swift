//
//  PostInteractor.swift
//  domain
//
//  Created by Mostafa Mazrouh on 9/14/20.
//  Copyright © 2020 Thiqah. All rights reserved.
//

import Foundation


public protocol PostInteractorInterface {
        
    func getPosts(handler: @escaping ([PostEntity]) -> ())
    
}

public class PostInteractor: PostInteractorInterface {
        
    let postDomainRepo: PostDomainRepoInterface
    
    public init(postDomainRepo: PostDomainRepoInterface) {
        
        self.postDomainRepo = postDomainRepo
    }
    
    
    public func getPosts(handler: @escaping ([PostEntity]) -> ()) {
        
        postDomainRepo.getPosts { (PostDomainModelArray) in
            handler(PostDomainModelArray)
        }
    }
}






