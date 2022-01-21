//
//  ContentView.swift
//  Calcula_Tu_Ibm
//
//  Created by Emilio Y Martinez on 20/01/22.
//

import SwiftUI

struct ContentView: View {
    @State var height : Double = 0
    @State var weight : Double = 0
    @State var calculate = false
    var body: some View {
        
            VStack{
                Text("Calculate Your BMI").font(.title).padding()
                Spacer()
                VStack(alignment:.leading){
                    HStack{
                        Text("Height").padding()
                        Text("\(String(format:"%.2f" ,height  )) mts")
                    }
                    Slider(value:$height,in: 0...2.50).padding().accentColor(.green)
                    HStack{
                        Text("Weight").padding()
                        Text("\(String(format:"%.0f",weight))kg")
                    }
                    Slider(value:$weight,in: 0...100).padding().accentColor(.green)
                    
                }.frame(maxWidth: .infinity,alignment: .leading)
                Spacer()
                Button(action:{calculate.toggle()},label:{
                    Text("Calculate").padding()
                })
                //                NavigationLink(destination: CalculadoVista(), isActive: $calculate){
                //                    EmptyView()
                //                }.sheet(item: , onDismiss: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>, content: <#T##(Identifiable) -> View#>)
            }.sheet(isPresented: $calculate){
                CalculadoVista(height:height,width: weight)
            }
            
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
