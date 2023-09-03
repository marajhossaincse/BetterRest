//
//  StepperComponent.swift
//  BetterRest
//
//  Created by Maraj Hossain on 9/3/23.
//

import SwiftUI

struct StepperComponent: View {
    @State private var sleepAmount = 8.0

    var body: some View {
        Stepper(
            "\(sleepAmount.formatted()) hours",
            value: $sleepAmount,
            in: 4 ... 12, step: 0.25)
    }
}

struct StepperComponent_Previews: PreviewProvider {
    static var previews: some View {
        StepperComponent()
    }
}
