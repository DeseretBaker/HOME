//
//  LivingRoomSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/15/24.
//

import Foundation

// MARK: - LivingRoomSpaceType

//protocol LivingRoomSpaceType: SpaceType, Codable, CaseIterable, Identifiable {
//    var id: UUID { get }
//    var name: String { get }
//    var imageName: String { get }
//    var instructions: String { get }
//    var usageDescription: String { get }
//    var weight: Double { get }
//    var type: String { get }
//    var category: String { get }
//    var rawValue: String { get }
//    init?(rawValue: String)
//}
enum LivingRoomSeatingZoneSpaceType: String, SpaceType, Codable, CaseIterable, Identifiable {
    case mainSeating = "Main Seating"
    case accentChairsOttomans = "Accent Chairs & Ottomans"
    case throwPillowBlankets = "Throw Pillow & Blankets"
    case sideTables = "Side Tables"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .mainSeating: return "Position the main seating, such as a sofa or sectional, in a central location within the room, typically facing a focal point like a TV, fireplace, or coffee table. Make sure it provides enough space for comfortable seating and easy movement around the room. The arrangement should encourage interaction, whether for conversation or relaxation."
        case .accentChairsOttomans: return "Place accent chairs and ottomans in locations that enhance the seating area. These can either complement the main seating or serve as additional seating for guests. Ottomans can double as footrests or extra seating. Ensure there’s enough room to comfortably walk around them, and consider positioning them near side tables for convenience."
        case .throwPillowBlankets: return "Place throw pillows and blankets on the sofa, sectional, or accent chairs to enhance comfort and style. Choose colors and textures that complement the room’s decor. Keep extra blankets folded in a basket or draped over the seating for easy access."
        case .sideTables: return "Place side tables next to seating areas, such as next to the sofa or accent chairs. Ensure they are at a comfortable height for placing drinks, books, or remote controls. Keep the surface relatively clear and use minimal decor, such as a lamp or a small plant, to avoid clutter."
        }
    }
    var usageDescription: String {
        switch self {
        case .mainSeating: return "The main seating is the primary place for relaxing, entertaining guests, or enjoying media. It provides comfort and sets the tone for the room’s overall function, whether for lounging, watching TV, or gathering with friends and family. Its position and size play a key role in defining the room’s layout."
        case .accentChairsOttomans: return "Accent chairs and ottomans provide flexibility in seating arrangements. They add style and function to the space, offering additional spots for guests or a more intimate seating option for conversations. Ottomans can also serve as multifunctional pieces for storage, seating, or footrests."
        case .throwPillowBlankets: return "Throw pillows and blankets offer additional comfort and warmth, making the seating area cozier and more inviting. They also serve as decorative accents, adding texture, color, and personality to the space. Having them easily accessible ensures that guests can grab a blanket when needed for extra warmth."
        case .sideTables: return "Side tables offer a convenient surface for placing everyday items, such as drinks, snacks, or books, within easy reach while seated. They also serve as a spot for small decorative items or task lighting. Having side tables nearby enhances the functionality and usability of the seating area by making it more practical and comfortable."
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Living Room" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [LivingRoomSeatingZoneSpaceType] {
        return LivingRoomSeatingZoneSpaceType.allCases
        }
}

