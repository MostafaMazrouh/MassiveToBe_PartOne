//
//  PostDetailsView.swift
//  presentation
//
//  Created by Mostafa Mazrouh on 9/18/20.
//  Copyright © 2020 Thiqah. All rights reserved.
//

import SwiftUI

struct PostDetailsView: View {
    
    @ObservedObject public var postDetailsVM: PostDetailsVM
    
    public init(postDetailsVM: PostDetailsVM) {

        self.postDetailsVM = postDetailsVM
    }
    
    var body: some View {
        Text(postDetailsVM.details)
    }
}


