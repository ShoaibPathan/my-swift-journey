//
//  Home.swift
//  Load3DModel
//
//  Created by Luan Nguyen on 08/12/2020.
//

import SwiftUI
import SceneKit

struct Home: View {
    // MARK: - PROPERTIES
    @State var models = [
        Model(id: 0, name: "Earth", modelName: "Earth.usdz", details: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago. Earth's gravity interacts with other objects in space, especially the Sun and the Moon, which is Earth's only natural satellite. Earth orbits around the Sun in 365.256 solar days."),
        Model(id: 0, name: "Jupiter", modelName: "Jupiter.usdz", details: "Jupiter is the largest planet in our solar system at nearly 11 times the size of Earth and 317 times its mass. Jupiter, being the biggest planet, gets its name from the king of the ancient Roman gods."),
        Model(id: 0, name: "Mars", modelName: "Mars.usdz", details: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being only larger than Mercury. In English, Mars carries the name of the Roman god of war and is often referred to as the Red Planet."),
        Model(id: 0, name: "Pluto", modelName: "Pluto.usdz",details: "Pluto is an icy dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune. It was the first and the largest Kuiper belt object to be discovered. Pluto was discovered by Clyde Tombaugh in 1930 and declared to be the ninth planet from the Sun."),
        Model(id: 0, name: "Venus", modelName: "Venus.usdz",details: "Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the second-brightest natural object in the night sky after the Moon, Venus can cast shadows and can be, on rare occasion, visible to the naked eye in broad daylight."),
    ]

    @State var index = 0

    // MARK: - BODY
    var body: some View {
        VStack {
            // Going to use SceneKit Scene View....
            // default is first object ie: Earth...
            // Scene View Has a default Camera View...
            // if you nedd custom means add there...
            SceneView(scene: SCNScene(named: models[index].modelName), options: [.autoenablesDefaultLighting,.allowsCameraControl])
            // for user action...
            // setting custom frame...
                .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height / 2)
            ZStack {
                // Forward and backward buttons...
                HStack {
                    Button(action: {
                        withAnimation {
                            if index > 0 {
                                index -= 1
                            }
                        }
                    }, label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 35, weight: .bold))
                            .opacity(index == 0 ? 0.3 : 1)
                    })
                    .disabled(index == 0 ? true : false)
                    Spacer(minLength: 0)
                    Button(action: {
                        withAnimation {
                            if index < models.count {
                                index += 1
                            }
                        }
                    }, label: {
                        Image(systemName: "chevron.right")
                            .font(.system(size: 35, weight: .bold))
                            // Disabling button when no other data ....
                            .opacity(index == models.count - 1 ? 0.3 : 1)
                    })
                    .disabled(index == models.count - 1 ? true : false)
                } //: HSTACK
                Text(models[index].name)
                    .font(.system(size: 45, weight: .bold))
            } //: ZSTACK
            .foregroundColor(.black)
            .padding(.horizontal)
            .padding(.vertical,30)
            // Details....
            VStack(alignment: .leading, spacing: 15, content: {
                Text("About")
                    .font(.title2)
                    .fontWeight(.bold)
                Text(models[index].details)
            }) //: VSTACK
            .padding(.horizontal)
            Spacer(minLength: 0)
        } //: VSTACK
    }
}
