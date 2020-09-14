//
//  PostDomainRepoInterface.swift
//  domain
//
//  Created by Mostafa Mazrouh on 9/14/20.
//  Copyright © 2020 Thiqah. All rights reserved.
//

import Foundation


public protocol PostDomainRepoInterface {
    
    func getPosts(handler: @escaping ([PostEntity]) -> ())
}
