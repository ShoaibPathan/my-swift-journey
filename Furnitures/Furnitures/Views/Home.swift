//
//  Home.swift
//  Furnitures
//
//  Created by Luan Nguyen on 08/12/2020.
//

import SwiftUI

struct Home: View {
    // MARK: - PROPERTIES
    @State var size = "Medium"
    @State var currentTab = "All"
    
    @State var items = [
        Item(title: "Stylish Table Lamp", price: "$20.00", subTitle: "We have amazing quality Lamp wide range.", image: "lamp"),
        Item(title: "Modern Chair", price: "$60.00", subTitle: "New style of tables for your home and office.", image: "chair"),
        Item(title: "Wodden Stool", price: "$35.00", subTitle: "Amazing Stylish in multiple Most selling item of this.", image: "stool"),
    ]

    @GestureState var isDragging = false
    
    //: ADDING CART ITEMS
    @State var cart: [Item] = []
    
    // MARK: - BODY
    var body: some View {
        VStack {
            HStack {
                Button(action: {}) {
                    Image(systemName: "line.horizontal.3.decrease")
                        .font(.title)
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                }

                .overlay (
                    //: CART COUNT
                    Text("\(cart.count)")
                        .font(.caption)
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .frame(width: 20, height: 20)
                        .background(Color("tab"))
                        .clipShape(Circle())
                        .offset(x: 15, y: -22)
                        // DISABLING IF NO ITEMS
                        .opacity(cart.isEmpty ? 0 : 1)
                )
            } //: HSTACK
            .padding(.horizontal)
            .padding(.top)
            .padding(.bottom,10)
            
            ScrollView {
                VStack {
                    HStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Furniture in \nUnique Style")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                            
                            Text("WE have wide range of furnitures")
                                .font(.caption)
                                .foregroundColor(.gray)
                                .fontWeight(.bold)
                        }
                        
                        Spacer(minLength: 15)
                        
                        //: MENU BUTTON
                        Menu(content: {
                            Button(action: {size = "Small"}) {
                                Text("Small")
                            }
                            
                            Button(action: {size = "Medium"}) {
                                Text("Medium")
                            }
                            
                            Button(action: {size = "Large"}) {
                                Text("Large")
                            }
                        }) {
                            Label(title: {
                                Text(size)
                                    .foregroundColor(.white)
                            }) {
                                Image(systemName: "slider.vertical.3")
                                    .foregroundColor(.white)
                            }
                            .padding(.vertical,10)
                            .padding(.horizontal)
                            .background(Color.black)
                            .clipShape(Capsule())
                        }
                    } //: HSTACK
                    .padding()
                    
                    HStack(spacing: 0) {
                        ForEach(tabs,id: \.self) { tab in
                            Button(action: { currentTab = tab }) {
                                Text(tab)
                                    .fontWeight(.bold)
                                    .foregroundColor(currentTab == tab ? .black : .gray)
                            }
                            if tab != tabs.last {
                                Spacer(minLength: 0)
                            }
                        }
                    } //: HSTACK
                    .padding()
                    
                    ForEach(items.indices) { index in
                        
                        //: CARD VIEW
                        ZStack {
                            Color("tab")
                                .cornerRadius(20)
                            
                            Color("Color")
                                .cornerRadius(20)
                                .padding(.trailing,65)
                            
                            //: BUTTON
                            HStack {
                                Spacer()
                                
                                Button(action: {}) {
                                    Image(systemName: "suit.heart")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        //: DEFAULT FRAME
                                        .frame(width: 65)
                                }
                                
                                Button(action: {
                                    addCart(index: index)
                                }) {
                                    //: CHANGING CART IMAGE
                                    Image(systemName: checkCart(index: index) ? "cart.badge.minus" :  "cart.badge.plus")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        //: DEFAULT FRAME
                                        .frame(width: 65)
                                }
                            }
                            
                            CardView(item: items[index])
                                //: DRAG GESTURE
                                .offset(x: items[index].offset)
                                .gesture(
                                    DragGesture()
                                        .updating($isDragging, body: { (value, state, _) in
                                            //: SO WE CAN VALIDATE FOR CORRECT DRAG
                                            state = true
                                            onChanged(value: value, index: index)
                                        })
                                        .onEnded({ (value) in onEnd(value: value, index: index) })
                                )
                        }
                        .padding(.horizontal)
                        .padding(.top)
                    }
                }
                .padding(.bottom,100)
            }
        }
    }
    
    //: CHECKING CARD AND ADDING ITEM
    func checkCart(index: Int) -> Bool {
        return cart.contains { (item) -> Bool in
            return item.id == items[index].id
        }
    }
    
    //: ADD ITEM TO CART
    func addCart(index: Int) {
        if checkCart(index: index) {
            cart.removeAll { (item) -> Bool in
                return item.id == items[index].id
            }
        }
        else {
            cart.append(items[index])
        }

        //: CLOSING AFTER ADDED
        withAnimation {
            items[index].offset = 0
        }
    }
    
    //: CARD CHANGE WHEN DRAG GESTURE
    func onChanged(value: DragGesture.Value, index: Int) {
        if value.translation.width < 0 && isDragging{
            items[index].offset = value.translation.width
        }
    }
    
    // onEnd is not working properly...
    // may be its bug...
    // to avoid this we using update property on Drag Gesture...
    func onEnd(value: DragGesture.Value, index: Int) {
        withAnimation {
            //: 65 + 65 = 130
            if -value.translation.width >= 100 {
                items[index].offset = -130
            }
            else {
                items[index].offset = 0
            }
        }
    }
}

//: TAB ITEMS
var tabs = ["Tables", "Chairs", "Lamps", "All"]
