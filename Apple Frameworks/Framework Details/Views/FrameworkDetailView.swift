//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Sharandeep Singh on 05/12/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @State var isShowingSafariView = false
    
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkView(framework: framework)
            
            Text(framework.description)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AppleFrameworkButton(buttonText: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://www.apple.com/")!)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: FrameworkDataModel.dummyFramework)
    }
}
