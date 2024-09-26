//
//  RoomType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation

enum KitchenRoomType: String, Codable, CaseIterable, Identifiable, RoomType  {
    
    case prepZone = "Prep Zone"
    case cookingZone = "Cooking Zone"
    case cleaningZone = "Cleaning Zone"
    case foodStorageZone = "Food Zone"
    case cookwareZone = "Cookware Zone"
    case servingZone = "Serving Zone"
    case bakingZone = "Baking Zone"
    case drinkZone = "Beverage Zone"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .prepZone:
            return "Clean and sanitize"
        case .cookingZone:
            return "Use a good degreaser and clean all surfaces"
        case .cleaningZone:
            return "Wipe bottles off after using"
        case .foodStorageZone:
            return "Don't go overboard"
        case .cookwareZone:
            return "keep cookware clean"
        case .servingZone:
            return "Keep serving area clean"
        case .bakingZone:
            return "Keep baking area clean"
        case .drinkZone:
            return "keep drink area clean, wipe down regularly"
        }
    }
    var usageDescription: String {
        switch self {
        case .prepZone:
            return "Prep Zone: This area is where you prepare food, such as chopping vegetables and mixing ingredients. It typically includes counter space, knives, cutting boards, mixing bowls, and other prep tools."
        case .cookingZone:
            return "Cooking Zone: This zone is dedicated to actual cooking. It includes the stove, oven, microwave, and often the countertop nearby for easy access to pots, pans, and cooking utensils."
        case .cleaningZone:
            return "Cleaning Zone: The cleaning zone usually revolves around the sink and dishwasher. It’s where you wash dishes, prepare ingredients that need rinsing, and dispose of waste. It should be near the garbage, recycling, and cleaning supplies."
        case .foodStorageZone:
            return "Storage Zone (Food): This zone includes areas for storing food like the pantry, cabinets, or the fridge. It’s where dry goods, canned goods, spices, and refrigerated/frozen items are kept."
        case .cookwareZone:
            return "Storage Zone (Cookware/Utensils): This zone is for storing pots, pans, lids, baking sheets, and cooking utensils. Ideally, it’s near the cooking zone for easy access while cooking."
        case .servingZone:
            return "Serving Zone: This area may include dishes, utensils, glasses, and serving platters. It’s often near the dining table or kitchen island where food is plated and served."
        case .bakingZone:
            return "Baking Zone: If you do a lot of baking, you may want a specific zone for this. It could include a section of counter space along with storage for mixing bowls, measuring cups, baking sheets, and specialized equipment like mixers."
        case .drinkZone:
            return "For coffee (Hot Cocoa) or tea lovers, having a dedicated space for brewing is convenient. It might include a coffee maker, kettle, mugs, and supplies like sugar, tea bags, or coffee beans. This works for both hot and cold beverages."
        }
    }
    var weight: Double { 5.0 }
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .bakingZone, .cleaningZone, .cookingZone, .cookwareZone, .drinkZone, .foodStorageZone, .prepZone, .servingZone: return true
        }
    }
    
    var spaceTypes: [SpaceTypeBox] {
        switch self {
        case .bakingZone, .cleaningZone, .cookingZone, .cookwareZone, .drinkZone, .foodStorageZone, .prepZone, .servingZone:
            return [
                SpaceTypeBox(KitchenSpaceType.drinkZoneKettles)!,
                SpaceTypeBox(KitchenSpaceType.drinkZoneMugsTravelMugs)!,
                SpaceTypeBox(KitchenSpaceType.drinkZoneSupplies)!
            ]
        }
    }
    
    
    // Provide all cases statically
    static var allRoomTypes: [any RoomType] {
        return KitchenRoomType.allCases.map { $0 as any RoomType}
    }
}
enum DiningRoomType: String, Codable, CaseIterable, Identifiable, RoomType {
    
