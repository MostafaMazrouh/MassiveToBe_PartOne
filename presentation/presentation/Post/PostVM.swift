//
//  PostVM.swift
//  presentation
//
//  Created by Mostafa Mazrouh on 9/15/20.
//  Copyright © 2020 Thiqah. All rights reserved.
//

import Foundation
import domain

public class PostVM: ObservableObject {
    
    @Published var posts: [PostEntity] = []
    
    private var postInteractor: PostInteractorInterface
    
    public init(postInteractor: PostInteractorInterface) {
        self.postInteractor = postInteractor
    }
    
    func getPosts() {
        
        self.postInteractor.getPosts { [weak self] (postArray) in
            DispatchQueue.main.async {
                self?.posts = postArray
            }
        }
    }
}