enum LivingRoomEntertainmentZoneSpaceType: String, SpaceType, Codable, CaseIterable, Identifiable {
    case tvMediaConsole = "TV & Media Console"
    case gamingMediaStorage = "Gaming & Media Storage"
    case soundSystem = "Sound System"
    case decorAroundTv = "Decor Around TV"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .tvMediaConsole: return "Position the TV at eye level when seated and place it on or above a media console. Ensure the console is large enough to support the TV and store media-related items, such as remotes, cable boxes, or streaming devices. Organize cables using cable management systems to keep the area tidy and clutter-free."
        case .gamingMediaStorage: return "Use cabinets, shelves, or drawers within the media console or nearby storage units to organize gaming consoles, controllers, DVDs, and video games. Label storage bins or containers if needed, and ensure all gaming accessories have a designated spot to avoid clutter."
        case .soundSystem: return "Set up the sound system in a way that optimizes the acoustics in the room. Place speakers strategically for balanced sound distribution, ensuring that they’re not obstructed by furniture. If using a soundbar or other devices, position them near the TV and use cable management to keep cords hidden."
        case .decorAroundTv: return "Place decorative items like framed photos, plants, or small sculptures around the TV to add personality and balance to the entertainment zone. Avoid cluttering the space with too many decorations and make sure decor complements the overall design of the room without distracting from the TV as the focal point."
        }
    }
    var usageDescription: String {
        switch self {
        case .tvMediaConsole: return "The TV and media console are central to the entertainment zone, providing a designated space for watching television, streaming content, or playing video games. The console not only supports the TV but also stores essential electronics, helping keep the area organized while maintaining easy access to devices and remotes."
        case .gamingMediaStorage: return "This space is used to keep all gaming and media equipment organized and easily accessible. By having everything neatly stored, it ensures quick setup for gaming sessions or watching movies, reducing the frustration of misplaced items while maintaining a clean and organized entertainment area."
        case .soundSystem: return "The sound system enhances the audio experience when watching TV, playing video games, or listening to music. Proper placement of the speakers or soundbar provides immersive sound quality, creating an enjoyable entertainment atmosphere. Keeping the system well-organized ensures seamless integration with the rest of the media setup."
        case .decorAroundTv: return "The decor around the TV helps soften the visual impact of the media center while adding character to the space. It balances the tech-heavy look of the entertainment area by incorporating personal or aesthetic elements that blend the entertainment zone with the room’s overall style."
        }
    }
    
    var weight: Double { 2.0 }
    var type: String { "Living Room" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [LivingRoomEntertainmentZoneSpaceType] {
        return LivingRoomEntertainmentZoneSpaceType.allCases
        }
}

enum LivingRoomReadingRelaxationZoneSpaceType: String, SpaceType, Codable, CaseIterable, Identifiable {
    case chairSeating = "Chair Seating"
    case storageBinsBaskets = "Storage Bins & Baskets"
    case bookshelves = "Bookshelves"
    case decorAroundReading = "Decor Around Reading"
    case sideTable = "Side Table"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .chairSeating: return "Choose a comfortable chair or lounge seat for your reading area and place it in a quiet corner of the room. Position the chair so it gets good lighting, either from natural light or a nearby lamp. Add a small cushion or lumbar pillow for added support during longer reading sessions."
        case .storageBinsBaskets: return "Use storage bins and baskets to organize items such as blankets, magazines, or even books that don’t fit on shelves. Place them next to the chair, under side tables, or on bookshelves for easy access. Choose bins and baskets that complement the room’s design to keep the space looking tidy and cohesive."
        case .bookshelves: return "Arrange bookshelves near the reading area to keep books organized and accessible. Organize the shelves by genre, author, or aesthetic preference, and leave room for decorative items to break up the rows of books. Make sure the shelves are sturdy and the books are easily reachable from the seating area."
        case .decorAroundReading: return "Add decorative touches around the reading zone to make the area feel cozy and inviting. This could include framed artwork, small plants, or candles. Keep decor minimal to avoid distractions while reading, and choose items that enhance the relaxing atmosphere of the space."
        case .sideTable: return "Place a small side table next to the chair to hold books, a lamp, or a cup of tea. Choose a table that complements the size and style of the seating and ensure it’s within easy reach. Keep the surface relatively clear for practical use, but feel free to add a small decorative item like a plant or coaster."
        }
    }
    var usageDescription: String {
        switch self {
        case .chairSeating: return "Chair seating in the reading zone provides a comfortable and quiet place to relax and enjoy a book or magazine. It serves as the focal point of the reading area and should offer both comfort and support to make the space inviting for extended periods of reading or relaxation."
        case .storageBinsBaskets: return "Storage bins and baskets are essential for keeping the reading and relaxation area organized and free of clutter. They provide a stylish and functional way to store items like extra pillows, blankets, or small reading materials, ensuring everything is within reach without overwhelming the space."
        case .bookshelves: return "Bookshelves provide an organized storage solution for books, creating a dedicated space for your reading collection. They also add visual interest to the reading zone and can serve as both functional and decorative elements, showcasing books, plants, or personal items."
        case .decorAroundReading: return "The decor around the reading zone adds personality and warmth to the area without overwhelming it. It helps create a serene and comfortable ambiance, making the space feel more inviting while allowing for moments of relaxation and focus."
        case .sideTable: return "A side table is a practical addition to the reading zone, offering a surface for placing books, drinks, or small decor items. It enhances the functionality of the space by keeping essentials within arm’s reach, ensuring that you can enjoy your reading or relaxation time without having to move around."
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Living Room" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [LivingRoomReadingRelaxationZoneSpaceType] {
        return LivingRoomReadingRelaxationZoneSpaceType.allCases
        }
}

