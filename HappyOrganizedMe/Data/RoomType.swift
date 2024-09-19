//
//  RoomType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation



enum KitchenRoomType: String, RoomType  {
    case prepZone = "Prep Zone"
    case cookingZone = "Cooking Zone"
    case cleaningZone = "Cleaning Zone"
    case foodStorageZone = "Food Storage Zone"
    case cookwareStorageZone = "Cookware Storage Zone"
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
        case .cookwareStorageZone:
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
        case .cookwareStorageZone:
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
    var type: String { "Kitchen" }
    var category: String { "Furniture" }
    
    var spaceTypes: [any SpaceType] {
        switch self {
        case .prepZone:
            return [
                KitchenPrepZoneSpaceType.prepZoneCountertops, KitchenPrepZoneSpaceType.prepZoneCuttingBoards, KitchenPrepZoneSpaceType.prepZoneUtensils, KitchenPrepZoneSpaceType.prepZoneAppliances, KitchenPrepZoneSpaceType.prepZoneSpiceRacks
            ]
        case .cookingZone:
            return [
                KitchenCookingZoneSpaceType.cookingZoneStovetop, KitchenCookingZoneSpaceType.cookingZoneOven, KitchenCookingZoneSpaceType.cookingZone, KitchenCookingZoneSpaceType.cookingZoneUtensils,
                KitchenCookingZoneSpaceType.cookingZonePantryEssentials,
                KitchenCookingZoneSpaceType.cookingZoneVentilation
            ]
        case .cleaningZone:
            return [
                KitchenCleaningZoneSpaceType.cleaningZoneSink, KitchenCleaningZoneSpaceType.cleaningZoneDishwasher,
                KitchenCleaningZoneSpaceType.cleaningZoneTrashRecycling, KitchenCleaningZoneSpaceType.cleaningZoneCleaningSupplies,
                KitchenCleaningZoneSpaceType.cleaningZoneTowelHookStorage, KitchenCleaningZoneSpaceType.cleaningZoneSoapDispenser
            ]
        case .foodStorageZone:
            return [
                KitchenFoodStorageZoneSpaceType.foodStorageZonePantry, KitchenFoodStorageZoneSpaceType.foodStorageZoneRefrigerator,
                KitchenFoodStorageZoneSpaceType.foodStorageZoneFreezer,
                KitchenFoodStorageZoneSpaceType.foodStorageZoneSnacks,
                KitchenFoodStorageZoneSpaceType.foodStorageZoneBulkBins,
                KitchenFoodStorageZoneSpaceType.foodStorageZoneCondiments
            ]
        case .cookwareStorageZone:
            return [
                KitchenCookwareZoneSpaceType.cookwareZoneDrawers, KitchenCookwareZoneSpaceType.cookwareZonePotsAndPans,
                KitchenCookwareZoneSpaceType.cookwareZoneBakingSheets, KitchenCookwareZoneSpaceType.cookwareZoneLids,
                KitchenCookwareZoneSpaceType.cookwareZoneSpecialtyEquipment
            ]
        case .servingZone:
            return [
                KitchenServingZoneSpaceType.servingZonePlatesBowls, KitchenServingZoneSpaceType.servingZoneGlassesStemware,
                KitchenServingZoneSpaceType.servingZoneSilverware,
                KitchenServingZoneSpaceType.servingZoneTableLinens,
                KitchenServingZoneSpaceType.servingZoneServeWare
            ]
        case .bakingZone:
            return [
                KitchenBakingZoneSpaceType.bakingZoneBakingSupplies, KitchenBakingZoneSpaceType.bakingZoneIngredients,
                KitchenBakingZoneSpaceType.bakingZoneMixerTools
            ]
        case .drinkZone:
            return [
                KitchenDrinkZoneSpaceType.drinkZoneKettles, KitchenDrinkZoneSpaceType.drinkZoneMugsTravelMugs,
                KitchenDrinkZoneSpaceType.drinkZoneSupplies
            ]
        }
    }
    
