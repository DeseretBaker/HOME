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
            return "Set up your kitchen prep zone by organizing cutting boards, knives, measuring cups, and mixing bowls within easy reach. Keep your frequently used ingredients and utensils nearby for seamless meal preparation."
        case .cookingZone:
            return "Arrange your cooking zone around the stove or oven, keeping pots, pans, cooking utensils, spices, and oils within arm’s reach. Store essentials in nearby drawers or shelves for quick access."
        case .cleaningZone:
            return "Set up your cleaning zone around the sink or dishwasher, keeping dish soap, sponges, brushes, and towels within easy reach. Store cleaning supplies under the sink or in a nearby cabinet for quick access."
        case .foodStorageZone:
            return "Organize your food storage zone by grouping pantry items, canned goods, spices, and dry ingredients together. Use clear containers or labeled bins to keep similar items together and store them in cabinets, shelves, or a dedicated pantry."
        case .cookwareZone:
            return "Arrange your cookware zone by storing pots, pans, baking sheets, and lids in cabinets or drawers near the stove or cooking area. Use dividers, racks, or nested stacking to maximize space and keep items easily accessible."
        case .servingZone:
            return "Set up your serving zone by organizing plates, bowls, serving platters, utensils, and glassware in cabinets or shelves near your dining area. Use trays, racks, or organizers to keep everything in order and within reach."
        case .bakingZone:
            return "Arrange your baking tools, mixing bowls, measuring cups, baking sheets, and ingredients in a designated cabinet or drawer close to your prep area. Use containers for flour, sugar, and other essentials, and keep your mixer and rolling pins nearby."
        case .drinkZone:
            return "Set up a section in your kitchen with your coffee maker, kettle, mugs, glasses, and drink essentials like tea bags, coffee pods, sugar, and stirrers. Keep everything neatly arranged on a tray or in nearby cabinets and drawers for easy access."
        }
    }
    var usageDescription: String {
        switch self {
        case .prepZone:
            return "A well-organized prep zone streamlines cooking, saving you time and effort. It keeps everything you need at your fingertips, making meal prep efficient, enjoyable, and stress-free."
        case .cookingZone:
            return "An organized cooking zone enhances efficiency, allowing you to focus on cooking without unnecessary steps. It ensures that everything you need is right at hand, making the cooking process smoother and more enjoyable."
        case .cleaningZone:
            return "An organized cleaning zone streamlines your kitchen cleanup, making it faster and more efficient. It ensures that all cleaning essentials are readily available, helping you maintain a tidy and hygienic kitchen with ease."
        case .foodStorageZone:
            return " A well-organized food storage zone makes it easy to find ingredients, reducing meal prep time and minimizing waste. It ensures your kitchen stays tidy and that you always know what you have on hand for cooking."
        case .cookwareZone:
            return "An organized cookware zone ensures you can quickly grab the right tools for cooking, making meal prep smoother and more efficient. It saves time and keeps your kitchen functional and clutter-free."
        case .servingZone:
            return "An organized serving zone makes it easy to plate and serve meals, streamlining the process during family dinners or gatherings. It helps create a more enjoyable and efficient dining experience."
        case .bakingZone:
            return "A well-organized baking zone allows for easy access to tools and ingredients, making your baking process smoother and more enjoyable. It ensures you have everything you need within reach, saving time and reducing mess."
        case .drinkZone:
            return "A dedicated drink zone helps streamline your beverage preparation, making it quick and convenient to grab a morning coffee or brew a cup of tea. It keeps all your drink essentials organized and in one place, saving time and effort."
        }
    }
    var weight: Double { 2.0 }
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
        case .prepZone:
            return KitchenSpaceType.prepZoneSpaces.map { SpaceTypeBox($0)! }
        case .cookingZone:
            return KitchenSpaceType.cookingZoneSpaces.map { SpaceTypeBox($0)! }
        case .foodStorageZone:
            return KitchenSpaceType.foodStorageZoneSpaces.map { SpaceTypeBox($0)! }
        case .servingZone:
            return KitchenSpaceType.servingZoneSpaces.map { SpaceTypeBox($0)! }
        case .drinkZone:
            return KitchenSpaceType.drinkZoneSpaces.map { SpaceTypeBox($0)! }
        case .cleaningZone:
            return KitchenSpaceType.cleaningZone.map { SpaceTypeBox($0)! }
        case .cookwareZone:
            return KitchenSpaceType.cookwareZone.map { SpaceTypeBox($0)! }
        default: return []
        }
    }
    static var kitchenPrepZoneRoom: [KitchenRoomType] {
        return [.prepZone, .cookwareZone]
    }
    static var kitchenCookingZoneRoom: [KitchenRoomType] {
        return [.cookingZone, .cookwareZone]
    }
    static var kitchenFoodStorageZoneRoom: [KitchenRoomType] {
        return [.foodStorageZone, .prepZone]
    }
    static var kitchenServingZoneRoom: [KitchenRoomType] {
        return [.servingZone, .drinkZone]
    }
    static var kitchenDrinkZoneRoom: [KitchenRoomType] {
        return [.drinkZone, .servingZone]
    }
    static var kitchenCleaningZoneRoom: [KitchenRoomType] {
        return [.cleaningZone, .prepZone]
    }
    static var kitchenBakingZoneRoom: [KitchenRoomType] {
        return [.bakingZone, .servingZone]
    }
    static var allRoomTypes: [any RoomType] {
        return KitchenRoomType.allCases.map { $0 as any RoomType }
    }
}

enum DiningRoomType: String, Codable, CaseIterable, Identifiable, RoomType {
    
