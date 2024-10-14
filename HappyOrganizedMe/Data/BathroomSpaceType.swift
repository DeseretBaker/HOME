//
//  BathroomSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/15/24.
//

import Foundation

// MARK: BathroomSpaceType
enum BathroomSpaceType: String, SpaceType, Codable, CaseIterable, Identifiable {
    // BathingZone
    case bathingSpace = "Bathtub Area"
    case cleaningSuppliesSpace = "Bathroom Cleaning Supplies"
    
    // BathroomVanitySink
    case vanity = "Vanity"
    
    // BathroomTowelsToiletries
    case towelStorage = "Towel Storage"
    case toiletries = "Toiletries"
    // BathroomGrooming
    
    case grooming = "Grooming"
    
    // RelaxationZone
    case softLighting = "Soft Lighting"
    // BathroomLaundry
    case laundry = "Laundry"
    
    
    //
    
    var id: UUID { UUID() }
    var name: String { self.rawValue }
    var imageName: String { "image_\(self.rawValue)" }
    
    var instructions: String {
        switch self {
        case .bathingSpace:
            return "Place bath salts, sponges, or loofahs on a nearby shelf or basket. Use a tray for items like candles, books, or wine glasses for relaxation."
        case .cleaningSuppliesSpace:
            return "Keep a toilet brush, plunger, and cleaner neatly stored nearby, either in a cabinet or a corner holder. Place a small, discreet trash bin next to the toilet for disposing of tissues or other waste. Store cleaning supplies, such as sprays, scrubbing brushes, and disinfectants, in a cabinet under the sink or in a designated cleaning closet. Use caddies or bins to group similar cleaning products together, making it easy to grab what you need. Ensure you have room for brooms, mops, and cleaning cloths, either in a nearby closet or hung on the wall."
        case .vanity:
            return "Store extra toiletries and cosmetics in a cabinet with containers for easy access. Use drawer dividers to separate items like makeup, razors, and hair ties for easy organization. Keep the countertop clutter-free by storing daily-use items like soap, toothbrushes, and face wash in a tray or organizer. Store essentials like medications, skincare products, and grooming tools in a mirror cabinet to reduce counter clutter."
        case .towelStorage:
            return "Fold or roll towels and store them on shelves or in a linen closet. Use hooks or towel bars near the shower or sink for daily-use towels. Place hand towels on a ring or small hook next to the sink for easy access."
        case .toiletries:
            return "Store frequently used toiletries, such as lotions, deodorant, and toothpaste, in bins or caddies inside a cabinet or drawer. Store extra toilet paper rolls in a nearby basket, cabinet, or wall-mounted holder for easy access."
        case .grooming:
            return "Group grooming products like razors, shaving cream, and beard trimmers in a drawer or cabinet. Use a drawer, basket, or wall-mounted organizer to store hair dryers, straighteners, and curling irons. Ensure a well-lit area around the mirror for grooming tasks, such as shaving or applying makeup."
        case .laundry:
            return "Place a laundry basket or hamper near the bathroom or in a dedicated corner for dirty towels and clothes. Store detergents, fabric softeners, and stain removers in cabinets or shelves near the laundry area if your bathroom includes a washer and dryer. Store detergents, fabric softeners, and stain removers in cabinets or shelves near the laundry area if your bathroom includes a washer and dryer."
        case .softLighting:
            return "Install dimmable lights or use soft, ambient lighting in this zone to create a peaceful atmosphere for unwinding."
        }
    }
    var usageDescription: String {
        switch self {
        case .bathingSpace:
            return "Place bath salts, sponges, or loofahs on a nearby shelf or basket. Use a tray for items like candles, books, or wine glasses for relaxation."
        case .cleaningSuppliesSpace:
            return "Keep a toilet brush, plunger, and cleaner neatly stored nearby, either in a cabinet or a corner holder. Place a small, discreet trash bin next to the toilet for disposing of tissues or other waste. Store cleaning supplies, such as sprays, scrubbing brushes, and disinfectants, in a cabinet under the sink or in a designated cleaning closet. Use caddies or bins to group similar cleaning products together, making it easy to grab what you need. Ensure you have room for brooms, mops, and cleaning cloths, either in a nearby closet or hung on the wall."
        case .vanity:
            return "Store extra toiletries and cosmetics in a cabinet with containers for easy access. Use drawer dividers to separate items like makeup, razors, and hair ties for easy organization. Keep the countertop clutter-free by storing daily-use items like soap, toothbrushes, and face wash in a tray or organizer. Store essentials like medications, skincare products, and grooming tools in a mirror cabinet to reduce counter clutter."
        case .towelStorage:
            return "Fold or roll towels and store them on shelves or in a linen closet. Use hooks or towel bars near the shower or sink for daily-use towels. Place hand towels on a ring or small hook next to the sink for easy access."
        case .toiletries:
            return "Store frequently used toiletries, such as lotions, deodorant, and toothpaste, in bins or caddies inside a cabinet or drawer. Store extra toilet paper rolls in a nearby basket, cabinet, or wall-mounted holder for easy access."
        case .grooming:
            return "Group grooming products like razors, shaving cream, and beard trimmers in a drawer or cabinet. Use a drawer, basket, or wall-mounted organizer to store hair dryers, straighteners, and curling irons. Ensure a well-lit area around the mirror for grooming tasks, such as shaving or applying makeup."
        case .laundry:
            return "Place a laundry basket or hamper near the bathroom or in a dedicated corner for dirty towels and clothes. Store detergents, fabric softeners, and stain removers in cabinets or shelves near the laundry area if your bathroom includes a washer and dryer. Store detergents, fabric softeners, and stain removers in cabinets or shelves near the laundry area if your bathroom includes a washer and dryer."
        case .softLighting:
            return "Install dimmable lights or use soft, ambient lighting in this zone to create a peaceful atmosphere for unwinding."
        }
    }
    var weight: Double { 1.0 }
    
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .bathingSpace, .cleaningSuppliesSpace, .grooming, .softLighting, .toiletries, .towelStorage, .vanity, .laundry: return true
        }
    }
    var subTask: (any SubTaskType)? {
        return nil
    }
    var subTaskTypes: [SubTaskTypeBox] {
        switch self {
        case .bathingSpace:
            return BathroomSubTaskType.bathingSubTask.map { SubTaskTypeBox($0)! }
        case .cleaningSuppliesSpace:
            return BathroomSubTaskType.cleaningSpaceSubtask.map { SubTaskTypeBox($0)! }
        case.toiletries:
            return BathroomSubTaskType.toiletrySubTask.map { SubTaskTypeBox($0)! }
        case .towelStorage:
            return BathroomSubTaskType.towelStorageSubTask.map { SubTaskTypeBox($0)! }
        case .vanity:
            return BathroomSubTaskType.vanitySubTask.map { SubTaskTypeBox($0)! }
        case .laundry:
            return BathroomSubTaskType.laundrySubTask.map { SubTaskTypeBox($0)! }
        case .grooming:
            return BathroomSubTaskType.groomingSubTask.map { SubTaskTypeBox($0)! }
        case .softLighting:
            return BathroomSubTaskType.lightZonesSubTask.map { SubTaskTypeBox($0)! }
        }
    }
    static var bathingZoneSpaces: [BathroomSpaceType] {
        return [.bathingSpace]
    }
    static var cleaningZoneSpaces: [BathroomSpaceType] {
        return [.cleaningSuppliesSpace]
    }
    static var toiletriesSpaces: [BathroomSpaceType] {
        return [.toiletries]
    }
    static var towelsZoneSpaces: [BathroomSpaceType] {
        return [.towelStorage]
    }
    static var vanityZoneSpaces: [BathroomSpaceType] {
        return [.vanity]
    }
    static var laundryZoneSpaces: [BathroomSpaceType] {
        return [.laundry]
    }
    static var groomingZoneSpaces: [BathroomSpaceType] {
        return [.grooming]
    }
    static var softLightingZoneSpaces: [BathroomSpaceType] {
        return [.softLighting]
    }
     static var SpaceType: [any SpaceType] {
        return BathroomSpaceType.allCases.map { $0 as any SpaceType }
    
    }
}
   
         
   
 




            
