//
//  ContentView.swift
//  trip
//
//  Created by 김효환 on 5/8/25.
//

import SwiftUI


struct MainView: View {
    
    @State var seachData = ""
    
    var body: some View {
        
        NavigationStack {
            VStack {
                VStack(spacing: 16) {
                    Spacer()
                    // MARK: - 프로필
                    ProfileView()
                    // MARK: - 검색바
                    SearchBarView(searchText: $seachData)
                    Spacer()
                    // MARK: - 메뉴
                    MenuView()
                    Spacer()
                    // MARK: - 카드
                    PopularPlacesView()

                }
                .padding(.horizontal)

            }

        }

    }
}

#Preview {
    MainView()
}