enum LivingRoomStorageZoneSpaceType: String, SpaceType, Codable, CaseIterable, Identifiable {
    case cabinetsShelves = "Cabinets & Shelves"
    case storageBinsBaskets = "Storage Bins & Baskets"
    case drawers = "Drawers"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .cabinetsShelves: return "Use cabinets and shelves to store larger items like books, board games, or decor, and to keep the room organized. Position shelves at eye level for easy access and ensure that frequently used items are stored within reach. Cabinets can be used for items you want to keep out of sight, such as electronics or personal belongings, while open shelves can display decor and provide easy access to everyday items."
        case .storageBinsBaskets: return "Use storage bins and baskets to organize smaller items, such as toys, blankets, or magazines. Label the bins if necessary and place them on shelves, inside cabinets, or in open spaces to keep items tidy and accessible. Choose bins and baskets that fit the room’s decor and size to ensure they blend seamlessly into the space."
        case .drawers: return "Use drawers to store items like office supplies, electronics, or personal belongings that need to be tucked away. Drawer organizers can help divide the space for smaller items, ensuring everything has its place. Keep frequently used items in the top drawers and less frequently used items in lower or deeper drawers."
        }
    }
    var usageDescription: String {
        switch self {
        case .cabinetsShelves: return "Cabinets and shelves provide essential storage and organization solutions in a room, allowing you to store larger items while displaying decor and keeping the space clutter-free. Cabinets help conceal items that may not be aesthetically pleasing, while shelves offer both storage and display options for books, photos, or decorative items."
        case .storageBinsBaskets: return "Storage bins and baskets are perfect for organizing smaller, loose items, preventing clutter and keeping the room looking neat. They are versatile and can be used in any part of the room, helping to contain various items while maintaining easy access and enhancing the room’s overall organization."
        case .drawers: return "Drawers provide hidden storage for items you want to keep out of sight, helping to reduce visual clutter in the room. By organizing items within drawers, you can easily access essentials while maintaining a clean and streamlined space. Drawers are ideal for keeping personal belongings, supplies, or miscellaneous items organized and easy to find."
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Living Room" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [LivingRoomStorageZoneSpaceType] {
        return LivingRoomStorageZoneSpaceType.allCases
        }
}

