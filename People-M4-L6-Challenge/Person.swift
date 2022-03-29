//
//  Person.swift
//  People-M4-L6-Challenge
//
//  Created by Chris Percival on 3/28/22.
//

import Foundation


struct  Person : Identifiable{
    
    var id: Int? = nil
    var name: String = ""
    var address: String = ""
    var company: String = ""
    var yearsOfExperience: Int = 0

}

//class RecipeModel:ObservableObject{
//
//    @Published var recipes = [Recipe]()

class PersonModel :  ObservableObject {
    
    @Published var people = [Person]()
    @Published var showName:Bool = true
    @Published var showAddress:Bool = false
    @Published var showCompany:Bool = true
    @Published var showYearsOfExperience = true
    
    var p = Person()

    init(){
            p.id = 0
            p.name = "Inigo Montoya"
            p.address = "555 Youkilledmyfather Street"
            p.company = "CodeWithChris"
            p.yearsOfExperience = 35
        
            people.append(p)
        
            p.id = 1
            p.name = "Edna Mode"
            p.address = "123 Nocape Lane"
            p.company = "CodeWithChris"
            p.yearsOfExperience = 177
        
            people.append(p)
        
            p.id = 2
            p.name = "Travis Bickle"
            p.address = "99 YoutalkingtoMe Road"
            p.company = "CodeWithChris"
            p.yearsOfExperience = 99
        
            people.append(p)
        
            p.id = 3
            p.name = "Walter Sobchak"
            p.address = "58 Dude Place"
            p.company = "CodeWithChris"
            p.yearsOfExperience = 23
            
            people.append(p)

            p.id = 4
            p.name = "Julius Winnfield"
            p.address = "25 Ezekiel Ave"
            p.company = "CodeWithChris"
            p.yearsOfExperience = 17
            
            people.append(p)
//        print(people)
        
    }
}
