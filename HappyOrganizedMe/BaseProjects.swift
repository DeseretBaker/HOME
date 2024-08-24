//
//  BaseProjects.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 8/10/24.
//

import Foundation
import SwiftUI
import SwiftData

// Define main view structure
struct BaseProjectsView: View {
    @StateObject var controller = AddBaseProjectsController()
    @State var projects: [RoomProject] = []
    
    var body: some View {
        List {
            ForEach(projects, id: \.id) { project in
                Text(project.name)
            }
        }
        .navigationTitle("Projects")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            controller.loadBaseProjectsIfNeeded()
            projects = controller.baseProjects()
        }
    }
}

// Define enums at the top level
enum ProjectType: String {
    case kitchen, garage, bathroom, storage, bedroom, office, playroom, livingRoom, laundryRoom, diningRoom
    
    var name: String {
        switch self {
        case .kitchen: return "Kitchen"
        case .diningRoom: return "Dining Room"
        case .livingRoom: return "Living Room"
        case .bathroom: return "Bathroom"
        case .bedroom: return "Bedroom"
        case .storage: return "Storage"
        case .office: return "Office"
        case .garage: return "Garage"
        case .playroom: return "Playroom"
        case .laundryRoom: return "Laundry Room"
        }
    }
    var imageName: String {
        return rawValue
    }
    var weight: Double {
        switch self {
        case .kitchen, .garage: return 5
        case .bathroom, .storage: return 4
        case .office, .playroom, .bedroom: return 3
        case .livingRoom, .laundryRoom: return 2
        case .diningRoom: return 1
        }
    }
}

enum RoomType: String {
    case islandKitchen, uShapedKitchen, lShapedKitchen, galleyKitchen, singleWallKitchen, openPlanKitchen, kitchenetteCompactKitchen, outdoorKitchen,
         lShapedLivingRoom, uShapedLivingRoom, openPlanLivingRoom, familyRoom, lounge,
         halfBath, jackJill, quarterBath, fullBath, guestBath, masterBath, powderRoom,
         masterBedroom, childrensBedroom, youngAdultBedroom, guestBedroom,
         diningRoom, breakfastNook, formalDining, openDining, casualDining, diningRoomWithBar,
         oneCarGarage, twoCarGarage, threeCarGarage, fourCarGarage, fiveCarGarage, sixCarGarage, carport,
         creativeOffice, homeOffice, openPlanOffice, sharedSpaceOffice, studentOffice, virtualOffice,
         creativePlayroom, fantasyPlayroom, gameRoom, movieRoom, storytellerRoom, adventureRoom, outdoorPlayRoom,
         pantry, closet, basement, attic, storage
    
    var name: String {
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
        case .casualDining: return "casualDining"
        case .diningRoomWithBar: return "diningRoomWithBar"
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
    
    var imageName: String {
        return rawValue
    }
    
    var weight: Double {
        switch self {
        case .islandKitchen, .uShapedKitchen: return 5.0
        case .lShapedKitchen, .galleyKitchen: return 4.0
        case .singleWallKitchen: return 3.0
        case .openPlanKitchen, .kitchenetteCompactKitchen: return 2.0
        case .outdoorKitchen: return 1.0
        case .lShapedLivingRoom, .uShapedLivingRoom, .openPlanLivingRoom, .familyRoom, .lounge: return 3.0
        case .halfBath, .jackJill, .quarterBath, .fullBath, .guestBath, .masterBath, .powderRoom: return 2.0
        case .masterBedroom, .childrensBedroom, .youngAdultBedroom, .guestBedroom: return 1.0
        case .diningRoom, .breakfastNook, .formalDining, .openDining, .casualDining, .diningRoomWithBar: return 1.0
        case .carport, .oneCarGarage, .twoCarGarage, .threeCarGarage, .fourCarGarage, .fiveCarGarage, .sixCarGarage: return 5.0
        case .creativeOffice, .homeOffice, .openPlanOffice, .sharedSpaceOffice, .studentOffice, .virtualOffice: return 1.0
        case .basement, .attic: return 5.0
        case .creativePlayroom, .fantasyPlayroom, .gameRoom, .movieRoom, .storytellerRoom, .adventureRoom, .outdoorPlayRoom: return 4.0
        case .pantry, .closet, .storage: return 3.0
        }
    }
}

enum SpaceType: String {
    case cookingZone, preparationZone, cleaningZone, servingZone, storageZone, pantryZone, drinkZone, utilityZone, diningZone, techZone, shelvingZone, functionalFurnitureZone, roomDecorZone, vanity, medicineCabinet, workstation, deskStorage, techGadgetZone, referenceZone, outdoorStorageZone
    
