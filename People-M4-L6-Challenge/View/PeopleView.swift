//
//  TabView.swift
//  People-M4-L6-Challenge
//
//  Created by Chris Percival on 3/28/22.
//

import SwiftUI

struct PeopleView: View {

//    @ObservedObject var model = RecipeModel()

    @EnvironmentObject var model:PersonModel
    
    var body: some View {
        VStack {
            ForEach(model.people) { p in
                if(model.showName){
                    Text("Name: " + p.name)}
                if(model.showAddress){
                    Text("Address: " + p.address)
                }
                if(model.showCompany){
                    Text("Company: " + p.company)
                }
                if(model.showYearsOfExperience){
                    Text("Years of experience: " + String(p.yearsOfExperience))
                }
            }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView().environmentObject(PersonModel())
    }
}
