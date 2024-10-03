//
//  BathroomSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/15/24.
//

import Foundation

// MARK: BedroomSpaceType
enum BathroomSpaceType: String, SpaceType, Codable, CaseIterable, Identifiable {
   
    case showerArea = "Shower Area"
    case bathtubArea = "Bathtub Area"
    case showerCurtainDoor = "Shower Curtain Door"
    // BathroomToilet
    case toiletPaper = "Toilet Paper"
    case toiletCleaningSupplies = "Toilet Cleaning Supplies"
    case trashBin = "Trash Bin"
    // BathroomVanitySink
    case sinkCountertop = "Sink Countertop"
    case vanityDrawers = "Vanity Drawers"
    case vanityCabinet = "Vanity Cabinet"
    case mirrorCabinet = "Mirror Cabinet"
    // BathroomTowelsToiletries
    case towelStorage = "Towel Storage"
    case toiletryOrganization = "Toiletry Organization"
    case handTowels = "Hand Towels"
    // BathroomGrooming
    case hairToolsStorage = "Hair Tools Storage"
    case groomingProducts = "Grooming Products"
    case mirrorArea = "Mirror Area"
    // RelaxationZone
    case candlesAromatherapy = "Candles & Aromatherapy"
    case seatingArea = "Seating Area"
    case softLighting = "Soft Lighting"
    // BathroomLaundry
    case laundryHamper = "Laundry Hamper"
    case washingSupplies = "Washing Supplies"
    case laundrySortingArea = "Laundry Sorting Area"
    //  BathroomDressingChanging
    case clothesStorage = "Clothes Storage"
    case mirror = "Mirror"
    case benchSeating = "Bench Seating"
    // BathroomCleaningSupplies
    case cleaningTools = "Cleaning Tools"
    case organizers = "Organizers"
    case storageSpace = "Storage Space"
    //
    
    var id: UUID { UUID() }
    var name: String { self.rawValue }
    var imageName: String { "image_\(self.rawValue)" }
    