    case diningZone = "Dining Room"
    case servingZone = "Serving Zone"
    case storageZone = "Storage Zone"
    case decorZone = "Decor Zone"
    case multiUse = "Multi-Use"
    case lightingZone = "Lighting Zone"
    case drinkBar = "Drink Bar"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .diningZone: return "String"
        case .servingZone: return "String"
        case .storageZone: return "String"
        case .decorZone: return "String"
        case .multiUse: return "String"
        case .lightingZone: return "String"
        case .drinkBar: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .diningZone: return "Dining Zone: This is the primary area, featuring the dining table and chairs. It’s where meals are served and eaten. Ideally, this zone is centrally located with enough space for seating and movement."
        case .servingZone: return "Serving Zone: This area is dedicated to serving food and beverages. It might include a buffet table, sideboard, or a serving cart where dishes, drinks, and utensils are placed before or during the meal."
        case .storageZone: return "Storage Zone (Tableware): This zone is for storing dining essentials such as dishes, glassware, utensils, and napkins. Cabinets, credenzas, or a china cabinet can be used to store these items when not in use."
        case .decorZone: return "Decor/Display Zone: Many dining rooms feature decorative zones such as a display shelf, wall art, or a place to showcase items like vases, centerpieces, or plants. This zone adds personality and aesthetic appeal to the room."
        case .multiUse: return "Multi-Use Zone: In modern homes, dining rooms can serve multiple purposes. This zone could be used for activities like working, studying, or doing crafts. It might feature a small desk, laptop station, or storage for office supplies when needed."
        case .lightingZone: return "Lighting Zone: Lighting plays an important role in creating ambiance in a dining room. A lighting zone often centers around a chandelier or pendant lights above the dining table. Additional lighting, like floor or table lamps, can define different sections of the room."
        case .drinkBar: return "Drinks/Bar Zone: If you entertain guests often, a drink or bar zone could be helpful. This area might include a bar cart or a small cabinet for storing wine, spirits, glassware, and accessories for making and serving drinks."
        }
    }
    var weight: Double { 1.0 }
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .decorZone, .diningZone, .drinkBar, .lightingZone, .multiUse, .servingZone, .storageZone: return true
        }
    }
    
    var spaceTypes: [SpaceTypeBox] {
        switch self {
        case .decorZone, .diningZone, .drinkBar, .lightingZone, .multiUse, .servingZone, .storageZone:
            return [
                SpaceTypeBox(DiningRoomSpaceType.centerpieceDecor)!,
                SpaceTypeBox(DiningRoomSpaceType.chairsSeating)!,
                SpaceTypeBox(DiningRoomSpaceType.diningTable)!
            ]
        }
    }
    
    static var allRoomTypes: [any RoomType] {
        return DiningRoomType.allCases.map { $0 as any RoomType}
    }
}
enum BathroomRoomType: String, Codable, CaseIterable, Identifiable, RoomType {
    case bathingZone = "Bathing Zone"
    case toiletZone = "Toilet Zone"
    case vanitySinkZone = "Vanity Sink Zone"
    case towelToiletries = "Towel Toiletries"
    case groomingZone = "Grooming Zone"
    case laundryZone = "Laundry Zone"
    case dressingZone = "Dressing Zone"
    case cleaningZone = "Cleaning Zone"
    case relaxationZone = "Relaxation Zone"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .bathingZone: return "Bathing Zone"
        case .toiletZone: return "Toilet Zone"
        case .vanitySinkZone: return "Vanity Sink Zone"
        case .towelToiletries: return "Towel Toiletries"
        case .groomingZone: return "Grooming Zone"
        case .laundryZone: return "Laundry Zone"
        case .dressingZone: return "Dressing Zone"
        case .cleaningZone: return "Cleaning Zone"
        case .relaxationZone: return "Relaxation Zone"
        }
    }
    var usageDescription: String {
        switch self {
        case .bathingZone: return "Bathing/Showering Zone: This zone includes the shower, bathtub, or a combination of both. It’s where you focus on personal hygiene, so it should be equipped with essentials like shower gels, soaps, shampoos, and towels. In more luxurious setups, this zone may also include a spa-like showerhead, soaking tub, or body jets."
        case .toiletZone: return "Toileting Zone: The toilet area is often separated for privacy, either by a partial wall, door, or alcove. It might include storage for toilet paper, cleaning supplies, and hygiene products."
        case .vanitySinkZone: return "Vanity/Sink Zone: This area is typically where the sink and vanity are located. It’s a multipurpose zone for brushing teeth, washing hands, and grooming. The vanity often has storage for toiletries, skincare products, and makeup, and the sink area may include mirrors, lighting, and space for daily use items."
        case .towelToiletries: return "Storage Zone (Towels/Toiletries): A dedicated space for storing towels, washcloths, bathrobes, and extra toiletries is essential. This zone may include linen closets, shelving, or cabinets for organized storage of bathroom necessities."
        case .groomingZone: return "Storage Zone (Towels/Toiletries): A dedicated space for storing towels, washcloths, bathrobes, and extra toiletries is essential. This zone may include linen closets, shelving, or cabinets for organized storage of bathroom necessities."
        case .laundryZone: return "Laundry Zone: In some bathrooms, a laundry zone might be incorporated with a hamper for dirty clothes, and in larger setups, you might find a washer and dryer. This area is useful for keeping clothes organized and out of sight."
        case .dressingZone: return "Dressing/Changing Zone: Some bathrooms are designed with enough space to serve as a dressing room. This zone might include a bench or chair, mirrors, and storage for clothes or accessories, providing a convenient spot for getting dressed after bathing."
        case .cleaningZone: return "Cleaning Supply Zone: A small space dedicated to storing cleaning products, brushes, or other maintenance tools for the bathroom can keep the area tidy and organized. This is often located in under-sink cabinets or closets."
        case .relaxationZone: return "Relaxation Zone: In luxurious or spa-inspired bathrooms, there may be a dedicated relaxation area with features like candles, bath salts, and soft lighting, aimed at creating a calming environment for unwinding."
        }
    }
    var weight: Double { 4.0 }
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .bathingZone, .cleaningZone, .dressingZone, .groomingZone, .laundryZone, .relaxationZone, .toiletZone, .towelToiletries, .vanitySinkZone: return true
        }
    }
    
    var spaceTypes: [SpaceTypeBox] {
        switch self {
        case .bathingZone, .cleaningZone, .dressingZone, .groomingZone, .laundryZone, .relaxationZone, .toiletZone, .towelToiletries, .vanitySinkZone:
            return [
                SpaceTypeBox(BathroomSpaceType.bathtubArea)!,
                SpaceTypeBox(BathroomSpaceType.showerArea)!,
                SpaceTypeBox(BathroomSpaceType.showerCurtainDoor)!
            ]
        }
    }
    
    static var allRoomTypes: [any RoomType] {
        return BathroomRoomType.allCases.map { $0 as any RoomType}
    }
}