enum LivingRoomDecorativeZoneSpaceType: String, SpaceType, Codable, CaseIterable, Identifiable {
    case shelvesDisplayTables = "Room Decor Zone"
    case plantsGreenery = "Plants & Greenery"
    case wallArtPhotos =  "Wall Art & Photos"
    case accentLighting = "Accent Lighting"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .shelvesDisplayTables: return "Use shelves and display tables to showcase decorative items like sculptures, vases, books, or collectibles. Arrange items thoughtfully, balancing the space without overcrowding. Group items in odd numbers (e.g., three vases or books) for visual appeal, and leave some empty space to avoid a cluttered look. Display tables can also hold lamps or plants to add functionality and aesthetics to the room."
        case .plantsGreenery: return "Position plants or greenery throughout the room to add a touch of nature. Choose plants that thrive in the room’s lighting conditions and size them appropriately for the space. Place larger plants in corners or next to furniture, while smaller plants can be displayed on shelves, tables, or windowsills. Consider using decorative pots or stands to elevate the look."
        case .wallArtPhotos: return "Hang artwork, framed photos, or prints at eye level to create a cohesive and visually balanced space. Arrange art pieces in groups or as stand-alone focal points, depending on the size of the room and the look you want to achieve. Use frames and colors that complement the room’s decor and layout. Mix different sizes and orientations to create a dynamic wall display."
        case .accentLighting: return "Use accent lighting such as table lamps, floor lamps, or wall sconces to create mood lighting and highlight specific areas or decor. Position lamps near seating areas, side tables, or reading corners for both functional and aesthetic purposes. Use dimmable lights or soft bulbs to create a warm, inviting ambiance."
        }
    }
    var usageDescription: String {
        switch self {
        case .shelvesDisplayTables: return "Shelves and display tables create an opportunity to personalize the space with decorative items while providing functional surfaces for items like lamps or books. They enhance the room’s visual interest and serve as focal points, making the space feel more curated and inviting."
        case .plantsGreenery: return "Plants and greenery bring life and vibrancy to a room, helping to create a more natural, relaxed atmosphere. They improve air quality and add color, texture, and warmth to the space. Thoughtfully placed plants can serve as subtle design elements that enhance the overall aesthetic."
        case .wallArtPhotos: return "Wall art and photos personalize the room and offer an opportunity to showcase your style and memories. They create focal points and add depth to the walls, making the space feel more complete and visually engaging. Artwork and photos can also help tie the room’s color scheme together."
        case .accentLighting: return "Accent lighting enhances the atmosphere of the room by providing soft, ambient light that complements the main lighting. It highlights decorative elements or areas of interest while adding warmth and depth to the space. Accent lighting helps create a cozy, relaxing environment, especially in the evenings."
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Living Room" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [LivingRoomDecorativeZoneSpaceType] {
        return LivingRoomDecorativeZoneSpaceType.allCases
        }
}

enum LivingRoomPlayZoneSpaceType: String, SpaceType, Codable, CaseIterable, Identifiable {
    case toyStorage = "Toy Storage"
    case playMatActivityArea = "Play Mat Activity Area"
    case craftArtSupplies = "Craft Art Supplies"
    case gameArea = "Game Area"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .toyStorage: return "Organize toys into labeled bins, baskets, or shelving units to keep them accessible and easy to find. Group similar toys together, such as building blocks, stuffed animals, or puzzles. Place frequently used toys on lower shelves or in open bins for children to access easily, and use higher storage for less-used or larger items."
        case .playMatActivityArea: return "Place a soft, durable play mat in an open area of the playroom to create a safe, comfortable space for activities like building with blocks, playing with toys, or doing floor puzzles. Ensure the mat is large enough to accommodate multiple activities and easy to clean. Surround the mat with storage solutions to keep toys and games within reach."
        case .craftArtSupplies: return "Organize craft and art supplies in storage bins, drawers, or on a designated shelf. Group items like crayons, markers, paints, paper, and scissors in separate containers to keep them organized. Consider using a small table or cart for craft activities, and ensure the space is easy to clean up after messy projects."
        case .gameArea: return "Set up a designated area for board games, card games, and puzzles. Use shelves, baskets, or cabinets to store games in an organized manner, grouping them by type or size. Provide a small table or play surface where children can sit and play games comfortably. Ensure there is enough room for multiple players and easy access to game pieces."
        }
    }
    var usageDescription: String {
        switch self {
        case .toyStorage: return "Toy storage is essential for maintaining an organized and tidy play area. It helps keep toys off the floor and ensures they are easy to find and put away. Proper organization in toy storage promotes a clutter-free space, making playtime more enjoyable and cleanup easier for both children and adults."
        case .playMatActivityArea: return "The play mat activity area serves as the main zone for physical play and creativity. It provides a soft, safe surface for kids to engage in various activities while keeping toys contained in one area. The mat also helps define the space and creates a designated area for play, making the room feel more organized."
        case .craftArtSupplies: return "The craft art supplies zone provides a dedicated area for creativity and artistic expression. Organizing supplies ensures that everything is easy to access and encourages children to explore different craft projects. A tidy and well-organized craft zone fosters creativity while making it simple to clean up after activities."
        case .gameArea: return "The game area is a dedicated space for interactive play, promoting social interaction and problem-solving through games and puzzles. By keeping games organized and providing a space to play, children can easily access their favorite games and engage in collaborative play without causing a mess elsewhere in the room."
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Living Room" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [LivingRoomPlayZoneSpaceType] {
        return LivingRoomPlayZoneSpaceType.allCases
        }
}

