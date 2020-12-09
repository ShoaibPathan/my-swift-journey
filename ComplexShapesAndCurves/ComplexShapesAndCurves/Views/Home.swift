//
//  Home.swift
//  ComplexShapesAndCurves
//
//  Created by Luan Nguyen on 09/12/2020.
//

import SwiftUI

struct Home: View {
    // MARK: - PROPERTIES
    var gradient1 = [Color("gradient2"),Color("gradient3"),Color("gradient4")]
    var gradient = [Color("gradient1"),Color("gradient2"),Color("gradient3"),Color("gradient4")]
    
    @StateObject var serverData = ServerViewModel()
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Text("ETHER")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                    
                    Text("STATUS")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    Text(serverData.isConnected ? "CONNECTED" : "DISCONNECTED")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.top,5)
                        .padding(.bottom,20)
                } //: VSTACK
                .frame(height: UIScreen.main.bounds.height / 3.3)
                
                // MARK: BUTTON
                ZStack(alignment: Alignment(horizontal: .center, vertical: .top), content: {
                    LinearGradient(gradient: .init(colors: gradient1), startPoint: .top, endPoint: .bottom)
                        .clipShape(CustomShape())
                    VStack {
                        Button(action: { serverData.isConnected.toggle() }, label: {
                            VStack(spacing: 15) {
                                Image(systemName: "power")
                                    .font(.system(size: 70))
                                    .foregroundColor(serverData.isConnected ? Color.red.opacity(0.6) : Color("power"))
                                
                                Text(serverData.isConnected ? "STOP" : "START")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            } //: VSTACK
                            .padding(50)
                            .background(
                                LinearGradient(gradient: .init(colors: [Color("pgradient1"),Color("pgradient2")]), startPoint: .top, endPoint: .bottom)
                            )
                            .clipShape(Circle())
                            .padding(15)
                            .background(Color("power1").opacity(0.7))
                            .clipShape(Circle())
                            .padding(15)
                            .background(Color("gradient2").opacity(0.7))
                            .clipShape(Circle())
                        })
                        .offset(y: -65)
                        .padding(.bottom,-65)

                        Spacer()
                        
                        Button(action: {
                            withAnimation{serverData.showSheet.toggle()}
                        }, label: {
                            //: MARK: - CARD VIEW
                            CardView(server: serverData.currentServer,subTitle: "")
                                .background(BlurView())
                                .clipShape(Capsule())
                                .padding()
                        })
                        
                        Spacer()
                    } //: VSTACK
                }) //: ZSTACK
                .padding(.top,60)
            } //: VSTACK
            BottomSheet(serverData: serverData)
        } //: ZSTACK
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background (
            ZStack {
                LinearGradient(gradient: .init(colors: gradient), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                Color.black.opacity(0.1)
                    .ignoresSafeArea(.all, edges: .top)
            } //: ZSTACK
        )
    }
}

// MARK: - PREVIEW
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
