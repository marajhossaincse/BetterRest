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
        DatePicker(
            "Select a date",
            selection: $wakeUp,
            displayedComponents: .date
        )
//            .labelsHidden()
    }
}

struct DatePickerComponent_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerComponent()
    }
}