enum LivingRoomConversationZoneSpaceType: String,  SpaceType, Codable, CaseIterable, Identifiable {
    case seatingArrangement = "Seating Arrangement"
    case coffeeTable = "Coffee Table"
    case accentLighting = "Accent Lighting"
    case decorAccents = "Decor Accents"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .seatingArrangement: return "Arrange seating, such as sofas, sectionals, and chairs, in a way that promotes conversation and interaction. Position seating around a focal point, such as a TV, fireplace, or coffee table, ensuring there’s enough space for easy movement and comfort. Group chairs or a loveseat opposite or adjacent to the main sofa for a balanced layout, leaving room for side tables or floor lamps."
        case .coffeeTable: return "Place the coffee table in the center of the seating area, ensuring it’s within easy reach of all seating options. Keep the table free of clutter by limiting decor to a few functional or decorative items, such as a tray, books, or a vase. Ensure the height and size of the coffee table are proportionate to the seating arrangement for comfort and accessibility."
        case .accentLighting: return "Use accent lighting, such as floor lamps, table lamps, or sconces, to create a warm and inviting atmosphere. Position lamps in areas where task lighting is needed, such as next to seating or reading areas. Choose lighting fixtures that complement the room’s design and ensure they provide adequate but not overwhelming light. Dimmable options can help create different moods."
        case .decorAccents: return "Place decorative accents, such as throw pillows, vases, framed photos, or sculptures, throughout the living room to add personality and style. Group smaller items on side tables or shelves for visual balance and cohesion. Avoid overloading the space with too many decorations; instead, opt for a few statement pieces that complement the room’s overall design."
        }
    }
    var usageDescription: String {
        switch self {
        case .seatingArrangement: return "The seating arrangement defines the flow and functionality of the living room. It encourages social interaction and comfort, making the space welcoming for gatherings or relaxation. A well-thought-out seating arrangement provides both aesthetic balance and practical comfort for everyday use or entertaining guests."
        case .coffeeTable: return "The coffee table serves as a functional centerpiece in the living room, providing a surface for drinks, snacks, or decorative items. It enhances the room’s flow by offering both practical storage and a place to display decor, while also serving as a hub for casual gatherings or relaxing with family."
        case .accentLighting: return "Accent lighting adds warmth, depth, and functionality to the living room. It highlights key areas, like seating arrangements or reading nooks, while providing a cozy and welcoming ambiance. Layered lighting creates flexibility, allowing you to adjust the brightness depending on the time of day or occasion."
        case .decorAccents: return "Decor accents personalize and elevate the aesthetic of the living room, adding layers of texture, color, and interest. They reflect your style and make the space feel complete and inviting. Thoughtful placement of decor accents enhances the room’s visual appeal without creating clutter, tying the room’s elements together for a cohesive look."
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Living Room" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [LivingRoomConversationZoneSpaceType] {
        return LivingRoomConversationZoneSpaceType.allCases
        }
}

