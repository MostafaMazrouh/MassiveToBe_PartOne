//
//  PostLocalDataSource.swift
//  data
//
//  Created by Mostafa Mazrouh on 9/17/20.
//  Copyright © 2020 Thiqah. All rights reserved.
//

import Foundation
import domain

public protocol PostLocalDataSourceInterface {
    func getCachedPosts(handler: @escaping ([PostEntity]) -> ())
}
