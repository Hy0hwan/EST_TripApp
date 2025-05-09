import SwiftUI

struct FlightSegment {
    let departureTime: String
    let departureCode: String
    let duration: String
    let arrivalTime: String
    let arrivalCode: String
}

struct FlightTicketView: View {
    let airline: String
    let price: String
    let segments: [FlightSegment]

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Label(airline, systemImage: "airplane")
                    .font(.headline)
                Spacer()
                Text(price)
                    .font(.headline)
            }

            ForEach(segments.indices, id: \.self) { index in
                let segment = segments[index]
                HStack {
                    VStack(alignment: .leading) {
                        Text(segment.departureTime)
                            .font(.headline)
                        Text(segment.departureCode)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }

                    Spacer()

                    VStack {
                        Image(systemName: "airplane")
                        Text(segment.duration)
                            .font(.footnote)
                            .foregroundColor(.gray)
                        Image(systemName: "mappin.and.ellipse")
                    }

                    Spacer()

                    VStack(alignment: .trailing) {
                        Text(segment.arrivalTime)
                            .font(.headline)
                        Text(segment.arrivalCode)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 5)
        .padding()
    }
}

#Preview {
    FlightTicketView(
        airline: "Airways",
        price: "$234",
        segments: [
            FlightSegment(departureTime: "13.45", departureCode: "SFO", duration: "5h 30m", arrivalTime: "22.15", arrivalCode: "NYC"),
            FlightSegment(departureTime: "09.00", departureCode: "NFC", duration: "6h 10m", arrivalTime: "12.10", arrivalCode: "SFO")
        ]
    )
}

