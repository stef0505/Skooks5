//
//  ApiPrint.swift
//  Skooks5
//
//  Created by ste on 22/05/2020.
//  Copyright © 2020 ste. All rights reserved.
//

import SwiftUI

struct ScanneData {
    var status: Int
    var statusVerbose: String? = ""
    var code: String? = ""
}

struct ApiPrint: View {
    @State var barcodeValue = ""
        
        var body: some View {
            
            
                Text(barcodeValue)
            
        }
    }
struct ApiPrint_Previews: PreviewProvider {
    static var previews: some View {
        ApiPrint()
    }
}
