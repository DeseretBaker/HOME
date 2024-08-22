//
//  BaseProjects.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/10/24.
//

import Foundation
import SwiftUI
import SwiftData

// Define enums at the top level
enum ProjectType: String {
    case kitchen
    case garage
    case bathroom
    case storage
    case livingRoom
    case bedroom
    case office
    case playroom
    case laundryRoom
    case diningRoom
    
    var imageName: String {
        switch self {
        case .kitchen: return "kitchen"
        case .diningRoom: return "diningroom"
        case .livingRoom: return "livingroom"
        case .bathroom: return "bathroom"
        case .bedroom: return "bedroom"
        case .storage: return "storage"
        case .office: return "office"
        case .playroom: return "playroom"
        case .laundryRoom: return "laundryroom"
        case .garage: return "garage"
        }
    }
    var weight: Int {
        switch self {
        case .kitchen: return 1
        case .diningRoom: return 2
        case .livingRoom: return 3
        case .bathroom: return 4
        case .bedroom: return 5
        case .storage: return 6
        case .office: return 7
        case .playroom: return 8
        }
    }

}

enum RoomType: String {
    var imageName: String {
        switch self {
        case .islandKitchen: return "islandKitchen"
        case .uShapedKitchen: return "uShapedKitchen"
        case .lShapedKitchen: return "lShapedKitchen"
        case .galleyKitchen: return "galleyKitchen"
        case .singleWallKitchen: return "singleWallKitchen"
        case .openPlanKitchen: return "openPlanKitchen"
        case .kitchenetteCompactKitchen: return "kitchenetteCompactKitchen"
        case .outdoorKitchen: return "outdoorKitchen"
        case .lShapedLivingRoom: return "lShapedLivingRoom"
        case .uShapedLivingRoom: return "uShapedLivingRoom"
        case .openPlanLivingRoom: return "openPlanLivingRoom"
        case .familyRoom: return "familyRoom"
        case .lounge: return "lounge"
        case .halfBath: return "halfBath"
        case .jackJill: return "jackJill"
        case .quarterBath: return "quarterBath"
        case .fullBath: return "fullBath"
        case .guestBath: return "guestBath"
        case .masterBath: return "masterBath"
        case .powderRoom: return "powderRoom"
        case .childrensBedroom: return "childrensBedroom"
        case .masterBedroom: return "masterBedroom"
        case .guestBedroom: return "guestBedroom"
        case .youngAdultBedroom: return "youngAdultBedroom"
        case .diningRoom: return "diningRoom"
        case .breakfastNook: return "breakfastNook"
        case .formalDining: return "formalDining"
        case .openDining: return "openDining"
        case .carport: return "carport"
        case .oneCarGarage: return "oneCarGarage"
        case .twoCarGarage: return "twoCarGarage"
        case .threeCarGarage: return "threeCarGarage"
        case .fourCarGarage: return "fourCarGarage"
        case .fiveCarGarage: return "fiveCarGarage"
        case .sixCarGarage: return "sixCarGarage"
        case .creativeOffice: return "creativeOffice"
        case .homeOffice: return "homeOffice"
        case .openPlanOffice: return "openPlanOffice"
        case .sharedSpaceOffice: return "sharedSpaceOffice"
        case .studentOffice: return "studentOffice"
        case .virtualOffice: return "virtualOffice"
        case .creativePlayroom: return "creativePlayroom"
        case .fantasyPlayroom: return "fantasyPlayroom"
        case .gameRoom: return "gameRoom"
        case .movieRoom: return "movieRoom"
        case .storytellerRoom: return "storytellerRoom"
        case .adventureRoom: return "adventureRoom"
        case .outdoorPlayRoom: return "outdoorPlayRoom"
        case .pantry: return "pantry"
        case .closet: return "closet"
        case .basement: return "basement"
        case .attic: return "attic"
        case .storage: return "storage"
        }
    }
    case islandKitchen
    case uShapedKitchen
    case lShapedKitchen
    case galleyKitchen
    case singleWallKitchen
    case openPlanKitchen
    case kitchenetteCompactKitchen
    case outdoorKitchen
    case lShapedLivingRoom
    case uShapedLivingRoom
    case openPlanLivingRoom
    case familyRoom
    case lounge
    case halfBath
    case jackJill
    case quarterBath
    case fullBath
    case guestBath
    case masterBath
    case powderRoom
    case childrensBedroom
    case masterBedroom
    case guestBedroom
    case youngAdultBedroom
    case diningRoom
    case breakfastNook
    case formalDining
    case openDining
    case carport
    case oneCarGarage
    case twoCarGarage
    case threeCarGarage
    case fourCarGarage
    case fiveCarGarage
    case sixCarGarage
    case creativeOffice
    case homeOffice
    case openPlanOffice
    case sharedSpaceOffice
    case studentOffice
    case virtualOffice
    case creativePlayroom
    case fantasyPlayroom
    case gameRoom
    case movieRoom
    case storytellerRoom
    case adventureRoom
    case outdoorPlayRoom
    case pantry
    case closet
    case basement
    case attic
    case storage
}

