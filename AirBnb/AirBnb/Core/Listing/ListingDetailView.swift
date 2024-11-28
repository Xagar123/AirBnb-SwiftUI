//
//  ListingDetailView.swift
//  AirBnb
//
//  Created by sagar on 24/11/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView()
                    .frame(height: 320)
                
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background(
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        )
                        .padding(.top)
                        .padding(32)
                })
            }
            
            VStack(alignment: .leading, spacing: 8, content: {
                 Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment: .leading) {
                    HStack {
                        HStack(spacing: 2) {
                            Image(systemName: "star.fill")
                            Text("4.86")
                            Text(" - ")
                            Text("28 reviews")
                                .underline()
                                .fontWeight(.semibold)
                        }
                        .foregroundStyle(.black)
                    }
                    Text("Miami Florida")
                }
                .font(.caption )
            })
            .padding(.leading )
            .frame(maxWidth: .infinity,alignment: .leading )
                 
            Divider()
            
            //Host info view
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Entire villa hosted by john smith")
                        .font(.headline)
                        .frame(width: 250,alignment: .leading)
                    
                    HStack(spacing: 2) {
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds  -")
                        Text("3 bats ")
                    }
                    .font(.caption )
                }
//                .padding(.leading )
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image("girl")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle()  )
                  
            }
            .padding()
            
            Divider()
            
            //Listing features
            VStack(alignment: .leading,spacing: 16) {
                ForEach(0..<2) { feature in
                    HStack(spacing: 12) {
                         Image(systemName: "medal")
                        VStack(alignment: .leading ) {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Superhost are experience,highly rated hosts who are commited to provide greate start for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            Divider()
            
            // bedrooms view
            VStack(alignment: .leading, spacing: 16) {
                  Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false  ) {
                    HStack(spacing: 16) {
                        ForEach(1..<5) { beadroom in
                            VStack(alignment: .leading) {
                                  Image(systemName: "bed.double")
                                
                                Text("bedroom \(beadroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray )
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            //listing aminities
            VStack(alignment: .leading,spacing: 16) {
                 Text("What this place offers")
                    .font(.headline)
                
                ForEach(0..<5) { feature in
                    HStack {
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        Text("Wifi")
                            .font(.footnote)
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll be")
                    .font(.headline )
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
            
            
        }
        .ignoresSafeArea()
        .padding(.bottom, 72)
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxes")
                            .font(.footnote)
                        
                        Text("Dec 20 - 25 ")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    
                    Button(action: {
                         
                    }, label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8 ))
                    })
                }
                .padding(.horizontal, 32  )
            }
            .background(.white)
        }
//
    }
}

#Preview {
    ListingDetailView()
}
