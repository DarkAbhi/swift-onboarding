//
//  OnBoardingPageView.swift
//  Onboarding
//
//  Created by Abhishek  AN on 04/06/23.
//

import SwiftUI

struct OnBoardingPageView: View {
    
    var page:OnboardingPage
    
    var body: some View {
        VStack(spacing: 20){
            Image("\(page.image)")
                .resizable()
                .scaledToFit()
                .padding()
                .cornerRadius(30)
                .background(.gray.opacity(0.10))
                .cornerRadius(10)
                .padding()
            Text(page.title)
                .font(.title)
        }
    }
}

struct OnBoardingPageView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingPageView(page: OnboardingPage.samplePage)
    }
}
