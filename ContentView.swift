//
//  ContentView.swift
//  Skooks5
//
//  Created by ste on 15/05/2020.
//  Copyright © 2020 ste. All rights reserved.
//

import SwiftUI

struct ScanData {
    public var name: String? = ""
    public var numb: String? = ""
    public var valid: Bool = false
}

struct ContentView: View {
    @State var showCarousel = false
    @State var showScan = false
    @State private var scanData = ScanData()
    
    var body: some View {
            
        NavigationView {
            VStack {
                
            
                Button(action: {
                    self.showScan.toggle()
                }, label: {
                    LoadingView()
                    
                })
                .sheet(isPresented: $showScan, content: {
                    //                    Text("Scannez vos ingrédients")
                    ModalScannerView()
                })
                
                Spacer()
                
                HStack {
                    Text(self.scanData.name ?? "")
                    Text(self.scanData.numb ?? "")
                }
            }
            .navigationBarTitle("Les Listes")
            .frame(alignment : .center)
            .navigationBarItems(trailing:
                HStack {
                    Button(action: {
    //                self.showOrderSheet = true
                }, label: {
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width: 32, height: 32, alignment: .center)
                    })
                    Button(action: {
                                    self.showCarousel = true
                                }, label: {
                                    Image(systemName: "info.circle")
                                        .resizable()
                                        .frame(width: 32, height: 32, alignment: .center)
                                    })
                    .sheet(isPresented: $showCarousel, content: {
                         //                    Text("Scannez vos ingrédients")
                          Carousel()
                    })
            }
            )
            
        }
            
           
            
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