    // Provide all cases statically
    static var allRoomTypes: [KitchenRoomType] {
        return KitchenRoomType.allCases
    }
}
enum DiningRoomType: String, RoomType {
    
    case diningZone = "Dining Room"
    case servingZone = "Serving Zone"
    case storageZone = "Storage Zone"
    case decorDisplayZone = "Decor Display Zone"
    case multiUseZone = "Multi-Use Zone"
    case lightingZone = "Lighting Zone"
    case drinkBarZone = "Drink Bar Zone"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .diningZone: return "String"
        case .servingZone: return "String"
        case .storageZone: return "String"
        case .decorDisplayZone: return "String"
        case .multiUseZone: return "String"
        case .lightingZone: return "String"
        case .drinkBarZone: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .diningZone: return "Dining Zone: This is the primary area, featuring the dining table and chairs. It’s where meals are served and eaten. Ideally, this zone is centrally located with enough space for seating and movement."
        case .servingZone: return "Serving Zone: This area is dedicated to serving food and beverages. It might include a buffet table, sideboard, or a serving cart where dishes, drinks, and utensils are placed before or during the meal."
        case .storageZone: return "Storage Zone (Tableware): This zone is for storing dining essentials such as dishes, glassware, utensils, and napkins. Cabinets, credenzas, or a china cabinet can be used to store these items when not in use."
        case .decorDisplayZone: return "Decor/Display Zone: Many dining rooms feature decorative zones such as a display shelf, wall art, or a place to showcase items like vases, centerpieces, or plants. This zone adds personality and aesthetic appeal to the room."
        case .multiUseZone: return "Multi-Use Zone: In modern homes, dining rooms can serve multiple purposes. This zone could be used for activities like working, studying, or doing crafts. It might feature a small desk, laptop station, or storage for office supplies when needed."
        case .lightingZone: return "Lighting Zone: Lighting plays an important role in creating ambiance in a dining room. A lighting zone often centers around a chandelier or pendant lights above the dining table. Additional lighting, like floor or table lamps, can define different sections of the room."
        case .drinkBarZone: return "Drinks/Bar Zone: If you entertain guests often, a drink or bar zone could be helpful. This area might include a bar cart or a small cabinet for storing wine, spirits, glassware, and accessories for making and serving drinks."
        }
    }
    var weight: Double { 1.0 }
    var type: String { "Dining Room" }
    var category: String { "Furniture" }
    
    static var allRoomTypes: [DiningRoomType] {
        return DiningRoomType.allCases
    }
}
enum BathroomRoomType: String, RoomType {
    case bathingZone
    case toiletZone
    case vanitySinkZone
    case towelToiletriesZone
    case groomingZone
    case laundryZone
    case dressingChangingZone
    case cleaningSuppliesZone
    case relaxationZone
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .bathingZone: return "Bathing Zone"
        case .toiletZone: return "Toilet Zone"
        case .vanitySinkZone: return "Vanity Sink Zone"
        case .towelToiletriesZone: return "Towel Toiletries Zone"
        case .groomingZone: return "Grooming Zone"
        case .laundryZone: return "Laundry Zone"
        case .dressingChangingZone: return "Dressing Changing Zone"
        case .cleaningSuppliesZone: return "Cleaning Supplies Zone"
        case .relaxationZone: return "Relaxation Zone"
        }
    }
    var usageDescription: String {
        switch self {
        case .bathingZone: return "Bathing/Showering Zone: This zone includes the shower, bathtub, or a combination of both. It’s where you focus on personal hygiene, so it should be equipped with essentials like shower gels, soaps, shampoos, and towels. In more luxurious setups, this zone may also include a spa-like showerhead, soaking tub, or body jets."
        case .toiletZone: return "Toileting Zone: The toilet area is often separated for privacy, either by a partial wall, door, or alcove. It might include storage for toilet paper, cleaning supplies, and hygiene products."
        case .vanitySinkZone: return "Vanity/Sink Zone: This area is typically where the sink and vanity are located. It’s a multipurpose zone for brushing teeth, washing hands, and grooming. The vanity often has storage for toiletries, skincare products, and makeup, and the sink area may include mirrors, lighting, and space for daily use items."
        case .towelToiletriesZone: return "Storage Zone (Towels/Toiletries): A dedicated space for storing towels, washcloths, bathrobes, and extra toiletries is essential. This zone may include linen closets, shelving, or cabinets for organized storage of bathroom necessities."
        case .groomingZone: return "Storage Zone (Towels/Toiletries): A dedicated space for storing towels, washcloths, bathrobes, and extra toiletries is essential. This zone may include linen closets, shelving, or cabinets for organized storage of bathroom necessities."
        case .laundryZone: return "Laundry Zone: In some bathrooms, a laundry zone might be incorporated with a hamper for dirty clothes, and in larger setups, you might find a washer and dryer. This area is useful for keeping clothes organized and out of sight."
        case .dressingChangingZone: return "Dressing/Changing Zone: Some bathrooms are designed with enough space to serve as a dressing room. This zone might include a bench or chair, mirrors, and storage for clothes or accessories, providing a convenient spot for getting dressed after bathing."
        case .cleaningSuppliesZone: return "Cleaning Supply Zone: A small space dedicated to storing cleaning products, brushes, or other maintenance tools for the bathroom can keep the area tidy and organized. This is often located in under-sink cabinets or closets."
        case .relaxationZone: return "Relaxation Zone: In luxurious or spa-inspired bathrooms, there may be a dedicated relaxation area with features like candles, bath salts, and soft lighting, aimed at creating a calming environment for unwinding."
        }
    }
    var weight: Double { 4.0 }
    var type: String { "Bathroom" }
    var category: String { "Furniture" }
    
    static var allRoomTypes: [BathroomRoomType] {
        return BathroomRoomType.allCases
    }
}