    var name: String {
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
        case .outdoorStorageZone: return "outdoorStorageZone"
        }
    }
    
    var imageName: String {
        return rawValue
    }
    
    var weight: Double {
        switch self {
        case .workstation, .shelvingZone, .deskStorage, .outdoorStorageZone: return 5.0
        case .storageZone, .pantryZone, .utilityZone: return 4.0
        case .cookingZone, .preparationZone, .cleaningZone, .servingZone, .drinkZone, .diningZone, .techZone, .techGadgetZone: return 3.0
        case .functionalFurnitureZone, .vanity, .referenceZone: return 2.0
        case .roomDecorZone, .medicineCabinet: return 1.0
        }
    }
}

enum SubtaskType: String {
    case cookware, utensils, dishes, spices, gadgets, smallAppliances, bowls, glasses, cups, plates, mugs, towels, sheets, blankets, pillows, cushions, bakeware, serveWare, paperGoods
    
    var name: String {
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
        case .serveWare: return "serveWare"
        case .paperGoods: return "paperGoods"
        }
    }
    
    var imageName: String {
        return rawValue
    }
    
    var weight: Double {
        switch self {
        case .gadgets: return 5.0
        case .serveWare: return 4.0
        case .smallAppliances, .bakeware: return 3.0
        case .bowls, .paperGoods, .spices: return 2.0
        case .cookware, .utensils, .dishes, .glasses, .cups, .plates, .mugs, .towels, .sheets, .blankets, .pillows, .cushions: return 1.0
        }
    }
}

enum MinitaskType: String {
    case clean, organize, label, contain, group
    
    var name: String {
        switch self {
        case .clean: return "clean"
        case .organize: return "organize"
        case .label: return "label"
        case .contain: return "contain"
        case .group: return "group"
        }
    }
    
    var imageName: String {
        return rawValue
    }
    
    var weight: Double {
        switch self {
        case .clean: return 5.0
        case .organize: return 4.0
        case .group: return 3.0
        case .contain: return 2.0
        case .label: return 1.0
        }
    }
}

// Data loading logic
struct DataLoader {
    static func loadRooms(for projectType: ProjectType) -> [Room] {
        switch projectType {
        case .kitchen: return [Room(name: "Kitchen", weight: projectType.weight)]
        case .diningRoom: return [Room(name: "Dining Room", weight: projectType.weight)]
        case .livingRoom: return [Room(name: "Living Room", weight: projectType.weight)]
        case .bathroom: return [Room(name: "Bathroom", weight: projectType.weight)]
        case .bedroom: return [Room(name: "Bedroom", weight: projectType.weight)]
        case .storage: return [Room(name: "Storage", weight: projectType.weight)]
        case .office: return [Room(name: "Office", weight: projectType.weight)]
        case .playroom: return [Room(name: "Playroom", weight: projectType.weight)]
        case .garage: return [Room(name: "Garage", weight: projectType.weight)]
        case .laundryRoom: return [Room(name: "Laundry Room", weight: projectType.weight)]
        }
    }
}

// Function to create base projects
func createBaseProjects() -> [RoomProject] {
    let projectTypes: [ProjectType] = [.kitchen, .diningRoom, .livingRoom, .bathroom, .bedroom, .storage, .office, .playroom, .garage, .laundryRoom]
    
    return projectTypes.map { projectType in
        let rooms = DataLoader.loadRooms(for: projectType)
            .sorted(by: { $0.name < $1.name })
        return RoomProject(name: projectType.name, rooms: rooms)
    }
}

// Controller to load base projects
class AddBaseProjectsController: ObservableObject {
    @Published var isBaseProjectsLoaded: Bool = false
    
    func loadBaseProjectsIfNeeded() {
        if !isBaseProjectsLoaded {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.isBaseProjectsLoaded = true
            }
        }
    }
    
    func baseProjects() -> [RoomProject] {
        return createBaseProjects() // Assuming you need this function to return the projects
    }
}
