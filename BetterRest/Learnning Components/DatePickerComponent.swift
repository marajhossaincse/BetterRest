//
//  Date.swift
//  BetterRest
//
//  Created by Maraj Hossain on 9/3/23.
//

import SwiftUI

struct DatePicker: View {
    @State private var wakeUp = Date.now

    var body: some View {
       Date
        DatePicker
            .labelsHidden()
    }
}

struct DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker()
    }
}