enum LivingRoomLightingZoneSpaceType: String, LivingRoomSpaceType, SpaceType, Codable, CaseIterable, Identifiable {
    case overheadLighting = "Overhead Lighting"
    case taskLighting = "Task Lighting"
    case accentLighting = "Accent Lighting"
    case lightingControls = "Lighting Controls"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .overheadLighting:return "Install overhead lighting, such as chandeliers, pendant lights, or recessed lighting, to provide general illumination for the room. Place the fixture in the center of the room or above key areas like the dining table or seating arrangement. Ensure the light source is bright enough to cover the entire room evenly. Consider using dimmable options to adjust the brightness for different occasions or times of day."
        case .taskLighting:
            return "Place task lighting, such as desk lamps, reading lamps, or under-cabinet lighting, in areas where focused lighting is needed, such as near a desk, in a reading nook, or above kitchen countertops. Ensure task lights are positioned to reduce glare and shadows while providing sufficient light for detailed activities. Consider using dimmable options to adjust the brightness for different occasions or times of day."
        case .accentLighting:
            return "Install accent lighting, such as wall sconces, table lamps, or spotlights, to highlight specific areas or decorative elements, such as artwork, plants, or architectural features. Use accent lighting to create a warm and inviting atmosphere, focusing on areas that may not be illuminated by overhead lights. Place accent lights in locations where they can enhance the room’s aesthetics without overpowering the main lighting."
        case .lightingControls:
            return "Install lighting controls, such as dimmer switches, smart lighting systems, or wall-mounted control panels, to manage the intensity and timing of lights throughout the room. Ensure that controls are easily accessible and located near entrances or within reach of seating areas. Set up different lighting modes for various activities, such as full brightness for general use and dimmed lighting for relaxation."
        }
    }
    var usageDescription: String {
        switch self {
        case .overheadLighting:return "Overhead lighting serves as the primary light source for the room, providing overall illumination and setting the tone for the space. It brightens the entire room, making it suitable for activities that require full visibility, like entertaining guests or cleaning. Dimmable overhead lights allow flexibility, letting you adjust the ambiance to suit the mood or activity."
        case .taskLighting:
            return "Task lighting is used for specific activities that require concentrated light, such as reading, writing, cooking, or working. It provides focused illumination, improving visibility and reducing eye strain for activities that demand attention to detail. Properly placed task lighting enhances the functionality of the room by supporting various tasks."
        case .accentLighting:
            return "Accent lighting adds ambiance and highlights specific areas or decor, enhancing the visual interest of the room. It creates a cozy, layered lighting effect that adds depth and dimension to the space, making it feel more intimate and aesthetically pleasing. Accent lighting is perfect for setting the mood or spotlighting key elements of the room."
        case .lightingControls: return "Lighting controls provide flexibility in adjusting the brightness and mood of the room. They allow you to customize lighting levels based on the time of day, task, or desired ambiance. Smart lighting systems can automate lighting changes, enhancing convenience and energy efficiency. Proper lighting control ensures that you can easily transition between different lighting needs, improving the room’s functionality and comfort."
            
        }
    }
    var weight: Double { 2.0 }
    var type: String { "Living Room" }
    var category: String { "Furniture" }
    
    static var allSpaceTypes: [LivingRoomLightingZoneSpaceType] {
        return LivingRoomLightingZoneSpaceType.allCases
        }
}

//extension LivingRoomSpaceType {
//    static var allLivingRoomSpaceTypes: [any LivingRoomSpaceType] {
//        return [
//            LivingRoomSeatingZoneSpaceType.allCases.map { $0 as any LivingRoomSpaceType },
//            LivingRoomEntertainmentZoneSpaceType.allCases.map { $0 as any LivingRoomSpaceType },
//            LivingRoomReadingRelaxationZoneSpaceType.allCases.map { $0 as any LivingRoomSpaceType },
//            LivingRoomStorageZoneSpaceType.allCases.map { $0 as any LivingRoomSpaceType },
//            LivingRoomDecorativeZoneSpaceType.allCases.map { $0 as any LivingRoomSpaceType },
//            LivingRoomPlayZoneSpaceType.allCases.map { $0 as any LivingRoomSpaceType },
//            LivingRoomConversationZoneSpaceType.allCases.map { $0 as any LivingRoomSpaceType },
//            LivingRoomLightingZoneSpaceType.allCases.map { $0 as any LivingRoomSpaceType }
//        ].flatMap { $0 }
//    }
//    
//}
