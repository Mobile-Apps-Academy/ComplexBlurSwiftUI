//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//


import SwiftUI

struct BlueDemoView: View {
    @State var isBlur: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("Mobile \nApps \nAcademy")
                    .font(.system(size: 80))
                    .bold()
                    .foregroundStyle(.yellow)
                    .onTapGesture {
                        self.isBlur.toggle()
                    }
            }
            .modifier(BlurModifier(showOverlay: $isBlur) {
                VStack(spacing: 10) {
                    Color
                        .black
                        .opacity(0.01)
                }
                .ignoresSafeArea()
                .onTapGesture { isBlur.toggle() }
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        
    }
}

#Preview {
    BlueDemoView()
}

