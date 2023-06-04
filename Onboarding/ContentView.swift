//
//  ContentView.swift
//  Onboarding
//
//  Created by Abhishek  AN on 04/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var pageIndex = 0
    private let pages:[OnboardingPage] = OnboardingPage.samplePages
    private let dotApperance = UIPageControl.appearance()
    
    var body: some View {
        TabView(selection: $pageIndex){
            ForEach(pages) { page in
                VStack {
                    Spacer()
                    OnBoardingPageView(page: page)
                    Spacer()
                    if page == pages.last {
                        Button("Sign Up",action: goToZero)
                            .buttonStyle(.bordered)
                    } else {
                        Button("Next",action: incrementPage)
                    }
                    Spacer()
                }.tag(page.tag)
            }
        }
        .animation(.easeInOut, value: pageIndex)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        .onAppear {
            dotApperance.currentPageIndicatorTintColor = .black
            dotApperance.pageIndicatorTintColor = .gray
        }
    }
    
    func incrementPage() {
        pageIndex+=1
    }
    
    func goToZero() {
        pageIndex = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
