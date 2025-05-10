//
//  ToggleBtnView.swift
//  trip
//
//  Created by 김효환 on 5/10/25.
//

import SwiftUI

struct ToggleBtnView: View {
    var body: some View {
        HStack(spacing: 12) {
            HStack() {
                ZStack {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 24, height: 24)
                    Image(systemName: "arrow.right")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.white)
                }
                
                Text("One Way")
                    .foregroundColor(Color.blue)
                    .font(.system(size: 16, weight: .medium))
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 8)
            .background(Color.gray.opacity(0.1))
            .clipShape(Capsule())

            HStack(spacing: 8) {
                ZStack {
                    Circle()
                        .fill(Color.gray.opacity(0.2))
                        .frame(width: 24, height: 24)
                    Image(systemName: "arrow.triangle.2.circlepath")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(.gray)
                }
                
                Text("Round trip")
                    .foregroundColor(.gray)
                    .font(.system(size: 16, weight: .medium))
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 8)
            .background(Color.gray.opacity(0.1))
            .clipShape(Capsule())
            
            Spacer()
        }
    }
}

#Preview {
    ToggleBtnView()
}
