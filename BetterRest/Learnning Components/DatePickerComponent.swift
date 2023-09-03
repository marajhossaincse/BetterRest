//
//  Date.swift
//  BetterRest
//
//  Created by Maraj Hossain on 9/3/23.
//

import SwiftUI

struct DatePickerComponent: View {
    @State private var wakeUp = Date.now

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            DatePicker(
                "Select a date",
                selection: $wakeUp,
                in: Date.now...,
                displayedComponents: .date
            )
//            .labelsHidden()

            Text(Date.now, format: .dateTime.day().month().year())

            Text(Date.now, format: .dateTime.hour().minute())

            Text(Date.now.formatted(date: .long, time: .shortened))
        }
        .padding()
    }

    func trivialExample() {
        let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)

        let hour = components.hour ?? 0
        let minute = components.minute ?? 0

//        var components = DateComponents()
//        components.hour = 8
//        components.minute = 0
//
//        let date = Calendar.current.date(from: components) ?? Date.now
    }

    func exampleDate() {
        let tomorrow = Date.now.addingTimeInterval(86400)
        let range = Date.now ... tomorrow
    }
}

struct DatePickerComponent_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerComponent()
    }
}