enum LivingRoomType: String, RoomType {
    case seatingZone
    case entertainmentZone
    case readingRelaxationZone
    case storageZone
    case workStudyZone
    case decorativeZone
    case playZone
    case conversationZone
    case lightingZone
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String {
        switch self {
        case .seatingZone: return "Seating Zone"
        case .entertainmentZone: return "Entertainment Zone"
        case .readingRelaxationZone: return "Reading & Relaxation Zone"
        case .storageZone: return "Storage Zone"
        case .workStudyZone: return "Work Study Zone"
        case .decorativeZone: return "Decorative Zone"
        case .playZone: return "Play Zone"
        case .conversationZone: return "Conversation Zone"
        case .lightingZone: return "Lighting Zone"
        }
    }
    var usageDescription: String {
        switch self {
        case .seatingZone:
            return "Seating Zone: This is the main area for sitting and relaxing, typically centered around a sofa, chairs, or sectional. It may also include coffee tables, side tables, and entertainment centers. This is where most of the lounging, conversations, and TV watching happens."
        case .entertainmentZone:
            return "Entertainment Zone: This zone is focused on media and entertainment, often featuring a TV, sound system, gaming console, or bookshelf. It might also include storage for remotes, controllers, or movies. This zone is often aligned with the seating area for optimal viewing."
        case .readingRelaxationZone:
            return "Reading/Relaxation Zone: A cozy corner or nook with a comfortable chair, ottoman, or chaise lounge and good lighting can serve as a dedicated reading area. This zone might also include a small side table for books or a cup of coffee and a lamp for task lighting."
        case .storageZone:
            return "Storage Zone: This area is for organizing and storing items like blankets, pillows, books, and toys. It could feature shelves, cabinets, or storage baskets discreetly placed throughout the room to keep it tidy and organized."
        case .workStudyZone:
            return "Work/Study Zone: In modern living rooms, this zone may include a small desk, laptop station, or a designated area for remote work or study. It’s often tucked into a corner or along a wall to minimize disruption to the main living space."
        case .decorativeZone:
            return "Decorative Zone: This zone is for displaying art, plants, or personal items that enhance the ambiance of the room. It might include a mantle, floating shelves, or decorative tables where plants, sculptures, candles, or picture frames are displayed."
        case .playZone:
            return "Play Zone (for kids or pets): If you have children or pets, this zone is designated for their toys and activities. It could be a corner with a toy bin or a small rug where kids can play while still being part of the living room activities."
        case .conversationZone:
            return "Conversation Zone: While the seating area might also function as a conversation zone, in larger living rooms, you can create a separate, more intimate space for conversations. It could feature two armchairs and a small table, placed away from the TV for a quieter, social area."
        case .lightingZone:
            return "Lighting Zone: Lighting zones are key in living rooms to set different moods. Overhead lighting like chandeliers or recessed lighting, combined with table lamps or floor lamps, can define different areas for different activities, such as reading or watching TV."
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Living room" }
    var category: String { "Furniture" }
    
    static var allRoomTypes: [LivingRoomType] {
        return LivingRoomType.allCases
    }
}
enum BedroomRoomType: String, RoomType {
    case sleepingZone = "Sleeping Zone"
    case storageZone = "Storage Zone"
    case dressingZone = "Dressing Zone"
    case readingRelaxationZone = "Reading/Relaxation Zone"
    case workStudyZone = "Work/Study Zone"
    case entertainmentZone = "Entertainment Zone"
    case vanityGroomingZone = "Vanity/Grooming Zone"
    case lightingZone = "Lighting Zone"
    case storageZone2 = "Storage Zone 2"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .sleepingZone:
            return "This is a sleeping zone. It's a great place to relax and unwind."
        case .storageZone:
            return "This is a storage zone. It's a great place to store your belongings."
        case .dressingZone:
            return "This is a dressing zone. It's a great place to dress up and look your best."
        case .readingRelaxationZone:
            return "This is a reading/relaxation zone. It's a great place to read and relax."
        case .workStudyZone:
            return "This is a work/study zone. It's a great place to work and study."
        case .entertainmentZone:
            return "This is an entertainment zone. It's a great place to entertain yourself."
        case .vanityGroomingZone:
            return "This is a vanity/grooming zone. It's a great place to groom yourself."
        case .lightingZone:
            return "This is a lighting zone. It's a great place to light up your space."
        case .storageZone2:
            return "This is a storage zone. It's a great place to store your belongings."
        }
    }
    var usageDescription: String {
        switch self {
        case .sleepingZone:
            return "Sleeping Zone: The main zone, where the bed is placed, typically includes nightstands, bedside lamps, and anything else related to sleep. This area should be peaceful and free of distractions to promote relaxation and rest."
        case .storageZone:
            return "Storage Zone (Clothing): This zone includes closets, dressers, or wardrobes for storing clothes, shoes, and accessories. Organizing your clothing by type or season can make this zone more efficient and easy to use."
        case .dressingZone:
            return "Dressing Zone: Often combined with the storage zone, this area is where you get dressed. It could include a mirror, seating (like a chair or bench), and easy access to clothes and accessories."
        case .readingRelaxationZone:
            return "Reading/Relaxation Zone: A cozy spot with a comfortable chair or small sofa, perfect for reading, relaxing, or having a quiet moment. This zone might also include a small table for books, a reading lamp, and a blanket for extra comfort."
        case .workStudyZone:
            return "Work/Study Zone: In some bedrooms, especially multipurpose ones, a small desk or workspace is set up for working or studying. This zone should be separate from the sleeping area to maintain a distinction between rest and productivity."
        case .entertainmentZone:
            return "Entertainment Zone: If you have a TV, speakers, or other media devices, this area is dedicated to entertainment. It could include a media console or stand for organizing electronics and remotes."
        case .vanityGroomingZone:
            return "Vanity/Grooming Zone: This zone includes a vanity table with a mirror for personal grooming and makeup application. It might include storage for cosmetics, hair products, and other grooming essentials."
        case .lightingZone:
            return "Lighting Zone: Different lighting options can create specific zones for tasks. Overhead lights, bedside lamps, reading lights, and ambient lighting help define areas for sleep, reading, or relaxation."
        case .storageZone2:
            return "Storage Zone (Linens/Extras): A designated space for storing extra blankets, pillows, sheets, and seasonal items. This can be in the form of under-bed storage, linen closets, or shelving units."
        }
    }
    var weight: Double { 3.0 }
    var type: String { "Bedroom" }
    var category: String { "Furniture" }
    
