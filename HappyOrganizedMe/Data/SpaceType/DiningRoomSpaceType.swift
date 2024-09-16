//
//  DiningRoomSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/15/24.
//

import Foundation

protocol DiningRoomSpaceType: SpaceType, Codable, CaseIterable, Identifiable {
    var id: UUID { get }
    var name: String { get }
    var imageName: String { get }
    var instructions: String { get }
    var usageDescription: String { get }
    var weight: Double { get }
    var type: String { get }
    var category: String { get }
    var rawValue: String { get }
    init?(rawValue: String)
}

// MARK: DiningSpaceType

enum DiningRoomDiningZoneSpaceType: String, DiningRoomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case diningTable = "Dining Table"
    case chairsSeating = "Chairs Seating"
    case centerpieceDecor = "Centerpiece Decor"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .diningTable: return "The central space for eating, gathering, and hosting meals. Ensure enough seating for all diners and allow space for movement around the table."
        case .chairsSeating: return "Organize comfortable chairs or benches around the dining table, making sure there’s enough space between them for easy access."
        case .centerpieceDecor: return "The centerpiece, such as a vase, candles, or seasonal decor, adds character to the dining table without obstructing the view across the table."
        }
    }
    var usageDescription: String {
        switch self {
        case .diningTable: return "The dining table is the central gathering spot in the dining room, used for meals, family gatherings, and social events. It provides a surface for placing food, drinks, and table settings. The dining table should be large enough to accommodate the number of guests and proportionate to the room’s size. It serves as the focal point of the dining zone and can also be multifunctional, used for activities like homework or crafts when not in use for meals."
        case .chairsSeating: return "Chairs or seating are arranged around the dining table to provide comfortable places for diners to sit during meals. The seating should be positioned to allow enough space for movement and legroom. Comfortable chairs with cushions or ergonomic design enhance the dining experience, making guests feel relaxed. The style and arrangement of the chairs also contribute to the overall aesthetic of the dining room."
        case .centerpieceDecor: return "Centerpiece decor adds visual interest to the dining table and helps set the tone for gatherings. Whether it’s a vase of flowers, candles, or seasonal decorations, the centerpiece should complement the table’s size and style without obstructing the view between diners. A well-chosen centerpiece enhances the overall ambiance of the dining room, making it feel inviting and thoughtfully designed for meals and special occasions."
        }
    }
    var weight: Double { 3.0 }
    var type: String { "Dining Room" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [DiningRoomDiningZoneSpaceType] {
        return DiningRoomDiningZoneSpaceType.allCases
        }
}

enum DiningRoomServingZoneSpaceType: String, DiningRoomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case buffetTableSideboard = "Buffet Table Sideboard"
    case servingPlattersUtensils = "Serving Platters Utensils"
    case drinkStation = "Drink Station"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .buffetTableSideboard: return "A surface for placing food, drinks, and serving platters during meals or events. It should be easily accessible from the dining table and organized for quick serving."
        case .servingPlattersUtensils: return "Store serving dishes, platters, and utensils nearby to make it convenient for serving food during meals."
        case .drinkStation: return "A dedicated area for water, beverages, or wine bottles, making it easy to serve drinks without interrupting the dining experience."
        }
    }
    var usageDescription: String {
        switch self {
        case .buffetTableSideboard: return "The buffet table or sideboard provides an additional surface for serving food, storing extra dishes, and holding decorative items. It is often used during large gatherings or meals, allowing food to be placed for easy self-service while keeping the dining table uncluttered. This piece of furniture can also offer storage beneath or within for table linens, extra dishware, or cutlery, making it both functional and stylish. The buffet table/sideboard enhances the dining experience by offering a dedicated space for serving and organizing."
        case .servingPlattersUtensils: return "Serving platters and utensils are essential for presenting and distributing food during meals or events. They are typically stored in a nearby cabinet, sideboard, or kitchen for easy access. Platters are used to hold large dishes, appetizers, or sides, while serving utensils, such as spoons, tongs, and ladles, help guests serve themselves. Having these items organized and readily available improves the efficiency of meal service and maintains a polished dining atmosphere."
        case .drinkStation: return "The drink station is a designated area for preparing and serving beverages, including water, wine, cocktails, or coffee. It can be set up on a bar cart, sideboard, or a dedicated section of the dining room. The drink station keeps beverages easily accessible without crowding the dining table, allowing guests to help themselves or for hosts to serve drinks without disrupting the meal. Organized drink stations enhance convenience and add to the overall hospitality of the dining experience."
        }
    }
    var weight: Double { 3.0 }
    var type: String { "Dining Room" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [DiningRoomServingZoneSpaceType] {
        return DiningRoomServingZoneSpaceType.allCases
        }
}