enum SpaceType: String {
    var imageName: String {
        switch self {
        case .cookingZone: return "cookingZone"
        case .preparationZone: return "preparationZone"
        case .cleaningZone: return "cleaningZone"
        case .servingZone: return "servingZone"
        case .storageZone: return "storageZone"
        case .pantryZone: return "pantryZone"
        case .drinkZone: return "drinkZone"
        case .utilityZone: return "utilityZone"
        case .diningZone: return "diningZone"
        case .techZone: return "techZone"
        case .shelvingZone: return "shelvingZone"
        case .functionalFurnitureZone: return "functionalFurnitureZone"
        case .roomDecorZone: return "roomDecorZone"
        case .vanity: return "vanity"
        case .medicineCabinet: return "medicineCabinet"
        case .workstation: return "workstation"
        case .deskStorage: return "deskStorage"
        case .techGadgetZone: return "techGadgetZone"
        case .referenceZone: return "referenceZone"
        case .outdoorStorage: return "outdoorStorage"
        }
    }
    case cookingZone
    case preparationZone
    case cleaningZone
    case servingZone
    case storageZone
    case pantryZone
    case drinkZone
    case utilityZone
    case diningZone
    case techZone
    case shelvingZone
    case functionalFurnitureZone
    case roomDecorZone
    case vanity
    case medicineCabinet
    case workstation
    case deskStorage
    case techGadgetZone
    case referenceZone
    case outdoorStorage
}

enum SubtaskType: String {
    var imageName: String {
        switch self {
        case .cookware: return "cookware"
        case .utensils: return "utensils"
        case .dishes: return "dishes"
        case .spices: return "spices"
        case .gadgets: return "gadgets"
        case .smallAppliances: return "smallAppliances"
        case .bowls: return "bowls"
        case .glasses: return "glasses"
        case .cups: return "cups"
        case .plates: return "plates"
        case .mugs: return "mugs"
        case .towels: return "towels"
        case .sheets: return "sheets"
        case .blankets: return "blankets"
        case .pillows: return "pillows"
        case .cushions: return "cushions"
        case .bakeware: return "bakeware"
        case .serveware: return "serveware"
        case .papergoods: return "papergoods"
        }
    }
    case cookware
    case utensils
    case dishes
    case spices
    case gadgets
    case smallAppliances
    case bowls
    case glasses
    case cups
    case plates
    case mugs
    case towels
    case sheets
    case blankets
    case pillows
    case cushions
    case bakeware
    case serveware
    case papergoods
}

enum MinitaskType: String {
    var imageName: String {
        switch self {
        case .clean: return "clean"
        case .organize: return "organize"
        case .label: return "label"
        case .contain: return "contain"
        case .group: return "group"
        }
    }
    case clean
    case organize
    case label
    case contain
    case group
}

// Data loading logic
struct DataLoader {
    static func loadRooms(for projectType: ProjectType) -> [Room] {
        switch projectType {
        case .kitchen: return [Room(name: "Kitchen")]
        case .diningRoom: return [Room(name: "Dining Room")]
        case .livingRoom: return [Room(name: "Living Room")]
        case .bathroom: return [Room(name: "Bathroom")]
        case .bedroom: return [Room(name: "Bedroom")]
        case .storage: return [Room(name: "Storage")]
        case .office: return [Room(name: "Office")]
        case .playroom: return [Room(name: "Playroom")]
        case .garage: return [Room(name: "Garage")]
        case .laundryRoom: return [Room(name: "Laundry Room")]
            return []
        }
    }
}
    // controller to load base projects
    class AddBaseProjectsController: ObservableObject {
        @Published var isBaseProjectsLoaded: Bool = false
        
        func loadBaseProjectsIfNeeded() {
            if !isBaseProjectsLoaded {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.isBaseProjectsLoaded = true
                }
            }
        }
        
        // function to create base projects
        private func createBaseProjects() -> [Project] {
            let projectType: [ProjectType] = [.kitchen, .diningRoom, .livingRoom, .bathroom, .bedroom, .storage, .office, .playroom, .garage, .laundryRoom]
            
            return projectType.map { projectType in
                let rooms = DataLoader.loadRooms(for: projectType)
                    .sorted(by: { $0.name < $1.name})
                return Project(projectType: projectType, rooms: rooms)
            }
        }
    }
