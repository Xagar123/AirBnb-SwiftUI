//
//  ListingImageCarouselView.swift
//  AirBnb
//
//  Created by sagar on 24/11/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var images = [
        "images1",
        "images2",
        "images3",
        "images4",
    ]
    
    var body: some View {
        TabView {
            ForEach (images, id: \.self) { images in
                Image(images)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
