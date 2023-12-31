//
//  FrameworkGridViewModel.swift
//  Apple-Framework
//
//  Created by Shreya Prasad on 19/10/23.
//

import SwiftUI
final class FrameworkGridViewModel : ObservableObject{
    var selectedFramework : Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
        @Published var isShowingDetailView = false
    let columns :[GridItem]=[GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    }