enum DiningRoomStorageZoneSpaceType: String, DiningRoomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case cabinetsDrawers = "Cabinets Drawers"
    case shelvingUnits = "Shelving Units"
    case linenStorage = "Linen Storage"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .cabinetsDrawers: return "Use cabinets or drawers for storing dishes, silverware, table linens, and glassware. Organize by frequency of use and type of item for easy access."
        case .shelvingUnits: return "Open shelves or display cabinets for showcasing decorative dishes, china, or heirloom items, while also keeping everyday items within reach."
        case .linenStorage: return "Designate a specific space for tablecloths, napkins, placemats, and other linens, neatly folded or rolled to avoid wrinkles."
        }
    }
    var usageDescription: String {
        switch self {
        case .cabinetsDrawers: return "Cabinets and drawers are essential storage solutions for organizing dishes, silverware, glassware, and other dining essentials. Cabinets offer concealed storage, keeping items out of sight for a clean, uncluttered look, while drawers provide easy access to smaller items like utensils, napkin rings, or placemats. Properly organized cabinets and drawers ensure that everything needed for setting the table or serving meals is readily available, helping to maintain an orderly and efficient dining room."
        case .shelvingUnits: return "Shelving units provide open storage for displaying decorative items, special dishware, or glassware, while also offering space for easy access to frequently used items. They can be wall-mounted or free-standing, depending on the room’s layout. Open shelving creates an opportunity to showcase decorative pieces, adding both function and style to the dining room. Properly arranged shelves help keep the space visually balanced and organized."
        case .linenStorage: return "Linen storage is used to keep tablecloths, napkins, placemats, and other dining linens neatly folded and organized. Linens should be stored in a dedicated drawer, cabinet, or linen closet to prevent wrinkles and ensure easy access when setting the table. Having a designated area for linens helps maintain their quality, keeps the dining room organized, and ensures that everything needed for formal or casual meals is easily accessible."
        }
    }
    var weight: Double { 3.0 }
    var type: String { "Dining Room" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [DiningRoomStorageZoneSpaceType] {
        return DiningRoomStorageZoneSpaceType.allCases
        }
}

enum DiningRoomDecorDisplayZoneSpaceType: String, DiningRoomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case wallArtFrames = "Wall Art Frames"
    case displayShelves = "Display Shelves"
    case centerpieces = "Centerpieces"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .wallArtFrames: return "Hang artwork, family photos, or decorative mirrors to add personality and style to the dining room. Ensure it complements the room’s theme."
        case .displayShelves: return "Use floating shelves or display tables to showcase decorative objects like vases, sculptures, or candles, enhancing the ambiance without overwhelming the space."
        case .centerpieces: return "Rotate centerpieces on the dining table or sideboard according to the season or event, making the space feel refreshed and cohesive with the decor."
        }
    }
    var usageDescription: String {
        switch self {
        case .wallArtFrames: return "Wall art and frames add personality and style to the dining room by showcasing artwork, family photos, or decorative prints. Positioned at eye level, they enhance the room’s visual appeal and tie the design together. Wall art can serve as a focal point or complement the overall decor theme, creating a more inviting and personalized dining atmosphere. Properly chosen and arranged art helps balance the room and reflects the homeowner’s style."
        case .displayShelves: return "Display shelves are used to showcase decorative items like vases, sculptures, or unique dishware. They provide both a functional and aesthetic element, offering space to display treasured pieces while keeping the dining room organized. Open shelves can also be used to store frequently used items within easy reach. Thoughtfully arranged display shelves enhance the decor and give the room a curated and polished look without clutter."
        case .centerpieces: return "Centerpieces serve as decorative focal points for the dining table, adding interest and elegance to the room. Whether it’s a floral arrangement, candles, or seasonal decorations, centerpieces can be changed out to match the occasion or season. They elevate the dining experience by enhancing the visual appeal of the table and creating a welcoming, cohesive atmosphere. Well-proportioned centerpieces should be balanced in size and style with the table and room decor."
        }
    }
    var weight: Double { 3.0 }
    var type: String { "Dining Room" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [DiningRoomDecorDisplayZoneSpaceType] {
        return DiningRoomDecorDisplayZoneSpaceType.allCases
        }
}

