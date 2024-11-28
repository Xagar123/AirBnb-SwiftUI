//
//  ExploreView.swift
//  AirBnb
//
//  Created by sagar on 09/11/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                // it will just load a portion of view which is visible
                LazyVStack(spacing: 32) {
                    SearchAndFilterBar()
                    ForEach(0 ... 10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
                
            }
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
                    .navigationBarBackButtonHidden()
            }
        }
        
    }
}

#Preview {
    ExploreView()
}
