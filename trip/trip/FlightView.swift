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
                    systemImageName: "airplane",
                    title: "From",
                    value: "San Francisco",
                    line: true
                )
                
                BoxBoxView(
                    systemImageName: "calendar",
                    title: "Destination",
                    value: "New York",
                    line: true
                )

                
                HStack {
                    BoxBoxView(
                        systemImageName: "calendar",
                        title: "Passengers",
                        value: "2 Adults",
                        line: false
                    )
                    
                    .frame(width: UIScreen.main.bounds.width / 2)
                    Spacer()
                }
                
                HStack {
                    BoxBoxView(
                        systemImageName: "car",
                        title: "Departures",
                        value: "5 July 2020",
                        line: false
                    )
                    
                    BoxBoxView(
                        systemImageName: "car",
                        title: "Class",
                        value: "Business",
                        line: false
                    )
                
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
