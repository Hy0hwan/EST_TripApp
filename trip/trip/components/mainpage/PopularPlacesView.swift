//
//  PopularPlacesView.swift
//  trip
//
//  Created by 김효환 on 5/9/25.
//

import SwiftUI

struct Place: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let distance: String
}

struct PopularPlacesView: View {
    let places: [Place] = [
        Place(imageName: "newyork", title: "New york city skyline", distance: "2.902 mi"),
        Place(imageName: "brooklyn", title: "Brooklyn bridge", distance: "2.128 mi"),
        Place(imageName: "newyork", title: "New york city skyline", distance: "2.902 mi"),
        Place(imageName: "brooklyn", title: "Brooklyn bridge", distance: "2.128 mi"),
        Place(imageName: "newyork", title: "New york city skyline", distance: "2.902 mi"),
        Place(imageName: "brooklyn", title: "Brooklyn bridge", distance: "2.128 mi"),
        Place(imageName: "newyork", title: "New york city skyline", distance: "2.902 mi"),
        Place(imageName: "brooklyn", title: "Brooklyn bridge", distance: "2.128 mi"),
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("Popular places")
                    .font(.title3)
                    .fontWeight(.semibold)
                Spacer()
                Text("View All")
                    .foregroundColor(.gray)
                    .font(.subheadline)
            }
            .padding(.horizontal)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(places) { place in
                        CardListView(place: place)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    PopularPlacesView()
}


struct CardListView: View {
    let place: Place
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(place.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 210, height: 230)
                .clipped()
                .cornerRadius(12)
            
            
            Text(place.title)
                .font(.headline)
                .foregroundColor(.black)
            
            Text("Distance to \(place.distance)")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(width: 200)
        .padding()
        .background(.white)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
}