enum DiningRoomLightingZoneSpaceType: String, DiningRoomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case overheadChandelier = "Overhead Chandelier"
    case accentWallLighting = "Accent Wall Lighting"
    case candleLighting = "Candle Lighting"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .overheadChandelier: return "The main lighting source above the dining table, providing bright and even lighting. Consider dimmable options to adjust the ambiance for meals."
        case .accentWallLighting: return "Add sconces or floor lamps to create layers of lighting, which enhances the atmosphere and highlights specific decor or art pieces."
        case .candleLighting: return "For more intimate settings or special occasions, use candles on the table or sideboard to create soft, warm lighting and an inviting atmosphere."
        }
    }
    var usageDescription: String {
        switch self {
        case .overheadChandelier: return "The overhead chandelier serves as the primary lighting source in the dining room, typically positioned above the dining table to provide even illumination for meals and gatherings. It acts as a focal point and adds a touch of elegance and style to the room. A chandelier with dimmable lighting options can create the perfect ambiance for different occasions, from formal dinners to casual meals. Its placement and design play a crucial role in defining the dining room’s atmosphere and overall aesthetic."
        case .accentWallLighting: return "Accent wall lighting, such as sconces or wall-mounted lamps, adds soft, ambient light to the dining room while highlighting specific areas or decor elements like artwork or architectural features. It creates depth and warmth, complementing the overhead lighting and adding layers to the room’s illumination. Accent wall lighting is perfect for setting a more intimate, cozy mood during evening gatherings or highlighting decorative aspects of the room without overpowering the space."
        case .candleLighting: return "Candle lighting adds a warm, intimate glow to the dining room, perfect for special occasions or creating a relaxed, romantic atmosphere. Candles can be placed in centerpieces on the dining table, on sideboards, or along shelves to enhance the ambiance. They provide soft, flickering light that complements other lighting sources and adds a timeless, elegant touch to the room. Candle lighting is ideal for evening meals or celebrations, enhancing the overall dining experience."
        }
    }
    var weight: Double { 3.0 }
    var type: String { "Dining Room" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [DiningRoomLightingZoneSpaceType] {
        return DiningRoomLightingZoneSpaceType.allCases
        }
}

enum DiningRoomMultiUseZoneSpaceType: String, DiningRoomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case workStudyTable = "Work Study Table"
    case craftHobbyArea = "Craft Hobby Area"
    case childrensActivities = "Children's Activities"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .workStudyTable: return "If the dining room is used for more than meals, set up a designated table or portion of the dining table for work or study purposes. This should be easy to clear away when transitioning to dining."
        case .craftHobbyArea: return "Dedicate a portion of the space for hobbies or crafts with organized storage for materials. Keep supplies in nearby storage bins or cabinets for easy access."
        case .childrensActivities: return "If children use the dining room, set up a small play or activity area that can be easily tidied up when the room transitions back to dining."
        }
    }
    var usageDescription: String {
        switch self {
        case .workStudyTable: return "The work or study table provides a functional space for tasks like reading, writing, or working on a laptop. Positioned in a quiet corner of the dining or multi-use room, it should be organized with sufficient lighting, comfortable seating, and storage for necessary supplies. This table can be used for work-from-home tasks, studying, or organizing household paperwork. Its versatility allows for a smooth transition between work and other dining room activities, ensuring the space remains both functional and flexible."
        case .craftHobbyArea: return "The craft and hobby area is designated for creative activities such as painting, knitting, scrapbooking, or other hands-on projects. This space should include a sturdy table, organized storage for materials (like bins or drawers), and easy-to-clean surfaces. By keeping the craft area organized and separate from the dining zone, it allows for seamless transitions between different uses of the room while fostering creativity and productivity."
        case .childrensActivities: return "The children’s activities area is a dedicated space where kids can engage in activities like drawing, building blocks, or playing games. It should include child-friendly furniture, such as a small table and chairs, as well as storage bins for toys, art supplies, or puzzles. Having a designated children’s area keeps their activities contained and allows them to play or create in a safe and organized environment. It ensures that the room can still serve its primary purpose while also being adaptable for family use."
        }
    }
    var weight: Double { 3.0 }
    var type: String { "Dining Room" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [DiningRoomMultiUseZoneSpaceType] {
        return DiningRoomMultiUseZoneSpaceType.allCases
        }
}

