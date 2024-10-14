//
//  BedroomSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/15/24.
//

import Foundation


// MARK: BedroomSpaceType

enum BedroomSpaceType: String, Codable, CaseIterable, Identifiable, SpaceType {
    case flatScreenTV = "Flat Screen TV"
    case taskLamps = "Task Lamps"
    case comfyChair = "Comfy Chair"
    case smallDesk = "Small Desk"
    case sleepingArea = "Sleeping Area"
    case bedsideArea = "Bedside Area"
    // BedroomStorageSpaceType
    case closet = "Closet"
    case shelves = "Shelves"
    case underBedStorage = "Storage Under Bed "
    case trunksBaskets = "Trunks/Baskets"
    // BedroomDresser
 
    case drawers = "Drawers"
    case mirror = "Mirror"
    // BedroomNightstand
    case topSurface = "Top Surface"
    case drawersShelves = "Drawers Shelves"
    case decorativeItems = "Decorative Items"

    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .flatScreenTV: return "A flat screen TV that can be used for watching TV, movies, or streaming services. It should be placed near the bed to make it easy to access items. The TV should be clean and organized with a drawer for storing books, magazines, and other essentials."
        case .taskLamps: return "Task lamps that can be used for reading, writing, or studying. They should be placed near the bed to make it easy to access items. The lamps should be clean and organized with a drawer for storing books, magazines, and other essentials."
        case .comfyChair: return "A comfortable chair that can be used for reading, watching TV, or relaxing. It should be placed near the bed to make it easy to access items. The chair should be clean and organized with a drawer for storing books, magazines, and other essentials."
        case .smallDesk: return "A small desk that can be used for work, writing, or storage. It should be placed near the bed to make it easy to access items. The desk should be clean and organized with a drawer for storing papers, pencils, and other essentials."
        case .sleepingArea: return "The focal point of the bed that adds style and structure. It can be decorative, upholstered, or functional with built-in shelving for extra storage. Includes sheets, pillows, blankets, and duvets. These should be neatly arranged to create a comfortable and inviting sleeping space."
        case .bedsideArea: return "A space near the bed that should be kept clutter-free with essentials like a lamp, phone charger, or a small tray for personal items. The nightstand’s surface is for holding essential items like a lamp, alarm clock, and a book or journal. Keeping it organized makes the space feel clean and calm."
        case .closet: return "Organize clothing by season, type, or color. Utilize vertical space with shelves or bins for shoes, accessories, or folded items like sweaters."
        case .shelves: return "Use shelving units to store books, decorative items, or baskets filled with extra bedding or seasonal items."
        case .underBedStorage: return "If there’s space under the bed, use bins or drawers to store off-season clothing, shoes, or extra linens."
        case .trunksBaskets: return "For additional storage, place decorative trunks or baskets at the foot of the bed or along walls to store blankets, pillows, or other miscellaneous items."
        case .drawersShelves: return "Use any available drawers or shelves to store personal items like phone chargers, hand lotion, or eyeglasses. Keeping items within reach but out of sight helps reduce clutter."
        case .decorativeItems: return "Small plants, candles, or a framed photo can add a personal touch without overwhelming the nightstand’s function."
        case .topSurface: return "The top of the dresser can be used for displaying decor like framed photos, plants, or jewelry trays. It should be kept minimal to avoid clutter."
        case .drawers: return "Organize clothing by type in each drawer—shirts, pants, and undergarments should be separated to make dressing more efficient."
        case .mirror: return "A mirror placed above the dresser can be functional for grooming and also help create the illusion of more space in the room."
        }
    }
    
    var usageDescription: String {
        switch self {
        case .flatScreenTV: return "A flat-screen TV can be used for watching movies, playing games, or streaming content. It should be placed at the foot of the bed or along the wall to avoid clutter."
        case .taskLamps: return "Task lamps can be used for reading, writing, or working on small projects. They should be placed at the foot of the bed or along the wall to avoid clutter."
        case .comfyChair: return "A comfortable chair can be used for reading, watching movies, or relaxing. It should be placed at the foot of the bed or along the wall to avoid clutter."
        case .smallDesk: return "A small desk can be used for storing small items like pens, pencils, and a laptop. It should be placed at the foot of the bed or along the wall to avoid clutter."
        case .sleepingArea: return "The headboard serves as both a decorative and functional element of the bed, providing support for sitting up in bed and acting as a focal point for the room. It adds style and structure to the bed and can also offer practical features like built-in storage or shelves for books and small items. The headboard helps anchor the bed within the space, contributing to the overall design and comfort of the room. Bedding includes the sheets, pillows, blankets, and duvet or comforter that provide warmth and comfort while sleeping. Properly layered bedding not only enhances the aesthetic appeal of the bed but also creates a cozy and inviting sleeping environment. High-quality bedding improves sleep quality, while decorative pillows and throws add texture and personality to the bedroom decor."
      
        case .bedsideArea: return "The bedside area includes the space around the bed, usually centered on a nightstand or small table. It provides a convenient place for essential items like a lamp, alarm clock, phone, or a book, keeping everything within easy reach while resting. A well-organized bedside area helps create a functional and peaceful environment for relaxation and sleep, reducing the need to get out of bed for small necessities. The top surface of a dresser or nightstand provides space for decorative items and frequently used essentials like a lamp, clock, or personal items. It should be kept organized to avoid clutter, allowing space for both functionality and decor, such as a small plant, framed photo, or a jewelry tray. A clean and styled top surface adds to the overall aesthetic of the room while keeping necessary items within easy reach."
        case .drawers: return "Drawers in a dresser or nightstand are used for organizing clothing, accessories, or personal items. They provide concealed storage, helping to keep the room tidy by reducing visible clutter. In a dresser, drawers can be used to separate clothing types—such as shirts, pants, and undergarments—while nightstand drawers are ideal for keeping smaller items like chargers, books, or eyeglasses neatly stored but accessible."
        case .mirror: return "A mirror above a dresser or on a nearby wall serves both a practical and decorative purpose. It provides a functional space for grooming, makeup, or outfit checks, while also enhancing the room by reflecting light and creating the illusion of more space. A well-placed mirror can also contribute to the overall design of the bedroom, acting as a stylish focal point."
        case .topSurface: return "The top surface of furniture such as nightstands, dressers, or sideboards provides space for displaying decorative items and holding essential objects. It’s typically used for items like lamps, clocks, trays, or personal items that need to be within easy reach. Keeping the top surface organized and uncluttered ensures a clean, functional, and aesthetically pleasing area, enhancing the room’s overall look while offering practical access to everyday necessities."
        case .drawersShelves: return "Drawers and shelves offer convenient storage for items like clothing, books, or personal belongings. Drawers help keep items concealed and organized, ensuring that the room looks tidy and uncluttered. Shelves, whether open or within cabinets, allow for displaying items like books or decor while also providing accessible storage for frequently used items. Properly utilizing drawers and shelves helps maintain an organized and functional space."
        case .decorativeItems: return "Decorative items, such as vases, framed photos, candles, or sculptures, add personality and style to a room. They help enhance the aesthetic appeal and contribute to the room’s overall design theme. When arranged thoughtfully, decorative items can act as focal points or accents, balancing the functionality of the space with its visual appeal. It’s important to avoid overcrowding with decor to maintain a harmonious and well-organized environment."
        case .closet: return "The closet serves as the primary storage area for clothing, shoes, and accessories. It helps organize and categorize items by season, type, or frequency of use. Closets can feature hanging rods for clothes, built-in shelves for folded garments, and storage bins for accessories or shoes. A well-organized closet maximizes storage space while making it easy to find and access items, ensuring a tidy and clutter-free bedroom."
        case .shelves: return "Shelves offer versatile storage options for both functional and decorative items. In a bedroom, shelves can be used to store books, folded clothes, accessories, or display decorative objects. Open shelving creates easy access to frequently used items, while also allowing for a visually appealing arrangement of decor. Organized shelves help maintain a balanced mix of functionality and style in the room."
        case .underBedStorage: return "Under-bed storage is an ideal solution for maximizing space in smaller rooms by utilizing the often unused area beneath the bed. This space can be used to store out-of-season clothing, shoes, linens, or other items in storage bins, drawers, or vacuum-sealed bags. Keeping items organized under the bed helps reduce clutter and frees up closet or dresser space, making the room more organized and functional."
        case .trunksBaskets: return "Trunks and baskets provide additional storage for items like blankets, pillows, or extra bedding. They can also be used for organizing seasonal clothing or keeping miscellaneous items out of sight. Trunks can double as decorative furniture, adding a vintage or rustic touch, while baskets can be placed on shelves or in closets to keep smaller items contained. These versatile storage options enhance both the functionality and aesthetic appeal of the room."
        }
    }
    var weight: Double { 1.0 }
    
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .bedsideArea, .smallDesk, .comfyChair, .drawers, .mirror, .flatScreenTV, .decorativeItems, .drawersShelves, .topSurface, .closet, .shelves, .trunksBaskets, .underBedStorage, .taskLamps, .sleepingArea: return true
           
        }
    }
    
    var subTask: (any SubTaskType)? {
        return nil
    }
    var subTaskTypes: [SubTaskTypeBox] {
        switch self {
        case .bedsideArea, .smallDesk, .comfyChair, .drawers, .mirror, .flatScreenTV, .decorativeItems, .drawersShelves, .topSurface, .closet, .shelves, .trunksBaskets, .underBedStorage, .taskLamps, .sleepingArea:
            return BedroomSubTaskType.allCases.map { SubTaskTypeBox($0)! }
        }
    }
    static var lightingZoneSpaces: [BedroomSpaceType] {
        return [.taskLamps]
    }
    static var readingZoneSpaces: [BedroomSpaceType] {
        return [.shelves, .smallDesk, .comfyChair]
    }
    static var studyZoneSpaces: [BedroomSpaceType] {
        return [.shelves, .smallDesk]
    }
    static var sleepingZoneSpaces: [BedroomSpaceType] {
        return [.sleepingArea, .bedsideArea, .drawers]
    }
    static var bedroomStorageSpaces: [BedroomSpaceType] {
        return [.closet, .shelves, .trunksBaskets, .underBedStorage, .drawersShelves]
    }
    static var vanityZoneSpaces: [BedroomSpaceType] {
        return [.mirror, .topSurface, .decorativeItems]
    }
    static var entertainmentZoneSpaces: [BedroomSpaceType] {
        return [.taskLamps, .comfyChair, .flatScreenTV]
    }
    static var SpaceType: [any SpaceType] {
        return BedroomSpaceType.allCases.map { $0 as any SpaceType }
    }
}


