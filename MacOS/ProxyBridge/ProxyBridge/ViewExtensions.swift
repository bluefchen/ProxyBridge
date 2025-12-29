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
