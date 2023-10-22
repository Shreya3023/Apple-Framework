//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Shreya Prasad on 15/10/23.
//

import SwiftUI

struct FrameworkGridView: View {
   @StateObject var viewModel = FrameworkGridViewModel()
   
    var body: some View {
            NavigationView {
                ScrollView{
                    LazyVGrid(columns : viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }.navigationTitle("FRAMEWORK 🍎")
                        .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                            FramworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView:$viewModel.isShowingDetailView)
                        })
            }
        }
    }
}
#Preview {
    FrameworkGridView()
}
