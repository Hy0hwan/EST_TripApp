//
//  BoxBoxView.swift
//  trip
//
//  Created by 김효환 on 5/9/25.
//

import SwiftUI

struct BoxBoxView: View {
    let systemImageName: String
    let title: String
    let value: String
    let line: Bool

    var body: some View {
        HStack {
            VStack {
                Image(systemName: systemImageName)

                if line {
                    Rectangle()
                        .frame(width: 1, height: 24)
                }
            }

            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .font(.caption)
                    .foregroundColor(.gray)
                Text(value)
                    .font(.headline)
                    .foregroundColor(.primary)
            }

            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 5)
    }
}

#Preview {
    VStack(spacing: 20) {
        BoxBoxView(
            systemImageName: "airplane",
            title: "Passengers",
            value: "2 Adults",
            line: true 
        )
    }
}
