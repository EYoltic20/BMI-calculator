//
//  CalculadoVista'.swift
//  Calcula_Tu_Ibm
//
//  Created by Emilio Y Martinez on 20/01/22.
//

import SwiftUI

struct CalculadoVista: View {
    var height: Double
    var width:Double
    var body: some View {
        if height == 0 || width == 0 {
            Text("You didnt  full all the fields ").font(.title).bold().foregroundColor(.green)
        }
        else{
        let result = width/(pow(height, 2))
        Text("\(String(format: "%.2f", result))").font(.title).bold().foregroundColor(.green)
        }
    }
}

struct CalculadoVista_Previews: PreviewProvider {
    static var previews: some View {
        CalculadoVista(height:10,width: 10)
    }
}