enum LivingRoomType: String, Codable, CaseIterable, Identifiable, RoomType {
    case seatingSpace = "Seating Space"
    case entertainSpace = "Entertain Space"
    case relaxationSpace = "Relaxation Space"
    case storageSpace = "Storage Space"
    case workStudySpace = "Work Study Space"
    case decorativeSpace = "Decorative Space"
    case playSpace = "Play Space"
    case converseSpace = "Converse Space"
    case lightingSpace = "Lighting Space"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .seatingSpace: return "Seating Space"
        case .entertainSpace: return "Entertain Space"
        case .relaxationSpace: return "Relaxation Space"
        case .storageSpace: return "Storage Space"
        case .workStudySpace: return "Work Study Space"
        case .decorativeSpace: return "Decorative Space"
        case .playSpace: return "Play Space"
        case .converseSpace: return "Converse Space"
        case .lightingSpace: return "Lighting Space"
        }
    }
    var usageDescription: String {
        switch self {
        case .seatingSpace:
            return "Seating Space: This is the main area for sitting and relaxing, typically centered around a sofa, chairs, or sectional. It may also include coffee tables, side tables, and entertainment centers. This is where most of the lounging, conversations, and TV watching happens."
        case .entertainSpace:
            return "Entertain Space: This zone is focused on media and entertainment, often featuring a TV, sound system, gaming console, or bookshelf. It might also include storage for remotes, controllers, or movies. This zone is often aligned with the seating area for optimal viewing."
        case .relaxationSpace:
            return "Relaxation Space: A cozy corner or nook with a comfortable chair, ottoman, or chaise lounge and good lighting can serve as a dedicated reading area. This zone might also include a small side table for books or a cup of coffee and a lamp for task lighting."
        case .storageSpace:
            return "Storage Space: This area is for organizing and storing items like blankets, pillows, books, and toys. It could feature shelves, cabinets, or storage baskets discreetly placed throughout the room to keep it tidy and organized."
        case .workStudySpace:
            return "Work/Study Space: In modern living rooms, this zone may include a small desk, laptop station, or a designated area for remote work or study. It’s often tucked into a corner or along a wall to minimize disruption to the main living space."
        case .decorativeSpace:
            return "Decorative Space: This zone is for displaying art, plants, or personal items that enhance the ambiance of the room. It might include a mantle, floating shelves, or decorative tables where plants, sculptures, candles, or picture frames are displayed."
        case .playSpace:
            return "Play Space (for kids or pets): If you have children or pets, this zone is designated for their toys and activities. It could be a corner with a toy bin or a small rug where kids can play while still being part of the living room activities."
        case .converseSpace:
            return "Conversation Space: While the seating area might also function as a conversation zone, in larger living rooms, you can create a separate, more intimate space for conversations. It could feature two armchairs and a small table, placed away from the TV for a quieter, social area."
        case .lightingSpace:
            return "Lighting Space: Lighting zones are key in living rooms to set different moods. Overhead lighting like chandeliers or recessed lighting, combined with table lamps or floor lamps, can define different areas for different activities, such as reading or watching TV."
        }
    }
    var weight: Double { 2.0 }
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .converseSpace, .decorativeSpace, .entertainSpace, .lightingSpace, .playSpace, .relaxationSpace, .seatingSpace, .storageSpace, .workStudySpace: return true
        }
    }
    
    var spaceTypes: [SpaceTypeBox] {
        switch self {
        case .converseSpace, .decorativeSpace, .entertainSpace, .lightingSpace, .playSpace, .relaxationSpace, .seatingSpace, .storageSpace, .workStudySpace:
            return [
                SpaceTypeBox(LivingRoomSpaceType.accentChairsOttomans)!,
                SpaceTypeBox(LivingRoomSpaceType.mainSeating)!,
                SpaceTypeBox(LivingRoomSpaceType.sideTables)!,
                SpaceTypeBox(LivingRoomSpaceType.throwPillowBlankets)!
            ]
        }
    }
    
    static var allRoomTypes: [any RoomType] {
        return LivingRoomType.allCases.map { $0 as any RoomType}
    }
}
enum BedroomRoomType: String, Codable, CaseIterable, Identifiable, RoomType {
    case sleepingZone = "Sleeping Zone"
    case dresser = "Dresser"
    case closet = "Closet"
    case readingZone = "Reading Zone"
    case studyZone = "Study Zone"
    case entertainment = "Entertainment"
    case personalVanity = "Personal Vanity"
    case moodLighting = "Mood Lighting"
    case underBed = "Under-Bed"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .sleepingZone:
            return "This is a sleeping zone. It's a great place to relax and unwind."
        case .dresser:
            return "This is a storage zone. It's a great place to store your belongings."
        case .closet:
            return "This is a dressing zone. It's a great place to dress up and look your best."
        case .readingZone:
            return "This is a reading/relaxation zone. It's a great place to read and relax."
        case .studyZone:
            return "This is a work/study zone. It's a great place to work and study."
        case .entertainment:
            return "This is an entertainment space. It's a great place to entertain yourself."
        case .personalVanity:
            return "This is a vanity/grooming zone. It's a great place to groom yourself."
        case .moodLighting:
            return "This is a lighting zone. It's a great place to light up your space."
        case .underBed:
            return "This is a storage zone. It's a great place to store your belongings."
        }
    }
    var usageDescription: String {
        switch self {
        case .sleepingZone:
            return "Sleeping Zone: The main zone, where the bed is placed, typically includes nightstands, bedside lamps, and anything else related to sleep. This area should be peaceful and free of distractions to promote relaxation and rest."
        case .dresser:
            return "Storage Zone (Clothing): This zone includes closets, dressers, or wardrobes for storing clothes, shoes, and accessories. Organizing your clothing by type or season can make this zone more efficient and easy to use."
        case .closet:
            return "Dressing Zone: Often combined with the storage zone, this area is where you get dressed. It could include a mirror, seating (like a chair or bench), and easy access to clothes and accessories."
        case .readingZone:
            return "Reading/Relaxation Zone: A cozy spot with a comfortable chair or small sofa, perfect for reading, relaxing, or having a quiet moment. This zone might also include a small table for books, a reading lamp, and a blanket for extra comfort."
        case .studyZone:
            return "Work/Study Zone: In some bedrooms, especially multipurpose ones, a small desk or workspace is set up for working or studying. This zone should be separate from the sleeping area to maintain a distinction between rest and productivity."
        case .entertainment:
            return "Entertainment: If you have a TV, speakers, or other media devices, this area is dedicated to entertainment. It could include a media console or stand for organizing electronics and remotes."
        case .personalVanity:
            return "Vanity/Grooming Zone: This zone includes a vanity table with a mirror for personal grooming and makeup application. It might include storage for cosmetics, hair products, and other grooming essentials."
        case .moodLighting:
            return "Lighting Zone: Different lighting options can create specific zones for tasks. Overhead lights, bedside lamps, reading lights, and ambient lighting help define areas for sleep, reading, or relaxation."
        case .underBed:
            return "Storage Zone (Linens/Extras): A designated space for storing extra blankets, pillows, sheets, and seasonal items. This can be in the form of under-bed storage, linen closets, or shelving units."
        }
    }
    var weight: Double { 3.0 }
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .closet, .dresser, .entertainment, .moodLighting, .personalVanity, .readingZone, .sleepingZone, .studyZone, .underBed: return true
        }
    }
    
    var spaceTypes: [SpaceTypeBox] {
        switch self {
        case .closet, .dresser, .entertainment, .moodLighting, .personalVanity, .readingZone, .sleepingZone, .studyZone, .underBed:
            return [
                SpaceTypeBox(BedroomSpaceType.bedding)!,
                SpaceTypeBox(BedroomSpaceType.bedsideArea)!,
                SpaceTypeBox(BedroomSpaceType.headboard)!,
                SpaceTypeBox(BedroomSpaceType.underStorage)!
            ]
        }
    }
    
    static var allRoomTypes: [any RoomType] {
        return BedroomRoomType.allCases.map { $0 as any RoomType}
    }
}
enum StorageRoomType: String, Codable, CaseIterable, Identifiable, RoomType {
    case closetsZone = "Closets"
    case utilityRoomZone = "Utility Room"
    case atticBasementZone = "Attic Basement"
    case pantryZone = "Pantry"
    case laundryRoomZone = "Laundry Room"
    case mudroom = "Mudroom"
    case cabinetsShelving = "Cabinets"
    case underBedStorageZone = "UnderBed"
    case builtInsWallUnitsStorageZone = "Built-Ins"
    case homeOfficeStorageZone = "Office Storage"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String {
        switch self {
        case .closetsZone: return "String"
        case .utilityRoomZone: return "String"
        case .atticBasementZone: return "String"
        case .pantryZone: return "String"
        case .laundryRoomZone: return "String"
        case .mudroom: return "String"
        case .cabinetsShelving: return "String"
        case .underBedStorageZone: return "String"
        case .builtInsWallUnitsStorageZone: return "String"
        case .homeOfficeStorageZone: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .closetsZone: return "Closets: Closets are primary storage areas found in bedrooms, hallways, or entryways. They can be used for clothes, shoes, linens, coats, and seasonal items. Organized with shelves, drawers, and racks, they help maximize storage capacity."
        case .utilityRoomZone: return "Garage/Utility Room: These zones are often used for larger storage needs, such as tools, outdoor equipment, sporting gear, and seasonal decorations. Shelving units, cabinets, and wall-mounted systems can help organize these areas effectively."
        case .atticBasementZone: return "Attic/Basement: Attics and basements are typically used for long-term storage, such as keepsakes, holiday decorations, old furniture, or memorabilia. These zones benefit from durable shelving and labeled storage bins to keep things organized and accessible."
        case .pantryZone: return "Pantry: A kitchen pantry is a food storage zone that can also house small appliances, cookware, and kitchen supplies. Well-organized pantries use shelves, pull-out drawers, and labeled containers to make finding ingredients and supplies easier."
        case .laundryRoomZone: return "Laundry Room: The laundry room often serves as a storage zone for cleaning supplies, detergents, and laundry baskets. Cabinets, shelves, and hooks help to keep these items organized and out of sight."
        case .mudroom: return "Mudroom/Entryway: This zone serves as storage for shoes, coats, bags, and outdoor accessories. Hooks, cubbies, and benches with storage can help keep this space tidy and functional, especially for households with children or pets."
        case .cabinetsShelving: return "Cabinets/Shelving Units: Throughout the home, cabinets and shelves serve as versatile storage zones in living rooms, dining rooms, and bathrooms. These areas can hold anything from books and decor to towels, toiletries, and electronics."
        case .underBedStorageZone: return "Under-Bed Storage: In bedrooms, the space under the bed can be a useful storage zone for out-of-season clothes, shoes, or extra bedding. Storage bins or roll-out drawers make the most of this hidden area."
        case .builtInsWallUnitsStorageZone: return "Built-In Storage/Wall Units: Built-ins like entertainment centers, bookcases, or wall units are often used to store electronics, books, and personal items, helping to reduce clutter in living spaces."
        case .homeOfficeStorageZone: return "Home Office Storage: For paperwork, office supplies, and electronics, a home office often features cabinets, filing drawers, and bookshelves. Keeping this zone organized with labeled files and trays helps maintain productivity."
        }
    }
    var weight: Double { 4.0 }
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .atticBasementZone, .builtInsWallUnitsStorageZone, .cabinetsShelving, .closetsZone, .homeOfficeStorageZone, .laundryRoomZone, .mudroom, .pantryZone, .underBedStorageZone, .utilityRoomZone: return true
        }
    }
    
    var spaceTypes: [SpaceTypeBox] {
        switch self {
        case .atticBasementZone, .builtInsWallUnitsStorageZone, .cabinetsShelving, .closetsZone, .homeOfficeStorageZone, .laundryRoomZone, .mudroom, .pantryZone, .underBedStorageZone, .utilityRoomZone:
            return [
                SpaceTypeBox(StorageSpaceType.hangingSpace)!,
                SpaceTypeBox(StorageSpaceType.overheadStorage)!,
                SpaceTypeBox(StorageSpaceType.shelves)!,
                SpaceTypeBox(StorageSpaceType.shoeRack)!
            ]
        }
    }
    
    static var allRoomTypes: [any RoomType] {
        return StorageRoomType.allCases.map { $0 as any RoomType}
    }
}
enum OfficeRoomType: String, Codable, CaseIterable, Identifiable, RoomType {
    case workstation = "Workstation"
    case storageZones = "Storage Zones"
    case technologyZone = "Technology Zone"
    case meetingCollaborationZone = "Collaboration Zone"
    case readingStudyZone = "Reading Study Zone"
    case inspirationZone = "Inspiration Zone"
    case mailDocumentHandling = "Mail Documents"
    case referenceZone = "Reference Zone"
    case breakRelaxationZone = "Break Relaxation Zone"
    case taskLighting = "Task Lighting"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String {
        switch self {
        case .workstation: return "Workstation"
        case .storageZones: return "Storage Zones"
        case .technologyZone: return "Technology Zone"
        case .meetingCollaborationZone: return "Collaboration Zone"
        case .readingStudyZone: return "Reading Study Zone"
        case .inspirationZone: return "Inspiration Zone"
        case .mailDocumentHandling: return "Mail Documents"
        case .referenceZone: return "Reference Zone"
        case .breakRelaxationZone: return "Break Relaxation Zone"
        case .taskLighting: return "Lighting Zone"
        }
    }
    var usageDescription: String {
        switch self {
        case .workstation: return "Workstation: This is the primary area where the desk, computer, and chair are located. It should be ergonomically arranged for comfort, with adequate lighting and enough space for your computer, documents, and other work essentials."
        case .storageZones: return "Storage Zones: A storage area for files, office supplies, and reference materials. This zone could include filing cabinets, shelves, and storage bins. Proper organization, like labeled folders or binders, helps keep the workspace clutter-free."
        case .technologyZone: return "Technology Zone: This zone is for housing technology like printers, scanners, routers, and chargers. Keeping these items in one spot can minimize cord clutter and make it easy to access necessary equipment when needed."
        case .meetingCollaborationZone: return "Meeting/Collaboration Zone: If your home office is used for virtual meetings or collaboration, a designated area for this is useful. This zone could include a comfortable chair, a webcam, and good lighting, with the background organized and professional for video calls."
        case .readingStudyZone: return "Reading/Study Zone: A separate seating area with a comfortable chair and good lighting for reading, reviewing documents, or brainstorming. It could also feature a small table or a side table to keep books, notepads, and pens within reach."
        case .inspirationZone: return "Inspiration Zone: For creative professionals, having a zone dedicated to brainstorming or artistic work can be helpful. This space might include a whiteboard, corkboard, or an art station for sketching ideas, planning, or visualizing projects."
        case .mailDocumentHandling: return "Mail/Document Handling: An area for sorting mail, incoming documents, and outgoing paperwork. A small desk organizer, wall-mounted file system, or trays can keep things orderly and prevent papers from piling up."
        case .referenceZone: return "Reference Zone: A dedicated area for books, manuals, or research materials. This zone could include bookshelves, a rolling cart, or a dedicated shelf near the desk for easy access to frequently used materials."
        case .breakRelaxationZone: return "Break/Relaxation Zone: If space allows, a small area for short breaks can improve productivity. A comfortable chair, small sofa, or even a standing area where you can stretch or relax briefly might be beneficial for mental health and focus."
        case .taskLighting: return "Lighting Zone: Proper lighting is essential for reducing eye strain and improving focus. The lighting zone could include task lighting, ambient lighting, and natural light sources. Desk lamps, floor lamps, or strategically placed windows can define this zone."
        }
    }
    var weight: Double { 3.0 }
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .breakRelaxationZone, .inspirationZone, .mailDocumentHandling, .meetingCollaborationZone, .readingStudyZone, .referenceZone, .storageZones, .taskLighting, .technologyZone, .workstation: return true
        }
    }
    var spaceTypes: [SpaceTypeBox] {
        switch self {
        case .breakRelaxationZone, .inspirationZone, .mailDocumentHandling, .meetingCollaborationZone, .readingStudyZone, .referenceZone, .storageZones, .taskLighting, .technologyZone, .workstation:
            return [
                SpaceTypeBox(OfficeSpaceType.chair)!,
                SpaceTypeBox(OfficeSpaceType.deskSurface)!,
                SpaceTypeBox(OfficeSpaceType.monitorSetup)!,
                SpaceTypeBox(OfficeSpaceType.taskLighting)!
            ]
        }
    }
    
    static var allRoomTypes: [any RoomType] {
        return OfficeRoomType.allCases.map { $0 as any RoomType}
    }
}
enum GarageRoomType: String, Codable, CaseIterable, Identifiable, RoomType {
    case parkingZone = "Parking Zone"
    case toolZone = "Tool Zone"
    case gardenOutdoorZone = "Garden Zone"
    case sportsActivityGearZone = "Gear Zone"
    case seasonalStorageZone = "Seasonal Storage"
    case householdStorageZone = "Household zone"
    case wasteRecyclingZone = "Waste Recycling"
    case maintenanceZone = "Maintenance"
    case mudroomLaundryZone = "Mudroom Laundry"
    case overheadStorageZone = "Overhead Storage"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .parkingZone: return "String"
        case .toolZone: return "String"
        case .gardenOutdoorZone: return "String"
        case .sportsActivityGearZone: return "String"
        case .seasonalStorageZone: return "String"
        case .householdStorageZone: return "String"
        case .wasteRecyclingZone: return "String"
        case .maintenanceZone: return "String"
        case .mudroomLaundryZone: return "String"
        case .overheadStorageZone: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .parkingZone: return "String"
        case .toolZone: return "String"
        case .gardenOutdoorZone: return "String"
        case .sportsActivityGearZone: return "String"
        case .seasonalStorageZone: return "String"
        case .householdStorageZone: return "String"
        case .wasteRecyclingZone: return "String"
        case .maintenanceZone: return "String"
        case .mudroomLaundryZone: return "String"
        case .overheadStorageZone: return "String"
    }
}
    var weight: Double { 5.0 }
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .gardenOutdoorZone, .householdStorageZone, .maintenanceZone, .mudroomLaundryZone, .overheadStorageZone, .parkingZone, .seasonalStorageZone, .sportsActivityGearZone, .toolZone, .wasteRecyclingZone: return true
        }
    }
    
    var spaceTypes: [SpaceTypeBox] {
        switch self {
        case .gardenOutdoorZone, .householdStorageZone, .maintenanceZone, .mudroomLaundryZone, .overheadStorageZone, .parkingZone, .seasonalStorageZone, .sportsActivityGearZone, .toolZone, .wasteRecyclingZone:
            return [
                SpaceTypeBox(GarageSpaceType.carCleaningSupplies)!,
                SpaceTypeBox(GarageSpaceType.garageDoorArea)!,
                SpaceTypeBox(GarageSpaceType.vehicleParking)!
               
            ]
        }
    }
    
    static var allRoomTypes: [any RoomType] {
        return GarageRoomType.allCases.map { $0 as any RoomType}
    }
}

