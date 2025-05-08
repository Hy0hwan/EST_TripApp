//
//  ProfileView.swift
//  trip
//
//  Created by 김효환 on 5/8/25.
//

import SwiftUI

struct ProfileView: View {
    var nickname = "Robert"
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Hi, \(nickname)")
                Text("Find Deals")
                    .font(.largeTitle)
                    .bold()
            }
            
            Spacer()
            
            ZStack {
                Image(systemName: "person.fill")
                    .padding(15)
                    .foregroundStyle(.white)
                    .background(.customPrimary.opacity(0.5))
                    .clipShape(.circle)
                
                Circle()
                    .fill(.green)
                    .frame(width: 8)
                    .overlay {
                        Circle()
                            .stroke(.white, lineWidth: 2)
                    }
                    .offset(x: 18, y: -18)
            }
        }
        .padding(.vertical)
    }
}


#Preview {
    ProfileView()
}