    static var allRoomTypes: [BedroomRoomType] {
        return BedroomRoomType.allCases
    }
}
enum StorageRoomType: String, RoomType {
    case closetsZone = "Closets"
    case utilityRoomZone = "Utility Room"
    case atticBasementZone = "Attic Basement"
    case pantryZone = "Pantry"
    case laundryRoomZone = "Laundry Room"
    case mudroomEntrywayZone = "Mudroom Entryway"
    case cabinetsShelvingZone = "Cabinets/Shelving"
    case underBedStorageZone = "UnderBed Storage"
    case builtInsWallUnitsStorageZone = "Built-Ins/Wall Units"
    case homeOfficeStorageZone = "Home Office Storage"
    
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
        case .mudroomEntrywayZone: return "String"
        case .cabinetsShelvingZone: return "String"
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
        case .mudroomEntrywayZone: return "Mudroom/Entryway: This zone serves as storage for shoes, coats, bags, and outdoor accessories. Hooks, cubbies, and benches with storage can help keep this space tidy and functional, especially for households with children or pets."
        case .cabinetsShelvingZone: return "Cabinets/Shelving Units: Throughout the home, cabinets and shelves serve as versatile storage zones in living rooms, dining rooms, and bathrooms. These areas can hold anything from books and decor to towels, toiletries, and electronics."
        case .underBedStorageZone: return "Under-Bed Storage: In bedrooms, the space under the bed can be a useful storage zone for out-of-season clothes, shoes, or extra bedding. Storage bins or roll-out drawers make the most of this hidden area."
        case .builtInsWallUnitsStorageZone: return "Built-In Storage/Wall Units: Built-ins like entertainment centers, bookcases, or wall units are often used to store electronics, books, and personal items, helping to reduce clutter in living spaces."
        case .homeOfficeStorageZone: return "Home Office Storage: For paperwork, office supplies, and electronics, a home office often features cabinets, filing drawers, and bookshelves. Keeping this zone organized with labeled files and trays helps maintain productivity."
        }
    }
    var weight: Double { 4.0 }
    var type: String { "Storage" }
    var category: String { "Furniture" }
    
    static var allRoomTypes: [StorageRoomType] {
        return StorageRoomType.allCases
    }
}
enum OfficeRoomType: String, RoomType {
    case workstationZone = "Workstation Zone"
    case storageZone = "Storage Zone"
    case technologyZone = "Technology Zone"
    case meetingCollaborationZone = "Collaboration Zone"
    case readingStudyZone = "Reading Study Zone"
    case inspirationCreativeZone = "Inspiration Creative Zone"
    case mailDocumentHandlingZone = "Mail Document Handling Zone"
    case referenceZone = "Reference Zone"
    case breakRelaxationZone = "Break Relaxation Zone"
    case lightingZone = "Lighting Zone"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String {
        switch self {
        case .workstationZone: return "Workstation Zone"
        case .storageZone: return "Storage Zone"
        case .technologyZone: return "Technology Zone"
        case .meetingCollaborationZone: return "Collaboration Zone"
        case .readingStudyZone: return "Reading Study Zone"
        case .inspirationCreativeZone: return "Inspiration Creative Zone"
        case .mailDocumentHandlingZone: return "Mail Document Handling Zone"
        case .referenceZone: return "Reference Zone"
        case .breakRelaxationZone: return "Break Relaxation Zone"
        case .lightingZone: return "Lighting Zone"
        }
    }
    var usageDescription: String {
        switch self {
        case .workstationZone: return "Workstation Zone: This is the primary area where the desk, computer, and chair are located. It should be ergonomically arranged for comfort, with adequate lighting and enough space for your computer, documents, and other work essentials."
        case .storageZone: return "Storage Zone: A storage area for files, office supplies, and reference materials. This zone could include filing cabinets, shelves, and storage bins. Proper organization, like labeled folders or binders, helps keep the workspace clutter-free."
        case .technologyZone: return "Technology Zone: This zone is for housing technology like printers, scanners, routers, and chargers. Keeping these items in one spot can minimize cord clutter and make it easy to access necessary equipment when needed."
        case .meetingCollaborationZone: return "Meeting/Collaboration Zone: If your home office is used for virtual meetings or collaboration, a designated area for this is useful. This zone could include a comfortable chair, a webcam, and good lighting, with the background organized and professional for video calls."
        case .readingStudyZone: return "Reading/Study Zone: A separate seating area with a comfortable chair and good lighting for reading, reviewing documents, or brainstorming. It could also feature a small table or a side table to keep books, notepads, and pens within reach."
        case .inspirationCreativeZone: return "Inspiration/Creative Zone: For creative professionals, having a zone dedicated to brainstorming or artistic work can be helpful. This space might include a whiteboard, corkboard, or an art station for sketching ideas, planning, or visualizing projects."
        case .mailDocumentHandlingZone: return "Mail/Document Handling Zone: An area for sorting mail, incoming documents, and outgoing paperwork. A small desk organizer, wall-mounted file system, or trays can keep things orderly and prevent papers from piling up."
        case .referenceZone: return "Reference Zone: A dedicated area for books, manuals, or research materials. This zone could include bookshelves, a rolling cart, or a dedicated shelf near the desk for easy access to frequently used materials."
        case .breakRelaxationZone: return "Break/Relaxation Zone: If space allows, a small area for short breaks can improve productivity. A comfortable chair, small sofa, or even a standing area where you can stretch or relax briefly might be beneficial for mental health and focus."
        case .lightingZone: return "Lighting Zone: Proper lighting is essential for reducing eye strain and improving focus. The lighting zone could include task lighting, ambient lighting, and natural light sources. Desk lamps, floor lamps, or strategically placed windows can define this zone."
        }
    }
    var weight: Double { 3.0 }
    var type: String { "Office" }
    var category: String { "Furniture" }
    
