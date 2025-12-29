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

    @ViewBuilder
    func adaptiveFontWeight(_ weight: Font.Weight) -> some View {
        if #available(macOS 13.0, *) {
            self.fontWeight(weight)
        } else {
            self.font(.system(size: NSFont.systemFontSize, weight: weight))
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

    func adaptiveWindowResizability(_ mode: Any) -> some Scene {
        #if canImport(SwiftUI)
        if #available(macOS 13.0, *) {
            if let resizabilityMode = mode as? WindowResizability {
                return self.windowResizability(resizabilityMode)
            }
        }
        #endif
        return self
    }
}
