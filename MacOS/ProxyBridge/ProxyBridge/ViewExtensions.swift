import SwiftUI

extension View {
    @ViewBuilder
    func adaptiveFormStyle() -> some View {
        if #available(macOS 13.0, *) {
            self.formStyle(.grouped)
        } else {
            self
        }
    }
}

extension Scene {
    @SceneBuilder
    func adaptiveDefaultPosition(_ position: UnitPoint) -> some Scene {
        if #available(macOS 13.0, *) {
            self.defaultPosition(position)
        } else {
            self
        }
    }
}