    static var allRoomTypes: [OfficeRoomType] {
        return OfficeRoomType.allCases
    }
}
enum GarageRoomType: String, RoomType {
    case parkingZone = "Parking Zone"
    case toolZone = "Tool Zone"
    case gardenOutdoorZone = "Garden Outdoor Zone"
    case sportsActivityGearZone = "Sports Activity Gear Zone"
    case seasonalStorageZone = "Seasonal Storage Zone"
    case householdStorageZone = "Household Storage Zone"
    case wasteRecyclingZone = "Waste Recycling Zone"
    case careMaintenanceZone = "Care Maintenance Zone"
    case mudroomLaundryZone = "Mudroom Laundry Zone"
    case overheadStorageZone = "Overhead Storage Zone"
    
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
        case .careMaintenanceZone: return "String"
        case .mudroomLaundryZone: return "String"
        case .overheadStorageZone: return "String"
        }
    }
    var usageDescription: String { "String" }
    var weight: Double { 5.0 }
    var type: String { "Garage" }
    var category: String { "Furniture" }
    
    static var allRoomTypes: [GarageRoomType] {
        return GarageRoomType.allCases
    }
}

enum PlayroomRoomType: String, RoomType {
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
    var type: String { "Playroom" }
    var category: String { "Furniture" }
    
    static var allRoomTypes: [PlayroomRoomType] {
        return PlayroomRoomType.allCases
    }
}

enum UnknownRoomType: String, RoomType {
    case unknown
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String { "unknown" }
    var usageDescription: String { "unknown" }
    var weight: Double { 0.0 }
    var type: String { "unknown" }
    var category: String { "unknown" }
    
    static var allRoomTypes: [UnknownRoomType] {
        return UnknownRoomType.allCases
    }
}