    case diningZone = "Simple Dining Room"
    case multiUses = "Multi-Uses"
    case drinkBar = "Drink Bar"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .diningZone: return "The dining zone is where meals are served and shared. Arrange the table, chairs, and serving pieces for easy access and comfort, making mealtime smooth and enjoyable. Arrange your serving zone with platters, bowls, and serving utensils in a convenient location, such as a sideboard or nearby cabinet. Keep frequently used items easily accessible and group similar pieces together. Organize your dining room storage zone by neatly arranging tableware, linens, and serving pieces in cabinets, drawers, or shelves. Use containers or dividers to keep everything in its place. Arrange your dining room decor zone with items like candles, centerpieces, table runners, and seasonal decorations in a designated space such as a drawer, shelf, or cabinet. Keep similar items grouped together and within easy reach."
        case .multiUses: return "Set up a multipurpose zone with flexible furniture, storage solutions, and versatile items like foldable chairs, a table with adjustable height, or a sideboard that can serve as a buffet, workspace, or craft station. Keep this zone organized with bins or baskets for easy access to items used for different activities. Create a lighting zone with a combination of overhead fixtures, wall sconces, and table lamps. Use dimmable lights to adjust the ambiance and add candles for warmth and elegance during special occasions."
        case .drinkBar: return "Set up a designated area with a small table, cart, or cabinet to hold glasses, bottles, and drink-making essentials. Include a variety of drink options, mixers, and accessories to make the space versatile for different occasions."
        }
    }
    var usageDescription: String {
        switch self {
        case .diningZone: return "A well-organized dining zone ensures that every meal feels welcoming and effortless, helping you create a warm atmosphere for family and guests. Having a dedicated and organized serving zone makes it effortless to set up and serve meals, ensuring a smooth and enjoyable dining experience for you and your guests. A well-organized storage zone ensures that all dining essentials are easy to find and ready to use, making meal prep and hosting smoother and more efficient. An organized decor zone makes it simple to refresh your dining room’s look for different occasions, allowing you to quickly create an inviting and stylish atmosphere for every meal or gathering."
        case .multiUses: return "A well-organized multipurpose zone allows your dining room to adapt to various needs, from homework and crafts to hosting guests, ensuring it remains a functional and efficient space for every occasion. Proper lighting enhances the dining experience, creating a welcoming and adaptable atmosphere. It ensures your dining room is well-lit for meals, entertaining, or any other activity while allowing you to set the perfect mood for any occasion."
        case .drinkBar: return "A drink bar adds a touch of sophistication and convenience to your dining room, making it easy to serve beverages to guests and family. It encourages a social atmosphere and keeps drink-related items organized and accessible."
        }
    }
    var weight: Double { 2.0 }
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .diningZone, .drinkBar, .multiUses: return true
        }
    }
    
    var spaceTypes: [SpaceTypeBox] {
        switch self {
        case .diningZone:
            return DiningRoomSpaceType.diningZoneSpaces.map { SpaceTypeBox($0)! }
            
        case .drinkBar:
            return DiningRoomSpaceType.drinkCartSpaces.map { SpaceTypeBox($0)! }
            
        case .multiUses:
            return DiningRoomSpaceType.multiUseZoneSpaces.map { SpaceTypeBox($0)! }
        }
    }
    static var diningRoomDiningTableRoom: [DiningRoomType] {
        return [.diningZone, .drinkBar]
    }
    static var diningRoomDrinkBarRoom: [DiningRoomType] {
        return [.drinkBar, .multiUses]
    }
    static var diningRoomMultiUsesRoom: [DiningRoomType] {
        return [.multiUses, .diningZone]
    }
    static var allRoomTypes: [any RoomType] {
        return DiningRoomType.allCases.map { $0 as any RoomType}
    }
}
enum BathroomRoomType: String, Codable, CaseIterable, Identifiable, RoomType {
    case bathingZone = "Bathing Zone"
    case vanityZone = "Vanity Zone"
    case towelsZone = "Towels Zone"
    case toiletries = "Toiletries "
    case laundryZone = "Laundry Zone"
    case cleaningZone = "Clean Zone"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .bathingZone: return "Organize your bathing zone with all essentials like soaps, shampoos, loofahs, and towels within easy reach. Use shelves, baskets, or shower caddies to keep everything tidy and accessible."
        case .vanityZone: return "Organize the vanity sink zone by keeping daily essentials like toothbrushes, soap, skincare products, and towels neatly arranged. Use trays, drawer organizers, and small containers to keep items accessible yet clutter-free. Set up a dedicated space for grooming essentials like razors, hairdryers, brushes, and styling products. Use drawer organizers, trays, or containers to keep items neatly separated and accessible."
        case .towelsZone:
            return "Arrange towels and toiletries in easy-to-reach spaces using shelves, baskets, or cabinets. Roll towels for a spa-like feel and store toiletries in labeled containers to keep them organized. Keep the toilet zone organized by storing extra toilet paper, cleaning supplies, and hygiene items in nearby cabinets, baskets, or shelves. Use discreet storage solutions to maintain a tidy appearance."
        case .laundryZone:
            return "Designate a space for dirty laundry, laundry baskets, detergents, and any other cleaning supplies. Utilize shelves, hooks, or a compact hamper to keep this zone organized and contained."
        case .cleaningZone:
            return "Designate a space for storing cleaning supplies like brushes, sprays, cloths, and disinfectants. Use under-sink cabinets, shelves, or a small caddy for easy access and organization."
            