    var instructions: String {
        switch self {
        case .showerArea: return "Organize shampoos, conditioners, soaps, and body washes in built-in shelves or shower caddies. Keep a squeegee handy for cleaning glass doors."
        case .bathtubArea: return "Place bath salts, sponges, or loofahs on a nearby shelf or basket. Use a tray for items like candles, books, or wine glasses for relaxation."
        case .showerCurtainDoor: return "Ensure shower curtains or doors are clean and functional. Use a liner to prevent water leakage and mildew."
        case .toiletPaper: return "Store extra toilet paper rolls in a nearby basket, cabinet, or wall-mounted holder for easy access."
        case .toiletCleaningSupplies: return "Keep a toilet brush, plunger, and cleaner neatly stored nearby, either in a cabinet or a corner holder."
        case .trashBin: return "Place a small, discreet trash bin next to the toilet for disposing of tissues or other waste."
        case .sinkCountertop: return "Keep the countertop clutter-free by storing daily-use items like soap, toothbrushes, and face wash in a tray or organizer."
        case .vanityDrawers: return "Use drawer dividers to separate items like makeup, razors, and hair ties for easy organization."
        case .vanityCabinet: return "Store extra toiletries and cosmetics in a cabinet with containers for easy access."
        case .mirrorCabinet: return "Store essentials like medications, skincare products, and grooming tools in a mirror cabinet to reduce counter clutter."
        case .towelStorage: return "Fold or roll towels and store them on shelves or in a linen closet. Use hooks or towel bars near the shower or sink for daily-use towels."
        case .toiletryOrganization: return "Store frequently used toiletries, such as lotions, deodorant, and toothpaste, in bins or caddies inside a cabinet or drawer."
        case .handTowels: return "Place hand towels on a ring or small hook next to the sink for easy access."
        case .hairToolsStorage: return "Use a drawer, basket, or wall-mounted organizer to store hair dryers, straighteners, and curling irons."
        case .groomingProducts: return "Group grooming products like razors, shaving cream, and beard trimmers in a drawer or cabinet."
        case .mirrorArea: return "Ensure a well-lit area around the mirror for grooming tasks, such as shaving or applying makeup."
        case .laundryHamper: return "Place a laundry basket or hamper near the bathroom or in a dedicated corner for dirty towels and clothes."
        case .washingSupplies: return "Store detergents, fabric softeners, and stain removers in cabinets or shelves near the laundry area if your bathroom includes a washer and dryer."
        case .laundrySortingArea: return "Store detergents, fabric softeners, and stain removers in cabinets or shelves near the laundry area if your bathroom includes a washer and dryer."
        case .clothesStorage: return "Store your clothes here."
        case .mirror: return "Place a mirror here."
        case .benchSeating: return "Sit on the bench here."
        case .cleaningTools: return "Store cleaning supplies, such as sprays, scrubbing brushes, and disinfectants, in a cabinet under the sink or in a designated cleaning closet."
        case .organizers: return "Use caddies or bins to group similar cleaning products together, making it easy to grab what you need."
        case .storageSpace: return "Ensure you have room for brooms, mops, and cleaning cloths, either in a nearby closet or hung on the wall."
        case .candlesAromatherapy: return "Store candles, essential oils, or diffusers in an accessible area to create a calming environment during baths or quiet time."
        case.seatingArea: return "If space allows, place a small stool or chair near the bath or shower for relaxation or dressing."
        case .softLighting: return "Install dimmable lights or use soft, ambient lighting in this zone to create a peaceful atmosphere for unwinding."
        }
    }
    var usageDescription: String {
        switch self {
        case .showerArea: return "Clean shower curtains or doors regularly to prevent water leakage and mildew."
        case .bathtubArea: return "Clean bathtub curtains or doors regularly to prevent water leakage and mildew."
        case .showerCurtainDoor: return "Clean shower curtains or doors regularly to prevent water leakage and mildew."
        case .toiletPaper: return "Toilet Paper"
        case .toiletCleaningSupplies: return "Toilet Cleaning Supplies"
        case .trashBin: return "Trash Bin"
        case .sinkCountertop: return "Sink Countertop"
        case .vanityDrawers: return "Vanity Drawers"
        case .vanityCabinet: return "Vanity Cabinet"
        case .mirrorCabinet: return "Mirror Cabinet"
        case .towelStorage: return "Store towels on shelves or in a linen closet."
        case .toiletryOrganization: return "Store frequently used toiletries, such as lotions, deodorant, and toothpaste, in bins or caddies inside a cabinet or drawer."
        case .handTowels: return "Place hand towels on a ring or small hook next to the sink for easy access."
        case .hairToolsStorage: return "Store hair dryers, straighteners, and curling irons in a drawer, basket, or wall-mounted organizer."
        case .groomingProducts: return "Group grooming products like razors, shaving cream, and beard trimmers in a drawer or cabinet."
        case .mirrorArea: return "Ensure a well-lit area around the mirror for grooming tasks, such as shaving or applying makeup."
        case .laundryHamper: return "Laundry Hamper"
        case .washingSupplies: return "Washing Supplies"
        case .laundrySortingArea: return "Laundry Sorting Area"
        case .clothesStorage: return "Store your clothes here."
        case .mirror: return "Place a mirror here."
        case .benchSeating: return "Sit on the bench here."
        case .cleaningTools: return "Cleaning Tools"
        case .organizers: return "Organizers"
        case .storageSpace: return "Storage Space"
        case .candlesAromatherapy: return "Candles & Aromatherapy"
        case.seatingArea: return "Seating Area"
        case .softLighting: return "Soft Lighting"
        }
    }
    var weight: Double { 1.0 }
    
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .bathtubArea, .showerArea, .showerCurtainDoor: return true
        case .toiletCleaningSupplies, .toiletPaper, .trashBin: return true
        case .handTowels, .toiletryOrganization, .towelStorage: return true
        case .mirrorCabinet, .sinkCountertop, .vanityCabinet, .vanityDrawers: return true
        case .groomingProducts, .hairToolsStorage, .mirrorArea :return true
        case .laundryHamper, .laundrySortingArea, .washingSupplies: return true
        case .benchSeating, .clothesStorage, .mirror: return true
        case .cleaningTools, .organizers, .storageSpace: return true
        case .candlesAromatherapy, .seatingArea, .softLighting: return true
        }
    }
    var subTask: (any SubTaskType)? {
        return nil
    }
    var subTaskTypes: [SubTaskTypeBox] {
        switch self {
        case .bathtubArea:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .showerArea:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .showerCurtainDoor:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .toiletCleaningSupplies:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .toiletPaper:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .trashBin:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .mirrorCabinet:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .sinkCountertop:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .vanityCabinet:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .vanityDrawers:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .handTowels:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .toiletryOrganization:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .towelStorage:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .groomingProducts:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .hairToolsStorage:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .mirrorArea:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .laundryHamper:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .laundrySortingArea:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .washingSupplies:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .benchSeating:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .clothesStorage:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .mirror:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .cleaningTools:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .organizers:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .storageSpace:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .candlesAromatherapy:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .seatingArea:
            return [
                SubTaskTypeBox(BathroomSubTaskType.accessories)!,
                SubTaskTypeBox(BathroomSubTaskType.clean)!,
                SubTaskTypeBox(BathroomSubTaskType.declutter)!,
                SubTaskTypeBox(BathroomSubTaskType.organize)!,
                SubTaskTypeBox(BathroomSubTaskType.polish)!,
                SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
            ]
        case .softLighting:
          return [
              SubTaskTypeBox(BathroomSubTaskType.accessories)!,
              SubTaskTypeBox(BathroomSubTaskType.clean)!,
              SubTaskTypeBox(BathroomSubTaskType.declutter)!,
              SubTaskTypeBox(BathroomSubTaskType.organize)!,
              SubTaskTypeBox(BathroomSubTaskType.polish)!,
              SubTaskTypeBox(BathroomSubTaskType.repairsAndUpdates)!,
              SubTaskTypeBox(BathroomSubTaskType.tableLinens)!
          ]
        }
    }
    
    static var SpaceType: [any SpaceType] {
        return BathroomSpaceType.allCases.map { $0 as any SpaceType }
    }
}
   
         
   
 




