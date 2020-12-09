//
//  BottomSheet.swift
//  ComplexShapesAndCurves
//
//  Created by Luan Nguyen on 09/12/2020.
//

import SwiftUI

struct BottomSheet: View {
    // MARK: - PROPERTIES
    @ObservedObject var serverData: ServerViewModel
    
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    
    @State var offset: CGFloat = 0
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 12) {
                Capsule()
                    .fill(Color.gray)
                    .frame(width: 60, height: 4)
                
                Text("SELECT SERVER")
                    .foregroundColor(.gray)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        ForEach(serverData.servers) { server in
                            CardView(server: server,subTitle: serverData.currentServer.name == server.name ? "CURRENTLY SELECTED" : "")
                                .contentShape(Rectangle())
                                .onTapGesture(perform: {
                                    serverData.currentServer = server
                                    withAnimation {
                                        serverData.showSheet.toggle()
                                    }
                                })
                        }
                    } //: VSTACK
                    .padding(.horizontal)
                    .padding(.bottom)
                    .padding(.bottom,edges?.bottom)
                }) //: SCROLLVIEW
                .frame(height: UIScreen.main.bounds.height / 3)
                .contentShape(Rectangle())
            } //: VSTACK
            .padding(.top)
            .background(BlurView().clipShape(CustomCorner(corners: [.topLeft,.topRight])))
            .offset(y: offset)
            //: BOTTOM SHEET REMOVE SWIPE GESTURE
            .gesture(DragGesture().onChanged(onChanged(value:)).onEnded(onEnded(value:)))
            .offset(y: serverData.showSheet ? 0 : UIScreen.main.bounds.height)
        } //: VSTACK
        .ignoresSafeArea()
        .background(
            Color.black.opacity(serverData.showSheet ? 0.3 : 0).ignoresSafeArea()
                .onTapGesture(perform: {
                    withAnimation{serverData.showSheet.toggle()}
                })
        )
    }
    
    // MARK: - SET DRAG GESTURE FOR CHANGE BOTTOM SHEET
    func onChanged(value: DragGesture.Value) {
        if value.translation.height > 0 {
            offset = value.translation.height
        }
    }
    
    // MARK: - SET ANIMATION FOR BOTTOM SHEET
    func onEnded(value: DragGesture.Value) {
        if value.translation.height > 0 {
            withAnimation(Animation.easeIn(duration: 0.2)) {
                //: CHECK HEIGHT
                let height = UIScreen.main.bounds.height / 3
                if value.translation.height > height / 1.5 {
                    serverData.showSheet.toggle()
                }
                offset = 0
            }
        }
    }
}