        case .toiletries:
            return "Designate a space for toiletries, including shampoo, conditioner, soap, and toilet paper. Use shelves, hooks, or a compact toiletries cabinet to keep this zone organized and contained."
        }
    }
    var usageDescription: String {
        switch self {
        case .bathingZone:
            return "A well-organized bathing zone creates a spa-like experience, making your bath time more relaxing and efficient. It helps maintain cleanliness, reduces clutter, and ensures that you have all your essentials at hand."
        case .vanityZone:
            return " A tidy vanity sink zone makes morning and evening routines smoother and more efficient, ensuring that everything you need is within reach. It also creates a clean, inviting space that feels organized and calming. A well-organized grooming zone streamlines your morning routine, making it easy to find everything you need. This helps reduce clutter and creates a more efficient, stress-free environment."
        case .towelsZone:
            return "Keeping towels and toiletries organized ensures that your bathroom stays clutter-free and functional. It also makes it easy to find what you need, creating a more relaxing and efficient bathroom experience."
        case .laundryZone:
            return "Having a dedicated laundry zone keeps dirty clothes off the floor and ensures everything needed for laundry is in one place. This organization helps maintain a tidy bathroom and makes laundry tasks more efficient."
        case .cleaningZone:
            return "A dedicated cleaning zone keeps your bathroom essentials organized and ensures that everything is within reach, making regular cleaning more efficient and keeping the space fresh and hygienic."
        case .toiletries:
            return "Having a dedicated toiletries zone streamlines your bathroom routine, providing a comfortable, organized space to store toiletries, keeping the space tidy and clutter-free."
        }
    }
    var weight: Double { 4.0 }
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .bathingZone, .cleaningZone, .laundryZone, .vanityZone, .towelsZone, .toiletries: return true
        }
    }
    var space: (any SpaceType)? {
        return nil
    }
    
    var spaceTypes: [SpaceTypeBox] {
        switch self {
        case .bathingZone:
            return BathroomSpaceType.bathingZoneSpaces.map { SpaceTypeBox($0)! }
        case .cleaningZone:
            return BathroomSpaceType.cleaningZoneSpaces.map { SpaceTypeBox($0)! }
        case .laundryZone:
            return BathroomSpaceType.laundryZoneSpaces.map { SpaceTypeBox($0)! }
        case .toiletries:
            return BathroomSpaceType.toiletriesSpaces.map { SpaceTypeBox($0)! }
        case .towelsZone:
            return BathroomSpaceType.towelsZoneSpaces.map { SpaceTypeBox($0)! }
        case .vanityZone:
            return BathroomSpaceType.vanityZoneSpaces.map { SpaceTypeBox($0)! }
        }
    }
    static var bathingZoneSpaces: [BathroomRoomType] {
        return [.bathingZone, .towelsZone, .vanityZone, .toiletries]
    }
    static var cleaningZoneSpaces: [BathroomRoomType] {
        return [.cleaningZone, .cleaningZone]
    }
    static var laundryZoneSpaces: [BathroomRoomType] {
        return [.laundryZone, .cleaningZone]
    }
    static var toiletriesSpaces: [BathroomRoomType] {
        return [.toiletries, .towelsZone]
    }
    static var towelsZoneSpaces: [BathroomRoomType] {
        return [.towelsZone, .vanityZone]
    }
    static var vanityZoneSpaces: [BathroomRoomType] {
        return [.vanityZone, .bathingZone]
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
        case .seatingSpace: return "Arrange comfortable seating like sofas, chairs, and ottomans in a way that encourages conversation and relaxation. Include side tables, throw pillows, and blankets to enhance comfort and accessibility."
        case .entertainSpace: return "Set up your TV, sound system, gaming consoles, or other media devices in a dedicated area. Include a media console, storage for remotes, and organize cables for a clean look. Arrange seating to face the entertainment center for optimal viewing."
        case .relaxationSpace: return "Create a cozy nook with comfortable seating, soft blankets, pillows, and a side table for books or drinks. Add warm lighting, such as floor lamps or candles, to enhance the ambiance."
        case .storageSpace: return "Incorporate storage solutions like shelves, cabinets, baskets, and storage ottomans to keep items organized and accessible. Use labeled bins or boxes for smaller items and dedicate spaces for electronics, books, and decor."
        case .workStudySpace: return "Set up a desk or a designated table with a comfortable chair, good lighting, and essential supplies like notebooks, pens, and tech accessories. Use nearby shelves or organizers to keep documents and materials within reach."
        case .decorativeSpace: return "Arrange decorative elements like artwork, plants, vases, candles, or photo frames on shelves, tables, or walls to enhance the room’s style. Use a variety of textures, colors, and shapes to create visual interest and personality."
        case .playSpace: return "Set up a designated area with toy storage, a soft rug, and comfortable seating for kids to play. Include bins or baskets for easy cleanup, and consider adding a small table for crafts or games."
        case .converseSpace: return "Arrange seating in a circular or semi-circular layout with chairs, sofas, and ottomans facing each other. Add a coffee table or side tables to create a cozy and inviting space for chats."
        case .lightingSpace: return "Use a combination of overhead lights, floor lamps, table lamps, and accent lighting to create layers of light throughout the living room. Place lighting near seating areas, reading spots, and decorative elements to highlight key areas."
        }
    }
    var usageDescription: String {
        switch self {
        case .seatingSpace:
            return "The seating zone is the heart of the living room, providing a welcoming space for family gatherings, entertaining guests, or simply unwinding, making it a cozy and functional area for everyone."
        case .entertainSpace:
            return "An entertainment zone transforms your living room into a fun and engaging space, perfect for movie nights, gaming sessions, or watching your favorite shows, making it a hub of relaxation and enjoyment for everyone."
        case .relaxationSpace:
            return "A relaxing zone provides a peaceful retreat within your living room, allowing you to unwind, read, or simply enjoy some quiet time, making it an inviting space to recharge and de-stress."
        case .storageSpace:
            return "Storage zones help maintain a clutter-free living room, making it easier to find what you need while keeping the space tidy and functional. It maximizes your room’s potential, ensuring everything has a designated place."
        case .workStudySpace:
            return "A dedicated work or study zone in the living room creates a focused environment for productivity while allowing you to stay connected with the household. It ensures a functional balance between relaxation and efficiency in a shared space."
        case .decorativeSpace:
            return "A well-curated decor zone adds character, warmth, and a personal touch to your living room. It transforms the space into an inviting and aesthetically pleasing area, making it feel more like home."
        case .playSpace:
            return "A dedicated play zone keeps toys and activities contained, making it easier to maintain a tidy living room. It also provides a safe, fun space where children can play, encouraging creativity and independent playtime."
        case .converseSpace:
            return "A well-designed conversation zone encourages social interaction and connection, making it easy for family and friends to engage in meaningful conversations. It helps create a warm and welcoming atmosphere, turning your living room into a space where memories are made."
        case .lightingSpace:
            return "Proper lighting zones enhance the mood, functionality, and ambiance of your living room. It allows you to adjust the lighting for different activities, from reading and relaxing to entertaining guests, making the space more versatile and inviting."
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
        case .converseSpace:
            return LivingRoomSpaceType.conversationZoneSpaces.map { SpaceTypeBox($0)! }
        case .decorativeSpace:
            return LivingRoomSpaceType.decorZoneSpaces.map { SpaceTypeBox($0)! }
            
        case .entertainSpace:
            return LivingRoomSpaceType.gaminigZoneSpaces.map { SpaceTypeBox($0)! }
        case .lightingSpace:
            return LivingRoomSpaceType.lightingZoneSpaces.map { SpaceTypeBox($0)! }
        case .playSpace:
            return LivingRoomSpaceType.playZoneSpaces.map { SpaceTypeBox($0)! }
        case .relaxationSpace:
            return LivingRoomSpaceType.relaxationZoneSpaces.map { SpaceTypeBox($0)! }
        case .seatingSpace:
            return LivingRoomSpaceType.furnitureSeatingZoneSpaces.map { SpaceTypeBox($0)! }
        case .storageSpace:
            return LivingRoomSpaceType.furnitureStorageZoneSpaces.map { SpaceTypeBox($0)! }
        case .workStudySpace:
            return LivingRoomSpaceType.workStudyZoneSpaces.map { SpaceTypeBox($0)! }
        }
    }
    static var livingRoomConverseRoom: [LivingRoomType] {
        return [.converseSpace, .entertainSpace, .playSpace, .seatingSpace]
    }
    static var livingRoomDecorRoom: [LivingRoomType] {
        return [.decorativeSpace, .lightingSpace, .storageSpace, .workStudySpace]
    }
    static var livingRoomEntertainmentRoom: [LivingRoomType] {
        return [.entertainSpace, .playSpace, .converseSpace, .seatingSpace]
    }
    static var livingRoomLightingRoom: [LivingRoomType] {
        return [.lightingSpace, .decorativeSpace, .storageSpace, .workStudySpace]
    }
    static var livingRoomPlayZoneRoom: [LivingRoomType] {
        return [.playSpace, .entertainSpace, .converseSpace, .seatingSpace]
    }
    static var livingRoomRelaxationRoom: [LivingRoomType] {
        return [.relaxationSpace, .lightingSpace, .seatingSpace, .decorativeSpace]
    }
    static var livingRoomSeatingRoom: [LivingRoomType] {
        return [.seatingSpace, .converseSpace, .playSpace, .entertainSpace]
    }
    static var livingRoomStorageRoom: [LivingRoomType] {
        return [.storageSpace, .decorativeSpace, .seatingSpace, .workStudySpace]
    }
    static var livingRoomWorkStudyRoom: [LivingRoomType] {
        return [.workStudySpace, .lightingSpace, .seatingSpace, .decorativeSpace]
    }
    static var allRoomTypes: [any RoomType] {
        return LivingRoomType.allCases.map { $0 as any RoomType}
    }
    
}
enum BedroomRoomType: String, Codable, CaseIterable, Identifiable, RoomType {
    case sleepingZone = "Sleeping Zone"
    case bedroomStorage = "Bedroom Storage"
    case readingZone = "Reading Zone"
    case studyZone = "Study Zone"
    case entertainment = "Entertainment"
    case personalVanity = "Personal Vanity"
    case moodLighting = "Mood Lighting"
    
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .sleepingZone:
            return "Arrange a comfortable bed with cozy bedding, pillows, and blankets in the most peaceful part of the room. Use calming colors, soft lighting, and keep this area free from clutter."
        case .bedroomStorage:
            return "Organize your dressers by categorizing clothing items into designated drawers. Use dividers or small boxes to separate smaller items like socks, underwear, and accessories, keeping everything neat and accessible. Arrange your closet by grouping similar clothing items together—use hangers for dresses, shirts, and pants, and shelves or bins for folded items, shoes, and accessories. Consider using labels and storage boxes for seasonal or less frequently used items. Use storage bins, drawers, or rolling containers to maximize the space under your bed. Consider vacuum-sealed bags for seasonal items or bulky bedding to keep them organized and out of sight"
        case .readingZone:
            return "Set up a cozy chair or a small sofa in a quiet corner of your bedroom. Add a side table with a lamp for proper lighting and keep a basket or shelf nearby for your favorite books and magazines."
        case .studyZone:
            return "Create a small workspace with a desk, comfortable chair, and adequate lighting. Keep essential supplies like notebooks, pens, and a laptop organized within reach, and add a pinboard or organizer for easy access to important notes."
        case .entertainment:
            return "Set up a TV, gaming console, or speakers in a corner of the bedroom, ensuring comfortable seating or pillows for relaxation. Use shelves or a media stand to organize remotes, DVDs, games, or other entertainment accessories."
        case .personalVanity:
            return "Create a dedicated spot with a small table, mirror, and good lighting. Arrange makeup, skincare, and grooming tools in drawers or organizers to keep everything tidy and easily accessible."
        case .moodLighting:
            return "Incorporate different light sources such as bedside lamps, ceiling lights, reading lights, and accent lighting. Use dimmers or smart bulbs to adjust brightness and create various moods."
        }
    }
    var usageDescription: String {
        switch self {
        case .sleepingZone:
            return "The sleeping zone is the heart of the bedroom, providing a restful retreat for relaxation and recharging. Creating a serene and comfortable sleeping area helps improve the quality of your sleep, promoting overall well-being and relaxation."
        case .bedroomStorage:
            return "A well-organized dresser makes it easier to find your clothing, saving time and reducing stress. It keeps your bedroom tidy and ensures your clothes stay in good condition, making your morning routine smoother and more efficient. An organized closet maximizes space and makes finding outfits quick and easy. It keeps your clothing in good condition, reduces clutter, and helps you maintain a tidy, stress-free environment in your bedroom.  Under-bed storage helps utilize often-overlooked space, keeping the bedroom tidy and providing easy access to items you need but don’t use every day. It’s an efficient way to maintain organization without cluttering the room."
        case .readingZone:
            return "A dedicated reading zone creates a relaxing space where you can unwind, escape, and enjoy some quiet time before bed, making your bedroom feel like a personal retreat."
        case .studyZone:
            return "A study zone in your bedroom provides a quiet, focused area for work, study, or personal projects, allowing you to be productive without leaving your personal space."
        case .entertainment:
            return "An entertainment zone in your bedroom offers a cozy retreat for unwinding with movies, music, or games, making it a perfect spot for relaxation and downtime within your personal space."
        case .personalVanity:
            return "A personal vanity provides a space for self-care routines, helping you feel pampered and organized as you start or end your day. It adds a touch of luxury and functionality to your bedroom."
        case .moodLighting:
            return "Proper lighting zones enhance the bedroom’s functionality, allowing you to switch between tasks like reading, relaxing, or dressing. It adds ambiance, making the space feel cozy, calming, or energizing as needed."
        }
    }
    var weight: Double { 3.0 }
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .bedroomStorage, .entertainment, .moodLighting, .personalVanity, .readingZone, .sleepingZone, .studyZone: return true
        }
    }
    
    var spaceTypes: [SpaceTypeBox] {
        switch self {
        case .entertainment:
            return BedroomSpaceType.entertainmentZoneSpaces.map { SpaceTypeBox($0)! }
        case .moodLighting:
            return BedroomSpaceType.lightingZoneSpaces.map { SpaceTypeBox($0)! }
        case .personalVanity:
            return BedroomSpaceType.vanityZoneSpaces.map { SpaceTypeBox($0)! }
        case .readingZone:
            return BedroomSpaceType.readingZoneSpaces.map { SpaceTypeBox($0)! }
        case .sleepingZone:
            return BedroomSpaceType.sleepingZoneSpaces.map { SpaceTypeBox($0)! }
        case .studyZone:
            return BedroomSpaceType.studyZoneSpaces.map { SpaceTypeBox($0)! }
        case .bedroomStorage:
            return BedroomSpaceType.bedroomStorageSpaces.map { SpaceTypeBox($0)! }
        }
    }
    static var bedroomStorageSpaces: [BedroomRoomType] {
        return [.bedroomStorage, .personalVanity, .readingZone, .studyZone]
    }
    static var entertainmentZoneSpaces: [BedroomRoomType] {
        return [.entertainment, .moodLighting, .sleepingZone, .personalVanity]
    }
    static var lightingZoneSpaces: [BedroomRoomType] {
        return [.moodLighting, .readingZone, .entertainment, .sleepingZone]
    }
    static var vanityZoneSpaces: [BedroomRoomType] {
        return [.personalVanity, .entertainment, .moodLighting, .studyZone]
    }
    static var readingZoneSpaces: [BedroomRoomType] {
        return [.readingZone, .studyZone, .moodLighting, .entertainment]
    }
    static var sleepingZoneSpaces: [BedroomRoomType] {
        return [.sleepingZone, .bedroomStorage, .entertainment, .moodLighting]
    }
    static var studyZoneSpaces: [BedroomRoomType] {
        return [.studyZone, .bedroomStorage, .readingZone, .entertainment]
    }
    static var allRoomTypes: [any RoomType] {
        return BedroomRoomType.allCases.map { $0 as any RoomType}
    }
}
enum StorageRoomType: String, Codable, CaseIterable, Identifiable, RoomType {
    case closetsZone = "Closets"
    case atticBasementZone = "Attic Basement"
    case builtInsWallUnitsZone = "Built-Ins"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .closetsZone: return "Organize storage closets by categorizing items based on their purpose, such as clothing, linens, cleaning supplies, or seasonal decorations. Use shelves, bins, and hanging rods to maximize space, and label containers to ensure easy access and maintain order. Regularly declutter to keep the closet functional and tidy. Organize your utility room by grouping similar items together, such as cleaning supplies, tools, and laundry essentials. Use shelving, pegboards, hooks, and labeled containers to create designated spaces for each category. Ensure frequently used items are easily accessible, while less frequently used items can be stored on higher shelves. Organize your pantry by grouping similar items together, such as canned goods, grains, spices, snacks, and baking supplies. Use clear containers, labels, and tiered shelves to maximize visibility and accessibility. Place frequently used items at eye level and less-used items on higher or lower shelves."
        case .atticBasementZone: return "Organize your attic or basement by dividing the space into zones based on item categories, such as seasonal decorations, rarely used items, memorabilia, or extra household supplies. Use sturdy shelving, clear labeled bins, and stackable containers to keep things accessible and neatly stored. Create pathways for easy access to each zone."
        case .builtInsWallUnitsZone: return "Use built-in wall units to organize and display items like books, decor, electronics, or everyday essentials. Arrange items by category and use baskets or bins to keep smaller items neatly contained. Adjust shelves as needed for different-sized items."
        }
    }
    var usageDescription: String {
        switch self {
        case .closetsZone: return "A well-organized storage closet helps you find what you need quickly, saves time, and keeps your home clutter-free. It maximizes available space, making it easier to manage household essentials and ensures that everything has its designated place, improving overall efficiency and organization. An organized utility room streamlines household chores, making it easier to find what you need quickly. It maximizes space, prevents clutter, and ensures that essential tools and supplies are always within reach, helping to maintain a more efficient and orderly home. A well-organized pantry makes meal prep easier, reduces food waste, and saves time by allowing you to quickly find what you need. It ensures you always know what ingredients you have on hand, making cooking more efficient and enjoyable."
            
        case .atticBasementZone: return "A well-organized attic or basement prevents clutter and helps you quickly locate items when needed. It maximizes storage space, protects belongings from damage, and ensures that your stored items are safe, accessible, and easy to manage, making your home more functional and efficient."
            
        case .builtInsWallUnitsZone: return "Built-in wall units maximize vertical space and help keep your home organized while adding style and functionality. They provide ample storage without taking up floor space, making them perfect for displaying items or keeping belongings within easy reach."
        }
    }
    var weight: Double { 4.0 }
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .atticBasementZone: return true
        case .builtInsWallUnitsZone: return true
        case .closetsZone: return true
        }
    }
    
    var spaceTypes: [SpaceTypeBox] {
        switch self {
        case .atticBasementZone, .builtInsWallUnitsZone, .closetsZone:
            return StorageSpaceType.allCases.map { SpaceTypeBox($0)! }
        }
    }
    static var StorageLongTermStorageRoom: [StorageRoomType] {
        return [.atticBasementZone, .builtInsWallUnitsZone]
    }
    static var StorageBuiltInWallUnitRoom: [StorageRoomType] {
        return [.builtInsWallUnitsZone, .closetsZone]
    }
    static var closetSpaceRoom: [StorageRoomType] {
        return [.closetsZone, .builtInsWallUnitsZone]
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
    case referenceBookZone = "Reference Zone"
    case breakRelaxationZone = "Break Relaxation Zone"
    case taskLighting = "Task Lighting"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String {
        switch self {
        case .workstation: return "Set up your workstation with a desk, comfortable chair, and organized storage for essential items like your computer, notepads, and office supplies. Arrange frequently used tools within easy reach, and use cable organizers to keep cords tidy."
        case .storageZones: return "Utilize shelves, cabinets, and filing systems to organize office supplies, documents, and equipment. Label containers and drawers to keep everything in its designated place, and use storage boxes for items you don’t need daily."
        case .technologyZone: return "Organize your technology by setting up dedicated spots for your computer, printer, chargers, and other devices. Use cable management solutions to keep cords tidy, and regularly update and maintain your tech equipment."
        case .meetingCollaborationZone: return "Arrange a designated area with comfortable seating, a table, and any necessary equipment like a whiteboard, monitor, or video conferencing setup. Ensure the space is well-lit and free from distractions."
        case .readingStudyZone: return "Set up a cozy corner with a comfortable chair, a side table, good lighting, and organized shelves for books, documents, or study materials."
        case .inspirationZone: return "Create an inspiration zone by displaying vision boards, artwork, motivational quotes, or items that spark creativity. Include a comfortable chair or standing space where you can brainstorm and reflect."
        case .mailDocumentHandling: return "Set up a dedicated area with file organizers, trays, and folders for sorting, filing, and storing incoming and outgoing mail and important documents. Label everything clearly for quick access."
        case .referenceBookZone: return "Create a designated space with shelves, filing cabinets, or binders to store reference materials, manuals, books, and important documents. Organize them by category or frequency of use."
        case .breakRelaxationZone: return "Set up a comfortable chair or small sofa, add soft lighting, and include a side table for drinks or reading material. Incorporate calming elements like plants or a small water feature."
        case .taskLighting: return "Use a combination of task lighting for your desk, ambient lighting to fill the room, and accent lighting to highlight key areas or decor. Consider adjustable lamps, overhead fixtures, and LED strips."
        }
    }
    var usageDescription: String {
        switch self {
        case .workstation: return "A well-organized workstation creates a productive environment that minimizes distractions and maximizes efficiency. It ensures you have everything you need at your fingertips, allowing you to focus, work efficiently, and maintain a comfortable posture throughout the day."
        case .storageZones: return "Proper storage keeps your office clutter-free, making it easier to find what you need quickly. This organization boosts productivity, reduces stress, and helps maintain a professional and efficient workspace."
        case .technologyZone: return "Keeping your technology organized ensures a smooth workflow, minimizes distractions, and helps maintain the efficiency and longevity of your devices, making your office a more productive and tech-friendly environment."
        case .meetingCollaborationZone: return "A dedicated collaboration zone fosters teamwork, creativity, and effective communication, making it easier to brainstorm, discuss ideas, and work together efficiently during meetings or group projects."
        case .readingStudyZone: return "A dedicated reading and study zone provides a quiet, focused space for research, learning, or reviewing documents, enhancing concentration and productivity in your home office."
        case .inspirationZone: return "An inspiration zone fosters creativity and fresh ideas, providing a space to recharge, think freely, and stay motivated while working in your office."
        case .mailDocumentHandling: return "A mail and document management zone helps maintain an organized, clutter-free workspace, ensuring you can easily find and manage essential papers, bills, and correspondence."
        case .referenceBookZone: return "A reference zone keeps essential information and resources within reach, making it easier to find what you need quickly, improving efficiency and productivity in your office work."
        case .breakRelaxationZone: return "A relaxation zone offers a break from work, reducing stress and boosting creativity. It provides a space to recharge, helping maintain productivity and overall well-being during long work hours."
        case .taskLighting: return "Proper lighting enhances productivity, reduces eye strain, and creates a comfortable work environment. Different lighting zones help set the mood for various tasks, from focused work to relaxing or brainstorming sessions."
        }
    }
    var weight: Double { 3.0 }
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .breakRelaxationZone, .inspirationZone, .mailDocumentHandling, .meetingCollaborationZone, .readingStudyZone, .referenceBookZone, .storageZones, .taskLighting, .technologyZone, .workstation: return true
        }
    }
    var spaceTypes: [SpaceTypeBox] {
        switch self {
        case .workstation, .storageZones, .technologyZone, .meetingCollaborationZone, .inspirationZone, .mailDocumentHandling, .referenceBookZone, .breakRelaxationZone, .taskLighting, .readingStudyZone:
            return OfficeSpaceType.allCases.map { SpaceTypeBox($0)! }
        }
    }
    
    static var workstationZoneSpace: [OfficeRoomType] {
        return [.workstation, .inspirationZone]
    }
    static var officeStorageZoneSpaces: [OfficeRoomType] {
        return [.storageZones, .mailDocumentHandling]
    }
    static var officeTechnologyZoneSpaces: [OfficeRoomType] {
        return [.technologyZone, .referenceBookZone]
    }
    static var meetingZoneSpaces: [OfficeRoomType] {
        return [.meetingCollaborationZone, .inspirationZone]
    }
    static var inspirationZoneSpaces: [OfficeRoomType] {
        return [.inspirationZone, .breakRelaxationZone]
    }
    static var documentHandlingZoneSpaces: [OfficeRoomType] {
        return [.mailDocumentHandling, .storageZones]
    }
    static var referenceBookZoneSpaces: [OfficeRoomType] {
        return [.referenceBookZone, .readingStudyZone]
    }
    static var breakZoneSpaces: [OfficeRoomType] {
        return [.breakRelaxationZone, .inspirationZone]
    }
    static var taskLightingZoneSpaces: [OfficeRoomType] {
        return [.taskLighting, .workstation]
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
        case .parkingZone: return "Allocate a designated space for your vehicle(s) with clear markings or mats, ensuring there’s enough room to open doors and maneuver. Keep the area free of clutter by storing items off the floor on shelves or hooks."
        case .toolZone: return "Organize tools on pegboards, in tool chests, or on shelving units, grouping them by type or function. Label drawers or containers for easy identification, and keep frequently used tools within arm’s reach."
        case .gardenOutdoorZone: return "Store garden tools on wall-mounted racks, hooks, or in a dedicated corner with containers or bins. Group similar tools together and keep smaller items in labeled bins or drawers."
        case .sportsActivityGearZone: return "Use wall-mounted racks, bins, or shelves to store sports gear. Group items by sport or activity and label containers for easy access. Consider using hooks for hanging items like bicycles, helmets, or bags."
        case .seasonalStorageZone: return "Store seasonal or holiday items in clear, labeled bins and place them on high shelves or in overhead storage racks. Keep similar items together, such as decorations, lights, or outdoor gear, and group them by holiday or season."
        case .householdStorageZone: return "Designate a section of the garage for storing household supplies like cleaning products, paper goods, light bulbs, and extra pantry items. Use shelves, cabinets, or bins to organize items by category, and label everything for easy access."
        case .wasteRecyclingZone: return "Set up labeled bins or containers in a specific area of the garage for waste and recycling. Keep them easily accessible and separated by type (e.g., plastics, glass, paper, general trash) to encourage proper sorting. Consider wall-mounted racks or shelves to keep the area tidy."
        case .maintenanceZone: return "Designate a specific area in the garage for maintenance supplies and equipment. Use pegboards, hooks, and shelves to organize tools, oils, cleaning agents, and other maintenance items. Keep frequently used items within easy reach and label containers for quick identification."
        case .mudroomLaundryZone: return "Set up a section of the garage with shelves, hooks, and storage bins for shoes, coats, laundry supplies, and cleaning products. Install a bench for changing footwear and consider adding a laundry sink if space allows. Use labeled containers and baskets to keep everything organized."
        case .overheadStorageZone: return "Utilize overhead racks, shelving units, or ceiling-mounted storage systems to store items such as seasonal decorations, luggage, and rarely used equipment. Ensure that heavier items are securely placed and lighter items are stored in labeled bins."
        }
    }
    var usageDescription: String {
        switch self {
        case .parkingZone: return "A dedicated parking zone keeps your garage organized and ensures your vehicle is protected from dings, scratches, or damage. It also makes parking more efficient and allows for easy access to your car when needed."
        case .toolZone: return "A well-organized tool zone ensures that you can quickly find the right tool for any job, saving time and reducing frustration. It also helps prevent damage to tools and creates a safer, more efficient workspace in your garage."
        case .gardenOutdoorZone: return "Organizing garden tools in a designated zone prevents damage, keeps them easily accessible, and maximizes garage space. It ensures your gardening tasks are more efficient and helps maintain the longevity of your tools."
        case .sportsActivityGearZone: return "Keeping sports gear organized ensures that equipment is easy to find and ready for use. It helps protect your gear from damage, maximizes garage space, and makes it easier to grab what you need for your next game or activity."
        case .seasonalStorageZone: return "Organizing seasonal items keeps them protected and out of the way during off-seasons, freeing up garage space for everyday use. This makes it easy to access decorations or gear when needed, saving time and effort during holiday preparations or seasonal changes."
        case .householdStorageZone: return "Storing household supplies in the garage frees up space in your home and ensures you have a dedicated spot for bulk items or extras. This organization helps you keep track of inventory, making it easier to restock and find what you need when needed."
        case .wasteRecyclingZone: return "Having a dedicated waste and recycling zone in the garage keeps your home cleaner and makes it easier to manage trash and recyclables. It promotes eco-friendly habits and helps maintain an organized system for disposing of waste efficiently."
        case .maintenanceZone: return "A maintenance zone ensures that all tools and supplies are organized and accessible when needed for car or home repairs. It streamlines maintenance tasks, reduces clutter, and saves time searching for the right tools, making upkeep more efficient and stress-free."
        case .mudroomLaundryZone: return "Creating a mudroom or laundry area in the garage helps keep dirt and clutter out of the main living areas. It provides a convenient spot to manage laundry, store outdoor clothing, and keep messes contained, making your home cleaner and more organized."
        case .overheadStorageZone: return "Overhead storage maximizes vertical space in the garage, freeing up floor and wall areas for easier access to everyday items. This method keeps infrequently used items out of the way while ensuring your garage remains organized and functional."
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
            return GarageSpaceType.allCases.map { SpaceTypeBox($0)! }
        }
    }
    static var parkingZoneSpaces: [GarageRoomType] {
        return [.parkingZone, .overheadStorageZone]
    }
    static var toolZoneSpaces: [GarageRoomType] {
        return [.toolZone, .maintenanceZone]
    }
    static var gardenZoneSpaces: [GarageRoomType] {
        return [.gardenOutdoorZone, .seasonalStorageZone]
    }
    static var activityZoneSpaces: [GarageRoomType] {
        return [.sportsActivityGearZone, .seasonalStorageZone]
    }
    static var seasonalZoneSpaces: [GarageRoomType] {
        return [.seasonalStorageZone, .gardenOutdoorZone]
    }
    static var householdZoneSpaces: [GarageRoomType] {
        return [.householdStorageZone, .mudroomLaundryZone]
    }
    static var wasteZoneSpaces: [GarageRoomType] {
        return [.wasteRecyclingZone, .mudroomLaundryZone]
    }
    static var maintenanceZoneSpaces: [GarageRoomType] {
        return [.maintenanceZone, .householdStorageZone]
    }
    static var mudroomZoneSpaces: [GarageRoomType] {
        return [.mudroomLaundryZone, .maintenanceZone]
    }
    static var overheadZoneSpaces: [GarageRoomType] {
        return [.overheadStorageZone, .parkingZone]
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
        case .toyStorageZone: return "A well-organized toy zone encourages children to play independently and makes it easier for them to find their favorite toys. It also helps teach responsibility and makes tidying up a faster, more enjoyable task."
        case .artsCraftZone: return "An organized arts and crafts zone fosters creativity and allows kids to easily access supplies. It also makes cleanup simple, encouraging kids to be more independent and responsible with their projects."
        case .readingQuietZone: return "A dedicated reading or quiet zone encourages children to unwind, enjoy books, and develop a love for reading. It provides a peaceful space for relaxation and helps improve focus and literacy skills."
        case .buildingConstructionZone: return "A building or construction zone fosters creativity, problem-solving skills, and fine motor development. It provides a hands-on, imaginative space for kids to experiment, design, and construct their own creations."
        case .pretendPlayZone: return " dress-up zone encourages imaginative play, storytelling, and self-expression. It helps children develop social skills, creativity, and confidence as they explore different roles and scenarios."
        case .puzzleBoardGameZone: return "A board game zone fosters family bonding, strategic thinking, and problem-solving skills. It provides a structured activity that encourages social interaction, teamwork, and fun, making it a great addition to any playroom."
        case .physicalActivityZone: return "A physical activity zone promotes exercise, coordination, and energy release, helping kids stay active and healthy. It provides a dedicated space for movement and play, allowing them to burn off energy in a fun and controlled environment."
        case .musicPerformanceZone: return "If your child enjoys music or performing, this zone can include musical instruments like a keyboard, drums, or maracas, as well as a stage area for pretend performances. It encourages creativity and expression."
        case .sensoryPlayZone: return "Sensory Play Zone: A zone for sensory activities, ideal for younger children or those who benefit from tactile play. It can include a sand or water table, sensory bins filled with different textures (like rice or beans), or interactive sensory walls."
        case .homeworkStudyZone: return "A quiet area for older children to work on homework or educational activities. This zone can feature a small desk, chair, and storage for school supplies like pencils, paper, and books. A calm environment helps with focus and learning."
        case .technologyScreenZone: return "Technology/Screen Zone: If the playroom includes technology such as tablets, computers, or a TV, this zone should be a designated area with comfortable seating for screen time. It’s important to set boundaries for screen use to balance it with other activities."
        case .outdoorPlayZone: return "Outdoor Play Zone (if space allows): If the playroom opens to an outdoor space, you can create an outdoor play zone with sandboxes, playhouses, or ride-on toys. This area encourages outdoor exploration and active play in nature."
        }
    }
    var usageDescription: String {
        switch self {
        case .toyStorageZone: return "A well-organized toy zone encourages children to play independently and makes it easier for them to find their favorite toys. It also helps teach responsibility and makes tidying up a faster, more enjoyable task."
        case .artsCraftZone: return "An organized arts and crafts zone fosters creativity and allows kids to easily access supplies. It also makes cleanup simple, encouraging kids to be more independent and responsible with their projects."
        case .readingQuietZone: return "A dedicated reading or quiet zone encourages children to unwind, enjoy books, and develop a love for reading. It provides a peaceful space for relaxation and helps improve focus and literacy skills."
        case .buildingConstructionZone: return "A building or construction zone fosters creativity, problem-solving skills, and fine motor development. It provides a hands-on, imaginative space for kids to experiment, design, and construct their own creations."
        case .pretendPlayZone: return "A dress-up zone encourages imaginative play, storytelling, and self-expression. It helps children develop social skills, creativity, and confidence as they explore different roles and scenarios."
        case .puzzleBoardGameZone: return "A board game zone fosters family bonding, strategic thinking, and problem-solving skills. It provides a structured activity that encourages social interaction, teamwork, and fun, making it a great addition to any playroom."
        case .physicalActivityZone: return "A physical activity zone promotes exercise, coordination, and energy release, helping kids stay active and healthy. It provides a dedicated space for movement and play, allowing them to burn off energy in a fun and controlled environment."
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
            return PlayroomSpaceType.allCases.map { SpaceTypeBox($0)! }
        }
    }
    static var toyZoneSpaces: [PlayroomRoomType] {
        return [.toyStorageZone, .physicalActivityZone]
    }
    static var craftZoneSpaces: [PlayroomRoomType] {
        return [.artsCraftZone, .homeworkStudyZone]
    }
    static var gameZoneSpaces: [PlayroomRoomType] {
        return [.puzzleBoardGameZone, .sensoryPlayZone]
    }
    static var learningZoneSpaces: [PlayroomRoomType] {
        return [.homeworkStudyZone, .readingQuietZone]
    }
    static var sensoryZoneSpaces: [PlayroomRoomType] {
        return [.sensoryPlayZone, .outdoorPlayZone]
    }
    static var pretendZoneSpaces: [PlayroomRoomType] {
        return [.pretendPlayZone, .musicPerformanceZone]
    }
    static var quietZoneSpaces: [PlayroomRoomType] {
        return [.readingQuietZone, .homeworkStudyZone]
    }
    static var buildingZoneSpaces: [PlayroomRoomType] {
        return [.buildingConstructionZone, .artsCraftZone]
    }
    static var activityZoneSpaces: [PlayroomRoomType] {
        return [.physicalActivityZone, .outdoorPlayZone]
    }
    static var performanceZoneSpaces: [PlayroomRoomType] {
        return [.musicPerformanceZone, .pretendPlayZone]
    }
    static var homeworkZoneSpaces: [PlayroomRoomType] {
        return [.homeworkStudyZone, .artsCraftZone]
    }
    static var techZoneSpaces: [PlayroomRoomType] {
        return [.technologyScreenZone, .homeworkStudyZone]
    }
    static var outdoorZoneSpaces: [PlayroomRoomType] {
        return [.outdoorPlayZone, .physicalActivityZone]
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







