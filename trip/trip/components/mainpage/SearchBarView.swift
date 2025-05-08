//
//  SearchBarView.swift
//  trip
//
//  Created by 김효환 on 5/8/25.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField("Search Flight, Hotels, etc...", text: $searchText)
                .tint(.primary)
        }
        .padding()
        .background(.customForeground)
        .clipShape(.capsule)
    }

}


#Preview {
    SearchBarPreviewWrapper()
}

struct SearchBarPreviewWrapper: View {
    @State private var seachData = ""

    var body: some View {
        SearchBarView(searchText: $seachData)
    }
}

