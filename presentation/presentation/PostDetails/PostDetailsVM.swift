//
//  PostDetailsVM.swift
//  presentation
//
//  Created by Mostafa Mazrouh on 9/18/20.
//  Copyright © 2020 Thiqah. All rights reserved.
//

import Foundation


public class PostDetailsVM: ObservableObject {
    
    @Published var details = "My details"
    
    // So we can initialize it from the app layer
    public init() { }
}
