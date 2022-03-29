//
//  PreferencesView.swift
//  People-M4-L6-Challenge
//
//  Created by Chris Percival on 3/28/22.
//

import SwiftUI

struct PreferencesView: View {
        
    
    @EnvironmentObject var model:PersonModel
    
    var body: some View {
        

        VStack {
            Text("Display Preferences")
                .font(.largeTitle)
            Toggle("Show name:", isOn: $model.showName)
            Toggle("Show address:", isOn: $model.showAddress)
            Toggle("Show company:", isOn: $model.showCompany)
            Toggle("Show YOE:", isOn: $model.showYearsOfExperience)

        }.padding()
    }
}

struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView().environmentObject(PersonModel())
    }
}