enum DiningRoomDrinkingBarZoneSpaceType: String, DiningRoomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case barCartBarCabinet = "Bar Cart/Bar Cabinet"
    case glasswareDisplay = "Glassware Display"
    case wineDrinkStorage = "Wine Drink Storage"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .barCartBarCabinet: return "A dedicated space for mixing and serving drinks, including alcohol, mixers, glassware, and tools. Bar carts or cabinets make drinks accessible while keeping the area organized."
        case .glasswareDisplay: return "Organize different types of glasses—wine glasses, cocktail glasses, or tumblers—either on open shelving or in a cabinet for easy access during gatherings."
        case .wineDrinkStorage: return "Use a wine rack or cooler to store bottles of wine or beverages, keeping them within easy reach but properly stored."
        }
    }
    var usageDescription: String {
        switch self {
        case .barCartBarCabinet: return "The bar cart or bar cabinet is a dedicated space for storing and serving beverages, including alcoholic drinks, mixers, and drink-making tools. A bar cart offers mobility and can be easily moved to different areas, while a bar cabinet provides a more permanent storage solution. This area keeps glasses, bottles, and bar accessories organized and within reach for entertaining guests. It enhances the functionality of the dining or living space, providing a stylish and organized drink-serving station."
        case .glasswareDisplay: return "The glassware display showcases various types of drinkware, including wine glasses, cocktail glasses, tumblers, and flutes. Whether stored on open shelves, within glass-front cabinets, or on a bar cart, the display adds both style and function to the drink bar zone. Keeping glassware neatly arranged makes it easy to access and visually appealing, adding elegance to the overall decor while ensuring guests have the appropriate glass for their drink of choice."
        case .wineDrinkStorage: return "The wine and drink storage area is designed for storing bottles of wine, spirits, or other beverages. This can include a wine rack, cooler, or cabinet specifically made to keep drinks at the proper temperature and easily accessible. Properly organized wine and drink storage helps preserve the quality of the beverages while adding convenience and style to the bar or dining area. It serves as both a functional and decorative element, making it easy to serve guests or enjoy a personal collection of drinks."
        }
    }
    var weight: Double { 3.0 }
    var type: String { "Dining Room" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [DiningRoomDrinkingBarZoneSpaceType] {
        return DiningRoomDrinkingBarZoneSpaceType.allCases
        }
}
extension DiningRoomSpaceType {
    static var allDiningRoomSpaceTypes: [any DiningRoomSpaceType] {
        return [
            DiningRoomDiningZoneSpaceType.allCases.map { $0 as any DiningRoomSpaceType },
            DiningRoomServingZoneSpaceType.allCases.map { $0 as any DiningRoomSpaceType },
            DiningRoomStorageZoneSpaceType.allCases.map { $0 as any DiningRoomSpaceType },
            DiningRoomDecorDisplayZoneSpaceType.allCases.map { $0 as any DiningRoomSpaceType },
            DiningRoomLightingZoneSpaceType.allCases.map { $0 as any DiningRoomSpaceType },
            DiningRoomMultiUseZoneSpaceType.allCases.map { $0 as any DiningRoomSpaceType },
            DiningRoomDrinkingBarZoneSpaceType.allCases.map { $0 as any DiningRoomSpaceType }
        ].flatMap { $0 }
    }
}
