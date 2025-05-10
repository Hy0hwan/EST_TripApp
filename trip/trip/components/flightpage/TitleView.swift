//
//  TitleView.swift
//  trip
//
//  Created by 김효환 on 5/10/25.
//

import SwiftUI

struct TitleView: View {
    var title: String

    var body: some View {
        HStack() {
            Text(title)
                .font(.system(size: 38, weight: .bold))
                .foregroundColor(.primary)

            Spacer()
        }
    }
}

#Preview {
    TitleView(title: "Book Your Flight")
}

