//
//  MenuView.swift
//  trip
//
//  Created by 김효환 on 5/8/25.
//

import SwiftUI

struct MenuView: View {
        
    var body: some View {
        
        HStack {
            Button {
            } label: {
                NavigationLink {
                    FlightView()
                } label: {
                    IconItemView(iconName: "airplane", label: "Flight", backgroundColor: Color.blue)
                }
                
            }
            Spacer()

            IconItemView(iconName: "building.2", label: "Hotels", backgroundColor: Color.orange)
            Spacer()

            IconItemView(iconName: "car.fill", label: "Taxi", backgroundColor: Color.yellow)
            Spacer()

            IconItemView(iconName: "location", label: "More", backgroundColor: Color.cyan)
                
            }
            
    }
}


#Preview {
    MenuView()
}


struct IconItemView: View {
    let iconName: String
    let label: String
    let backgroundColor: Color

    var body: some View {
        VStack {
            Image(systemName: iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(backgroundColor)
                        .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 3)
                )
            Text(label)
                .font(.footnote)
                .foregroundStyle(.customBackground)
        }
    }
}