enum PlayroomRoomType: String, Codable, CaseIterable, Identifiable,  RoomType {
    
    case toyStorageZone = "Toy Storage Zone"
    case artsCraftZone = "Arts & Crafts Zone"
    case readingQuietZone = "Reading Quiet Zone"
    case buildingConstructionZone = "Building Construction Zone"
    case pretendPlayZone = "Pretend Play Zone"
    case puzzleBoardGameZone = "Puzzle Board Game Zone"
    case physicalActivityZone = "Physical Activity Zone"
    case musicPerformanceZone = "Music Performance Zone"
    case sensoryPlayZone = "Sensory Play Zone"
    case homeworkStudyZone = "Homework Study Zone"
    case technologyScreenZone = "Technology Screen Zone"
    case outdoorPlayZone = "Outdoor Play Zone"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .toyStorageZone: return "String"
        case .artsCraftZone: return "String"
        case .readingQuietZone: return "String"
        case .buildingConstructionZone: return "String"
        case .pretendPlayZone: return "String"
        case .puzzleBoardGameZone: return "String"
        case .physicalActivityZone: return "String"
        case .musicPerformanceZone: return "String"
        case .sensoryPlayZone: return "String"
        case .homeworkStudyZone: return "String"
        case .technologyScreenZone: return "String"
        case .outdoorPlayZone: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .toyStorageZone: return "Toy Storage Zone: This area is dedicated to organizing and storing toys. It can include shelves, bins, baskets, or cubbies where toys are categorized by type (e.g., dolls, cars, building blocks). Labeling bins can help children learn to clean up and keep things organized."
        case .artsCraftZone: return "Arts and Crafts Zone: A designated space for creativity where children can draw, paint, and create crafts. It might include a table, chairs, and storage for art supplies like markers, crayons, paper, glue, and scissors. Easy-to-clean surfaces are a good idea for this area."
        case .readingQuietZone: return "Reading/Quiet Zone: A cozy corner with soft seating, like a beanbag or small sofa, for reading and quiet activities. This zone could feature bookshelves or a small bookcase with age-appropriate books, creating a peaceful space for children to enjoy stories."
        case .buildingConstructionZone: return "Reading/Quiet Zone: A cozy corner with soft seating, like a beanbag or small sofa, for reading and quiet activities. This zone could feature bookshelves or a small bookcase with age-appropriate books, creating a peaceful space for children to enjoy stories."
        case .pretendPlayZone: return "Reading/Quiet Zone: A cozy corner with soft seating, like a beanbag or small sofa, for reading and quiet activities. This zone could feature bookshelves or a small bookcase with age-appropriate books, creating a peaceful space for children to enjoy stories."
        case .puzzleBoardGameZone: return "Puzzle and Board Game Zone: A zone for puzzles and board games that could include a small table and seating for playing these activities. Shelves or bins can organize board games and puzzle pieces, making them easy to access and put away."
        case .physicalActivityZone: return "Physical Activity Zone: A space where children can be active. It could include soft play mats, climbing structures, balance beams, or even small trampolines or swings (if space allows). This area promotes movement and physical play."
        case .musicPerformanceZone: return "Music and Performance Zone: If your child enjoys music or performing, this zone can include musical instruments like a keyboard, drums, or maracas, as well as a stage area for pretend performances. It encourages creativity and expression."
        case .sensoryPlayZone: return "Sensory Play Zone: A zone for sensory activities, ideal for younger children or those who benefit from tactile play. It can include a sand or water table, sensory bins filled with different textures (like rice or beans), or interactive sensory walls."
        case .homeworkStudyZone: return "Homework/Study Zone: A quiet area for older children to work on homework or educational activities. This zone can feature a small desk, chair, and storage for school supplies like pencils, paper, and books. A calm environment helps with focus and learning."
        case .technologyScreenZone: return "Technology/Screen Zone: If the playroom includes technology such as tablets, computers, or a TV, this zone should be a designated area with comfortable seating for screen time. It’s important to set boundaries for screen use to balance it with other activities."
        case .outdoorPlayZone: return "Outdoor Play Zone (if space allows): If the playroom opens to an outdoor space, you can create an outdoor play zone with sandboxes, playhouses, or ride-on toys. This area encourages outdoor exploration and active play in nature."
        }
    }
    var weight: Double { 3.0 }
    
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .artsCraftZone, .buildingConstructionZone, .homeworkStudyZone, .musicPerformanceZone, .outdoorPlayZone, .physicalActivityZone, .pretendPlayZone, .puzzleBoardGameZone, .readingQuietZone, .sensoryPlayZone, .technologyScreenZone, .toyStorageZone: return true
        }
    }
    
    var spaceTypes: [SpaceTypeBox] {
        switch self {
        case .artsCraftZone, .buildingConstructionZone, .homeworkStudyZone, .musicPerformanceZone, .outdoorPlayZone, .physicalActivityZone, .pretendPlayZone, .puzzleBoardGameZone, .readingQuietZone, .sensoryPlayZone, .technologyScreenZone, .toyStorageZone:
            return [
                SpaceTypeBox(PlayroomSpaceType.rotationalStorage)!,
                SpaceTypeBox(PlayroomSpaceType.shelvingUnits)!,
                SpaceTypeBox(PlayroomSpaceType.toyBins)!,
                SpaceTypeBox(PlayroomSpaceType.toyChestTrunks)!
               
            ]
        }
    }
    
    static var allRoomTypes: [any RoomType] {
        return PlayroomRoomType.allCases.map { $0 as any RoomType}
    }
}

enum UnknownRoomType: String, Codable, CaseIterable, Identifiable,  RoomType {
    
    
    case unknown
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String { "unknown" }
    var usageDescription: String { "unknown" }
    var weight: Double { 0.0 }
    var spaceTypes: [SpaceTypeBox] { [] }
    var progress: Double { 0.0 }
    var isCompleted: Bool { false }
    
    static var allRoomTypes: [any RoomType] {
        return UnknownRoomType.allCases.map { $0 as any RoomType}
    }
}






