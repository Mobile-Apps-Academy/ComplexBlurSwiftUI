//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//


import SwiftUI

struct BlurModifier<OverlayContent: View>: ViewModifier {
    @Binding var showOverlay: Bool
    @State var blurRadius: CGFloat = 10
    
    let content: () -> OverlayContent
    
    func body(content: Content) -> some View {
        Group {
            content
                .blur(radius: showOverlay ? blurRadius : 0)
                .animation(.easeInOut, value: showOverlay)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(
            self.content()
                .opacity(showOverlay ? 1 : 0)
                .animation(.easeIn(duration: 0.4), value: showOverlay)
        )
    }
}
