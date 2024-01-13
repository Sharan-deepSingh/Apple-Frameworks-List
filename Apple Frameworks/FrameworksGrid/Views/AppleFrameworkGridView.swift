//
//  ContentView.swift
//  Apple Frameworks
//
//  Created by Sharandeep Singh on 03/12/23.
//

import SwiftUI

struct AppleFrameworksGridView: View {
    
    @StateObject var viewModel = AppleFrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(FrameworkDataModel.frameworks, id: \.self) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework)) {
                        FrameworkView(framework: framework)
                    }
                    .listRowBackground(Color.black)
                }
            }
            .navigationTitle("🍎 Apple Frameworks")
        }
        .accentColor(Color(.label))
    }
}

struct AppleFrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        AppleFrameworksGridView()
    }
}
