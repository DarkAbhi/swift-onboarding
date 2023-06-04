//
//  OnBoardingModel.swift
//  Onboarding
//
//  Created by Abhishek  AN on 04/06/23.
//

import Foundation

struct OnboardingPage:Identifiable,Equatable {
    let id = UUID()
    var title:String
    var image:String
    var tag: Int
    
    static var samplePage  = OnboardingPage(title: "First", image: "first_image", tag: 0)
    
    static var samplePages : [OnboardingPage] = [
        OnboardingPage(title: "First", image: "first_image", tag: 0),
        OnboardingPage(title: "Second", image: "second_image", tag: 1),
        OnboardingPage(title: "Third", image: "third_image", tag: 2)]
}
