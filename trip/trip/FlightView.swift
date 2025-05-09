//
//  FlightView.swift
//  trip
//
//  Created by 김효환 on 5/8/25.
//

import SwiftUI

struct FlightView: View {
    var body: some View {
        VStack {
            // MARK: - 해더
            
            // MARK: - 박스
            VStack {
                BoxBoxView(
                    systemImageName: "calendar",
                    title: "Passengers",
                    value: "2 Adults",
                    line: true
                )
                HStack {
                    BoxBoxView(
                        systemImageName: "car",
                        title: "Passengers",
                        value: "2 Adults",
                        line: false
                    )
                    
                    .frame(width: UIScreen.main.bounds.width / 2)// 전체 절반
                    Spacer()
                }
            }
            
            // MARK: - Recommended
            
            
        }
        .padding()
        .navigationTitle("Flights")
        //        .navigationBarTitleDisplayMode(.inline)
    }
}


#Preview {
    FlightView()
}
