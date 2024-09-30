//
//  SettingsView.swift
//  DynamicCounter
//
//  Created by Ibrahim Mohsin on 9/30/24.
//

import SwiftUI

struct SettingsView: View {
    @Binding var maxCount: Int
    var body: some View {
        Stepper("Max Count: \(maxCount)", value: $maxCount)
            .font(.title)
            .padding()
            .background(Color.white, in: .rect(cornerRadius: 10))
            .padding()
    }
}

#Preview {
    SettingsView(maxCount: .constant(5))
}
