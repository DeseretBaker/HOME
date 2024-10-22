//
//  SubTaskTypes.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation

enum KitchenSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
    

    case prepCounters = "PrepCounters"
    case appliances = "Appliances"
    case theWholeRange = "theWholeRange"
    case allThingsCooking = "Cooking pans"
    case allThingsCleaning = "Kitchen Cleaning Supplies"
    case allThingsWaste = "All Things Waste"
    case foodStoragePantry = "Perishable zone"
    case servingZoneEverydayDishes = "Day Dishes"
    case serveWareHolidays = "Holidays Dishes"
    case bakingZoneBakingSupplies = "Baking Supplies"
    case drinkZone = "Drink Zone"
    
    
    // conforming to Identifiable
    var id: UUID { UUID() }
    
    // conforming to Displayable
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .prepCounters: return "Keep your prep counters clear and organized with essential tools like cutting boards, knives, and mixing bowls within easy reach. Use drawer organizers or bins underneath for storing utensils and gadgets used frequently during meal prep."
        case .appliances: return "Organize your kitchen appliances by their frequency of use. Keep everyday essentials like toasters or coffee makers on the counter, and store larger, less frequently used items (like slow cookers or mixers) in nearby cabinets."
        case .theWholeRange: return "Designate your stove and oven area as the central hub for cooking. Store pots, pans, and utensils within arm’s reach, and make sure your oven mitts and potholders are easily accessible."
        case .allThingsCooking: return "Organize cooking pans by type and size. Use racks, pegboards, or cabinet organizers to store pans neatly and make them easy to grab. Place the most-used pans in front for quick access."
        case .allThingsCleaning: return "Store your kitchen cleaning supplies in a dedicated area under the sink or in a nearby cabinet. Use bins or caddies to organize sponges, sprays, and cleaning cloths, and label everything for easy access."
        case .allThingsWaste: return "Set up a waste station with separate bins for trash, recycling, and compost. Use labeled bins to make sorting easy, and position them in a convenient spot near your prep or cooking areas."
        case .foodStoragePantry: return "Organize your pantry by type and expiration date, with perishable items like fresh produce or bread stored front and center. Use clear bins or baskets to group similar items together."
        case .servingZoneEverydayDishes: return "Store everyday dishes like plates, bowls, and glasses in a cabinet or drawer near the eating area for quick access during meals. Stack by type and size, and keep sets together for easy use."
        case .serveWareHolidays: return "Store special occasion dishes like serving platters, china, or holiday-specific dishware in a separate cabinet or on a high shelf where they’re protected but still accessible. Use padding between fragile items to avoid damage."
        case .bakingZoneBakingSupplies: return "Organize your baking supplies by grouping items like measuring cups, mixing bowls, baking pans, and ingredients in one area of the kitchen. Use labeled bins or shelves to separate dry ingredients like flour and sugar from baking tools."
        case .drinkZone: return "Set up a drink station with coffee makers, teapots, mugs, glasses, and drinkware all in one area. Use drawers or shelves to store different types of beverages, from coffee pods and tea bags to mixers for cocktails."
        }
    }
    var usageDescription: String {
        switch self {
        case .prepCounters: return "A clean, organized prep counter is the foundation of an efficient kitchen. It provides you with a clutter-free space to work, making it easier to prepare meals and stay on top of your kitchen tasks without feeling overwhelmed by mess or disorganization."
        case .appliances: return "Properly organizing appliances saves counter space and keeps your kitchen looking tidy while ensuring that the tools you need are always close at hand. It reduces clutter, helping you maintain a functional and visually appealing cooking space."
        case .theWholeRange: return "The range is the heart of your kitchen for all things cooking. Organizing your tools around it ensures efficiency and safety while cooking, allowing you to move seamlessly between preparing and cooking meals without unnecessary trips around the kitchen."
        case .allThingsCooking: return "A well-organized pan area saves time and frustration in the kitchen. Whether you’re searing, sautéing, or simmering, you’ll be able to find the right pan for the job, keeping meal prep smooth and enjoyable."
        case .allThingsCleaning: return "Keeping your cleaning supplies organized makes post-meal cleanup a breeze. You’ll always know where your supplies are, making it easier to keep your kitchen spotless and ready for the next cooking adventure."
        case .allThingsWaste: return "A designated waste area keeps your kitchen clean and eco-friendly. By sorting trash, recycling, and compost from the start, you reduce waste and streamline cleanup, helping you maintain a tidy kitchen while also being environmentally conscious."
        case .foodStoragePantry: return "Keeping perishable foods organized ensures that nothing goes to waste. It also makes meal planning easier, as you’ll always know what fresh ingredients you have on hand and can access them quickly before they spoil."
        case .servingZoneEverydayDishes: return "Having your everyday dishes neatly organized makes setting the table quick and simple, so you can spend more time enjoying meals with family and friends. It also keeps your kitchen routine running smoothly by reducing clutter and breakage."
        case .serveWareHolidays: return "Your holiday and special occasion dishes deserve special care. Keeping them organized and protected ensures that they’re ready for the next family gathering or celebration, making festive meals feel extra special."
        case .bakingZoneBakingSupplies: return "A dedicated baking zone makes whipping up your favorite treats a fun and stress-free experience. By keeping all your tools and ingredients in one place, you can easily find what you need, making baking projects feel more manageable and enjoyable."
        case .drinkZone: return " A well-organized drink zone streamlines your morning routine and makes entertaining guests easier. Whether you’re preparing a cup of coffee to start your day or mixing drinks for friends, having everything in one spot saves time and keeps your kitchen looking polished."
        }
    }
    var weight: Double { 2.0 }
    // computed property for progress
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    // computed property for isCompleted
    var isCompleted: Bool {
        switch self {
        case .prepCounters: return true
        case .appliances: return true
        case .theWholeRange: return true
        case .allThingsCooking: return true
        case .allThingsCleaning: return true
        case .allThingsWaste: return true
        case .foodStoragePantry: return true
        case .servingZoneEverydayDishes: return true
        case .serveWareHolidays: return true
        case .bakingZoneBakingSupplies: return true
        case .drinkZone: return true
        }
    }
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    
    var miniTaskTypes: [MiniTaskTypeBox] {
        switch self {
        case .prepCounters:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .appliances:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .theWholeRange:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .allThingsCooking:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]

        case .allThingsCleaning:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .allThingsWaste:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .foodStoragePantry:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .servingZoneEverydayDishes:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .serveWareHolidays:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .bakingZoneBakingSupplies:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        case .drinkZone:
            return [
                MiniTaskTypeBox(KitchenMiniTaskType.remove)!,
                MiniTaskTypeBox(KitchenMiniTaskType.clean)!,
                MiniTaskTypeBox(KitchenMiniTaskType.categorize)!,
                MiniTaskTypeBox(KitchenMiniTaskType.group)!,
                MiniTaskTypeBox(KitchenMiniTaskType.sort)!,
                MiniTaskTypeBox(KitchenMiniTaskType.contain)!,
                MiniTaskTypeBox(KitchenMiniTaskType.label)!
            ]
        }
    }
    
    static var SubTaskType: [any SubTaskType] {
        return KitchenSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}
    enum LivingRoomSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
        case tables = "Tables"
        case floatingShelves = "Floating Shelves"
        case windowBoxSeat = "Window Box Seats"
        case bookshelf = "Bookshelf"
        case cornerShelves = "Corner Shelves"
        case ottoman = "Ottoman"
        case pillowsBlankets = "Pillows & Blankets"
        case mainSeatingSubTask = "Main Seating"
        case gamingDecorSubTasks = "Gaming Decor"
        case readingDecorSubTasks = "Reading Decor"
        case surroundSound = "Surround Sound"
        case tvMediaSubTask = "TV & Media"
        case comfyChairSeating = "Comfy Chair"
        case binsBaskets = "Bins & Baskets"
        case cabinetShelvesSubTask = "Cabinet Shelves"
        case accentLightingSubTask = "Accent Lighting"
        case greeneryPlants = "Greenery & Plants"
        case wallArtSubTasks = "Wall Art"
        case playMatSubTask = "Play Mat"
        case artsCraftSubTask = "Arts & Crafts"
        case tvMediaDecor = "TV Media Decor"
        case drawerSubTasks = "Drawer"
        case gameAreaSubTasks = "Game Area"
        case livingRoomToyStorage = "Living Room Toys"
        case seatingSubTasks = "Seating"
        case coffeeTableSubTasks = "Coffee Table"
        case decorAccentSubTask = "Decor Accent"
        case lightingSubTasks = "Lighting"
        case taskLightingSubTask = "Task Lighting 1"
        case lightingControlsSubTask = "Lighting Controls"
        case deskSubTask = "Desk"
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .deskSubTask: return "Organize your desk area with storage for office supplies, and keep the surface clean and uncluttered. Add task lighting and personal decor to make the space more inviting."
            case .lightingControlsSubTask: return "Install easy-to-reach light switches or smart lighting controls near the entrance or seating areas. Use dimmers for flexible lighting options."
            case .taskLightingSubTask: return "Place task lighting, such as table lamps or floor lamps, near seating areas or workspaces like a desk or reading nook."
            case .lightingSubTasks: return "Incorporate a mix of overhead, task, and accent lighting to illuminate the room. Use dimmers for flexible lighting options that suit different moods or activities."
            case .decorAccentSubTask: return "Use decorative accents like vases, sculptures, or candles to add personality and style to your living room. Place them on shelves, tables, or mantels for visual interest."
            case .coffeeTableSubTasks: return "Use trays or baskets on the coffee table to organize remotes, books, or decor. Keep the surface clear for drinks or snacks when entertaining."
            case .seatingSubTasks: return "Arrange seating to face the focal point of the room (like the TV or fireplace) and ensure enough space for traffic flow. Use a mix of sofas, chairs, and poufs for flexibility."
            case .livingRoomToyStorage: return "Use bins, baskets, or toy chests to store toys in a designated area. Label containers to keep similar toys together and make cleanup easier."
            case .gameAreaSubTasks: return "Set up a designated area with board games, puzzles, or video games neatly organized in shelves or cabinets. Include comfortable seating nearby for easy game play."
            case .drawerSubTasks: return "Use drawers in your console or cabinets to store remotes, chargers, or smaller items. Add dividers to keep everything neat and easy to find."
            case .tvMediaDecor: return "Add decor like candles, small plants, or framed photos around your TV or media console to create balance and soften the look of electronics."
            case .artsCraftSubTask: return "Organize arts and crafts supplies in bins or cabinets near the play area. Use labeled containers for crayons, markers, paper, and glue."
            case .playMatSubTask: return "Set up a soft play mat in a designated area for children to play on. Use bins or baskets nearby for easy cleanup of toys and games."
            case .wallArtSubTasks: return "Hang framed art, photos, or mirrors on your walls at eye level. Arrange them in a gallery wall or as stand-alone pieces to add personality and style."
            case .greeneryPlants: return " Incorporate houseplants or faux greenery on shelves, tables, or in corners. Choose plants that thrive in your living room’s lighting conditions."
            case .accentLightingSubTask: return "Place floor or table lamps around the room to highlight decor or provide task lighting. Use warm bulbs for a cozy, inviting glow."
            case .cabinetShelvesSubTask: return "Use cabinet shelves to store electronics, books, or decor items. Organize by function, with labels or dividers if necessary, to make finding things easier."
            case .binsBaskets: return "Use bins or baskets to store toys, magazines, or blankets. Place them under tables, on shelves, or in corners for easy access."
            case .comfyChairSeating: return "Place a comfortable armchair in a cozy corner or near a window. Add a throw blanket and a pillow for extra comfort, making it a perfect spot to relax."
            case .tvMediaSubTask: return "Organize the TV area with a media console that holds remotes, cables, and accessories. Ensure that the TV is at eye level and that cords are managed and out of sight."
            case .surroundSound: return " Arrange speakers strategically around the room for optimal sound quality. Use cord organizers to hide wires and keep the setup tidy."
            case .gamingDecorSubTasks: return " Designate a specific area for gaming consoles, controllers, and accessories. Use shelves, cabinets, or bins to keep everything organized and hide cords when possible."
            case .readingDecorSubTasks: return "Set up a reading nook with comfortable seating, good lighting, and a small side table for books or drinks. Add personal touches like a cozy blanket or decorative bookends."
            case .mainSeatingSubTask: return "Arrange your main seating (like sofas or sectionals) to face the focal point of the room, such as the TV or fireplace. Add pillows and throws to enhance comfort and style."
            case .pillowsBlankets: return "Store throw blankets in baskets or ottomans and arrange pillows on sofas or chairs. Change up the colors or textures seasonally for a fresh look."
            case .tables: return "Organize tables by their function—coffee tables, side tables, and console tables—keeping them clutter-free. Use decorative trays or baskets to corral remotes, coasters, or small items."
            case .floatingShelves: return " Install floating shelves at eye level and organize them with a mix of decor items, such as framed photos, books, or plants. Keep heavier items closer to the wall for stability."
            case .windowBoxSeat: return "Use window box seats to create a cozy reading nook or extra seating. Store blankets or pillows inside the seat if it has storage, and add a cushion or throw for comfort."
            case .bookshelf: return "Organize bookshelves by genre, size, or color for a cohesive look. Add a few decorative items like vases or picture frames to break up the rows of books."
            case .cornerShelves: return "Use corner shelves to maximize storage in often underutilized areas. Display small decor items, books, or plants to create visual interest."
            case .ottoman: return "Store blankets, magazines, or remotes inside a storage ottoman, or use a tray on top to turn it into a makeshift coffee table. Choose an ottoman with a soft, comfortable surface for putting your feet up."
            }
        }
        var usageDescription: String {
            switch self {
            case .deskSubTask: return "A tidy, organized desk is essential for productivity, whether you’re working from home or simply need a space to pay bills or read. It keeps the living room functional while blending with the rest of the decor."
            case .lightingControlsSubTask: return "Convenient lighting controls make adjusting the ambiance of the room simple and efficient. Dimmers allow you to change the mood based on the time of day or activity, adding versatility to the space."
            case .taskLightingSubTask: return "Task lighting provides focused light for activities like reading or working, making these tasks easier and more enjoyable. It also adds a cozy ambiance to the room."
            case .lightingSubTasks: return " Good lighting is essential to creating a comfortable, functional living room. It sets the tone for the space, making it feel warm and welcoming for any occasion."
            case .decorAccentSubTask: return "Decorative accents bring life and character to your living room, allowing you to express your personal style. They complete the room’s look and make it feel more polished and inviting."
            case .coffeeTableSubTasks: return "The coffee table is a central piece in the living room, and keeping it tidy enhances both the function and look of the space. It’s a practical place to hold everyday items while contributing to the room’s overall style."
            case .seatingSubTasks: return "Well-arranged seating invites conversation and relaxation. It makes the living room a comfortable gathering space for family and guests alike."
            case .livingRoomToyStorage: return "Organized toy storage keeps the living room neat while providing easy access to toys when kids want to play. It helps maintain a balance between a functional family space and an adult-friendly living area."
            case .gameAreaSubTasks: return "A game area invites fun and relaxation, providing a perfect spot for family or friends to gather and play. It also keeps games organized and easy to access, making it simpler to enjoy spontaneous game nights."
            case .drawerSubTasks: return "Drawers provide hidden storage for everyday essentials, keeping clutter out of sight while ensuring that important items are easily accessible."
            case .tvMediaDecor: return "TV media decor helps blend technology with the overall style of your living room, making the entertainment area feel less industrial and more inviting."
            case .artsCraftSubTask: return "A well-organized arts and crafts zone encourages creativity and play without creating clutter. It’s perfect for keeping kids entertained and the room mess-free."
            case .playMatSubTask: return "A play mat creates a safe, comfortable space for kids to play and explore. Keeping it organized with nearby storage makes cleanup quick and keeps the living room tidy."
            case .wallArtSubTasks: return "Wall art makes a house feel like home by showcasing personal taste and memories. It adds color, texture, and interest to blank walls, transforming the living room into a welcoming space."
            case .greeneryPlants: return "Adding greenery brings life and freshness to the room. Plants improve air quality and create a calming, natural atmosphere, making the living space feel more vibrant and relaxing."
            case .accentLightingSubTask: return "Accent lighting creates ambiance and helps highlight specific areas of the room. It makes the space feel warm and welcoming, perfect for relaxing or entertaining."
            case .cabinetShelvesSubTask: return "Cabinet shelves offer hidden storage, keeping your living room neat while still providing easy access to the items you use regularly. They also help maintain a clean, minimalist look"
            case .binsBaskets: return "Bins and baskets are an easy way to keep clutter at bay while adding texture and warmth to the room. They’re perfect for storing everyday items and keeping the space looking organized."
            case .comfyChairSeating: return " A comfy chair provides a personal space to unwind with a book or watch TV, adding both style and comfort to your living room. It’s a must-have for creating a cozy atmosphere."
            case .tvMediaSubTask: return "A tidy TV and media area enhances the visual appeal of the room while making it easy to access all your entertainment essentials. It keeps the space looking polished and functional."
            case .surroundSound: return "Surround sound enhances your entertainment experience, making movie nights or gaming more immersive. Keeping the system organized prevents clutter and ensures the best sound performance."
            case .gamingDecorSubTasks: return "An organized gaming area keeps your space neat while ensuring all your gaming gear is easily accessible. It also helps create a fun, dedicated space for entertainment."
            case .readingDecorSubTasks: return "A designated reading space invites relaxation and quiet time. Organizing a cozy nook makes it easy to escape into a good book while adding a sense of warmth to the room."
            case .mainSeatingSubTask: return " Comfortable seating is the heart of the living room, where people gather to relax or entertain. Organizing it well creates a cozy, inviting atmosphere for family and friends."
            case .pillowsBlankets: return "Pillows and blankets add warmth and comfort to your living room, making it feel inviting and cozy. They’re also an easy way to update the decor without a major overhaul."
            case .tables: return "Tables provide a surface for drinks, books, or decor, and keeping them organized ensures they stay both functional and visually appealing. A well-placed table also completes the look of a seating area, making the room more inviting."
            case .floatingShelves: return "Floating shelves add vertical storage without taking up floor space, making them perfect for smaller rooms. They’re also a great way to display personal items, adding personality and style to your living room."
            case .windowBoxSeat: return "Window box seats make the most of natural light and provide a charming, multifunctional space. They’re ideal for relaxing with a book or as additional seating when guests come over, while also adding storage potential."
            case .bookshelf: return "A well-organized bookshelf not only stores your favorite reads but also serves as a decorative focal point. It brings warmth and personality to the room while showcasing your interests."
            case .cornerShelves: return "Corner shelves are a space-saving solution that adds dimension and function to unused corners. They’re perfect for showcasing personal items without taking up valuable floor space."
            case .ottoman: return " An ottoman serves multiple purposes—it’s extra seating, storage, and a footrest all in one. It’s a cozy addition to any living room that enhances both comfort and functionality."
            }
        }
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .tables, .floatingShelves, .windowBoxSeat, .bookshelf, .ottoman, .cornerShelves, .pillowsBlankets, .mainSeatingSubTask, .gamingDecorSubTasks, .readingDecorSubTasks, .surroundSound, .tvMediaSubTask, .comfyChairSeating, .binsBaskets, .cabinetShelvesSubTask, .accentLightingSubTask, .greeneryPlants, .wallArtSubTasks, .playMatSubTask, .artsCraftSubTask, .tvMediaDecor, .drawerSubTasks, .gameAreaSubTasks, .livingRoomToyStorage, .seatingSubTasks, .coffeeTableSubTasks, .decorAccentSubTask, .lightingSubTasks, .taskLightingSubTask, .lightingControlsSubTask, .deskSubTask: return true
                
            }
        }
        
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .tables, .floatingShelves, .windowBoxSeat, .bookshelf, .cornerShelves, .ottoman, .pillowsBlankets, .mainSeatingSubTask, .gamingDecorSubTasks, .readingDecorSubTasks, .surroundSound, .tvMediaSubTask, .comfyChairSeating, .binsBaskets, .cabinetShelvesSubTask, .accentLightingSubTask, .greeneryPlants, .wallArtSubTasks, .playMatSubTask, .artsCraftSubTask, .tvMediaDecor, .drawerSubTasks, .gameAreaSubTasks, .livingRoomToyStorage, .seatingSubTasks, .coffeeTableSubTasks, .decorAccentSubTask, .lightingSubTasks, .taskLightingSubTask, .lightingControlsSubTask, .deskSubTask:
                 return [
                    MiniTaskTypeBox(LivingRoomMiniTaskType.remove)!,
                    MiniTaskTypeBox(LivingRoomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(LivingRoomMiniTaskType.group)!,
                    MiniTaskTypeBox(LivingRoomMiniTaskType.sort)!,
                    MiniTaskTypeBox(LivingRoomMiniTaskType.contain)!,
                    MiniTaskTypeBox(LivingRoomMiniTaskType.label)!
                ]
            }
        }
        static var SubTaskType: [any SubTaskType] {
            return LivingRoomSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }
    enum DiningRoomSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
        
        case drinkCart1 = "Drink Station"
        case multiUseZone1 = "Multi Purpose"
        case diningRoomLighting = "Dining Room Lighting"
        case diningRoomDecor = "Dining Room Decor"
        case diningRoomStorage = "Table Linens"
        case buffetSideboard = "Mod Buffet Side board"
        case diningRoomTable = "Dining Table"
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .drinkCart1: return "Set up a designated drink station with a bar cart or small side table. Organize glasses, mixers, and bottles neatly, and add decorative elements like coasters or a small plant."
            case .multiUseZone1: return "Designate a flexible area in your dining room for various activities, like homework, crafting, or casual meals. Keep it organized with bins or drawers for easy cleanup and transitions between activities."
            case .diningRoomLighting: return "Use a chandelier or pendant lights over the dining table to create a focal point. Supplement with dimmable wall sconces or floor lamps for adjustable ambiance."
            case .diningRoomDecor: return "Decorate with items that enhance the atmosphere, such as a centerpiece for the table, framed art on the walls, or a stylish area rug. Keep it simple and elegant to avoid clutter."
            case .diningRoomStorage: return "Store table linens like napkins, tablecloths, and placemats in a dedicated drawer or cabinet. Use dividers to separate by size or occasion, and keep them folded and wrinkle-free."
            case .buffetSideboard: return "Organize your buffet or sideboard with serving dishes, cutlery, and extra dinnerware. Use drawers and shelves to keep everything neat, and add decor on top to complement the room’s style."
            case .diningRoomTable: return "Keep your dining table clear of clutter between meals, but dress it up with a centerpiece or table runner. For larger gatherings, ensure extra chairs are stored nearby for easy setup."
            }
        }
        var usageDescription: String {
            switch self {
            case .drinkCart1: return "A well-organized drink station makes entertaining easy and stylish. Whether for casual dinners or special occasions, having all your drink essentials in one spot keeps things flowing smoothly, letting you focus on enjoying the company."
            case .multiUseZone1: return "A multi-purpose zone maximizes the use of your dining room, allowing it to function for more than just meals. It adds versatility to the space, making it a practical and productive area for the whole family."
            case .diningRoomLighting: return "Proper dining room lighting sets the tone for meals, whether you’re hosting a formal dinner or enjoying a relaxed family meal. It creates warmth and enhances the room’s decor, while adjustable lighting allows you to set the perfect mood for any occasion."
            case .diningRoomDecor: return "Thoughtfully chosen dining room decor elevates the space, making it feel inviting and cohesive. Whether it’s for daily meals or special events, decor adds personality and charm, making the dining experience more enjoyable."
            case .diningRoomStorage: return "Organized table linens ensure you’re always prepared for any dining setup, from casual family meals to formal gatherings. It helps protect your linens from damage and makes setting the table quick and effortless."
            case .buffetSideboard: return " A buffet or sideboard adds both storage and serving space to your dining room, making it easy to serve meals and store dining essentials. It also adds a stylish, functional element to the room, keeping it organized and ready for entertaining."
            case .diningRoomTable: return "The dining table is the centerpiece of the room, where family and friends gather to share meals and memories. Keeping it organized ensures that it’s always ready for use, whether for everyday dining or special occasions, while also enhancing the overall look of the space."
            }
        }
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .drinkCart1, .multiUseZone1, .diningRoomLighting, .diningRoomDecor, .diningRoomStorage, .buffetSideboard, .diningRoomTable: return true
                
            }
        }
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .drinkCart1, .multiUseZone1, .diningRoomLighting, .diningRoomDecor, .diningRoomStorage, .buffetSideboard, .diningRoomTable:
                return [
                    MiniTaskTypeBox(DiningRoomMiniTaskType.remove)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.clean)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.group)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.sort)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.contain)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.label)!
                ]
            }
        }
        static var SubTaskType: [any SubTaskType] {
            return DiningRoomSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }
    enum OfficeSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
        case setupDesk = "Desk Setup"
        case officeBooks = "Office Books"
        case officeTechnology = "Office Technology"
        case storageInOffice = "Storage in Office"
        case chillOutZone = "Chill out Zone"
        case theMailAndStuff = "The Mail and Stuff"
        case inspirationSpace = "Inspiration Space"
        case meetingZone = "Meeting Zone"
        case lightRight = "Light Right"
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .chillOutZone: return "Create a comfortable space in your office with a cozy chair or beanbag, a small table, and some personal items like books or plants. Make it a space where you can relax or take a mental break."
            case .inspirationSpace: return "Dedicate a part of your office to inspiration, such as a vision board, artwork, or motivational quotes. Keep it visually inspiring with colors and themes that resonate with you."
            case .meetingZone: return "Set up a small meeting area with a table and chairs, or a comfortable seating arrangement for informal discussions. Keep it free from distractions and provide notepads or whiteboards for brainstorming."
            case .lightRight: return "Ensure your office is well-lit with a combination of natural light and task lighting. Position desk lamps where needed to reduce eye strain, and adjust the lighting based on your activities."
            case .setupDesk: return "Organize your desk with essentials like your computer, notebooks, and writing tools. Use desk organizers or trays to keep everything in its place, and ensure that cables are neatly managed."
            case .officeBooks: return "Arrange office books by subject or frequency of use. Use shelves or bookends to keep them upright, and incorporate some decor or personal items to break up the rows of books."
            case .officeTechnology: return "Keep your technology organized by placing your computer, printer, and other devices in designated areas. Use cable management solutions to hide cords and keep devices within easy reach."
            case .storageInOffice: return "Use cabinets, drawers, or shelves to store office supplies, documents, and other essentials. Label storage containers or drawers to easily find what you need."
            case .theMailAndStuff: return "Organize your incoming and outgoing mail with a designated tray or folder system. Separate mail by category (bills, personal, work) to stay on top of tasks and prevent clutter."
                
            }
        }
        var usageDescription: String {
            switch self {
            case .lightRight: return "Proper lighting is essential for a comfortable and productive office. It reduces fatigue, enhances focus, and creates a welcoming environment where you can work efficiently without straining your eyes."
            case .setupDesk: return "A well-organized desk enhances productivity by keeping distractions at bay and ensuring that everything you need is easily accessible. It creates a clean, focused environment where you can work efficiently without feeling overwhelmed."
            case .officeBooks: return " An organized collection of office books not only provides quick access to resources but also adds character and intellect to your office space. It keeps your workspace professional and inspiring, encouraging learning and creativity."
            case .officeTechnology: return "Properly organizing your office technology ensures a smooth workflow and reduces clutter. By managing cords and arranging your devices efficiently, you create a clean, streamlined workspace that’s ready for productivity."
            case .storageInOffice: return "Efficient storage is crucial for a tidy, functional office. By keeping everything in its place, you reduce clutter and save time searching for items, making your workspace more organized and productive."
            case .chillOutZone: return "A chill-out zone helps you recharge during the workday, improving focus and productivity. Taking short breaks in a cozy, inviting space allows you to return to your tasks refreshed and energized."
            case .theMailAndStuff: return "Keeping your mail organized ensures that important items don’t get lost or overlooked. It helps you stay on top of correspondence and keeps your office tidy and clutter-free."
            case .inspirationSpace: return "An inspiration space fuels creativity and motivation, providing a mental boost whenever you need it. It reminds you of your goals and keeps you focused on what drives your success."
            case .meetingZone: return "A meeting zone allows for productive conversations and collaboration. It creates a professional space within your office for discussions or teamwork, helping to foster communication and idea-sharing."
                
            }
        }
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .setupDesk, .lightRight, .storageInOffice, .officeTechnology, .officeBooks, .chillOutZone, .inspirationSpace, .meetingZone, .theMailAndStuff: return true
            }
        }
        
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .setupDesk, .lightRight, .storageInOffice, .officeTechnology, .officeBooks, .chillOutZone, .inspirationSpace, .meetingZone, .theMailAndStuff:
                return [
                    MiniTaskTypeBox(DiningRoomMiniTaskType.remove)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.clean)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.group)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.sort)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.contain)!,
                    MiniTaskTypeBox(DiningRoomMiniTaskType.label)!
                ]
            }
        }
        static var SubTaskType: [any SubTaskType] {
            return OfficeSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }
    enum BedroomSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
        case flatScreenTVZone = "Flat Screen TV Zone"
        case bedroomLighting = "Bedroom Lighting"
        case comfortableChair = "Comfortable Chair"
        case writingDesk = "Writing Desk"
        case simpleDecor = "Simple Decor"
        case whereTheClothesAre = "Where the Clothes Are"
        case theHangingClothes = "The Hanging Clothes"
        case bedroomShelves = "Bedroom Shelves"
        case bedroomTrunkBasket = "Bedroom Trunk & Basket"
        case underBedStorageSpace = "Under-Bed Storage Space"
        case aGoodNightSleep = "A Good Night Sleep"
        case bedsideTable = "Bedside Table"
        case bedsideDrawers = "Bedside Drawers"
        case dresserMirror = "Dresser Mirror"
        case topOfDresser = "Top of Dresser"
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .flatScreenTVZone: return "FMount the TV on the wall or place it on a low media console. Use cord organizers to keep wires out of sight and add a small shelf for remotes or streaming devices."
            case .bedroomLighting: return "Incorporate layered lighting with bedside lamps, overhead lights, and possibly dimmable lighting for ambiance. Add task lighting where needed, such as near reading chairs or desks."
            case .comfortableChair: return "Place a cozy armchair in a corner or by a window, and add a small throw or pillow for extra comfort. Use a nearby surface for books or drinks."
            case .writingDesk: return "Organize a compact desk with minimal clutter, placing essential office supplies in drawers or on the surface. Ensure good lighting for productivity."
            case .simpleDecor: return "Choose simple, calming decor items like framed photos, minimalistic art, or a small plant. Avoid overcrowding surfaces to keep the room’s ambiance tranquil."
            case .whereTheClothesAre: return "Use a dresser or wardrobe to store folded clothes neatly, grouping items by type for easy access. Keep it organized with drawer dividers for smaller items like socks or accessories."
            case .theHangingClothes: return "Organize hanging clothes in a closet by type or frequency of use. Use matching hangers for a uniform look, and add hooks or rods for accessories like scarves or belts."
            case .bedroomShelves: return " Use shelves to display decor, books, or personal items. Arrange by size and height for a balanced look, leaving some open space for visual breathing room."
            case .bedroomTrunkBasket: return "Use a trunk or large basket at the foot of the bed for extra blankets, pillows, or seasonal clothes. Choose a design that complements the room’s style."
            case .underBedStorageSpace: return " Use clear bins or vacuum-sealed bags to store off-season clothes or spare linens under the bed. Label everything for easy access."
            case .aGoodNightSleep: return " Ensure your bed has comfortable pillows, a supportive mattress, and breathable bedding. Add blackout curtains or sound machines if needed for optimal rest."
            case .bedsideTable: return " Keep your bedside table tidy with only essentials like a lamp, phone charger, and a book. Use drawers for storing small items to reduce surface clutter."
            case .bedsideDrawers: return " Use bedside drawers to store personal items such as reading glasses, chargers, or hand creams. Organize smaller items with dividers to keep everything accessible."
            case .dresserMirror: return "Hang or place a mirror above the dresser for both functionality and decor. Ensure it’s at the right height for daily use and complements the room’s aesthetic."
            case .topOfDresser: return "Keep the top of your dresser clean and uncluttered by using trays or boxes to corral smaller items like jewelry or perfumes. Add a few decorative pieces to personalize the space."
            }
        }
        var usageDescription: String {
            switch self {
            case .flatScreenTVZone: return "An organized TV zone keeps entertainment options easily accessible without overwhelming the room’s relaxing atmosphere. Proper cord management ensures a clean, distraction-free look, allowing you to enjoy shows or movies comfortably."
            case .bedroomLighting: return "Good bedroom lighting enhances comfort and functionality. Layered lighting helps set the mood for winding down in the evening or brightens up the room for activities like reading or getting ready."
            case .comfortableChair: return " A comfortable chair provides a personal retreat within the bedroom, perfect for relaxing, reading, or enjoying a quiet moment. It adds both function and comfort to your personal space."
            case .writingDesk: return "A writing desk provides a functional workspace for tasks like journaling, work, or correspondence without leaving the bedroom. Keeping it organized ensures a smooth transition between relaxation and productivity."
            case .simpleDecor: return "Simple decor enhances the bedroom’s peaceful atmosphere, allowing it to serve as a restful retreat. Clean, minimal designs help reduce stress and promote relaxation, making it a perfect space for unwinding."
            case .whereTheClothesAre: return "An organized space for clothes helps maintain a tidy bedroom, making it easier to find and store clothing. It reduces clutter and makes daily dressing routines more efficient."
            case .theHangingClothes: return "Properly organized hanging clothes keep your closet looking tidy and make selecting outfits easier. It also prevents wrinkling and maximizes closet space for additional storage."
            case .bedroomShelves: return "Shelves provide both functional storage and a way to showcase personal items or decor, making the room feel more personalized without overwhelming it with clutter."
            case .bedroomTrunkBasket: return "A trunk or basket offers stylish, practical storage for items you don’t need every day but still want nearby. It keeps the room looking tidy while adding a decorative touch to the space."
            case .underBedStorageSpace: return "Under-bed storage maximizes space in smaller rooms, keeping infrequently used items out of sight but within reach. It’s an excellent way to store items without adding bulky furniture to the room."
            case .aGoodNightSleep: return "A well-organized sleeping environment promotes better rest, helping you wake up refreshed and ready for the day. The right combination of bedding and surroundings sets the stage for restful, uninterrupted sleep."
            case .bedsideTable: return "A clutter-free bedside table provides easy access to nighttime essentials without overwhelming the space. It helps maintain a clean, peaceful environment, perfect for relaxation before bed."
            case .bedsideDrawers: return "Bedside drawers offer hidden storage, keeping your sleeping area neat and organized while ensuring that frequently used items are always within arm’s reach."
            case .dresserMirror: return "A dresser mirror adds style and practicality to the room, making it easier to get ready while enhancing the overall look of the space. It also helps reflect light, making the room feel more open."
            case .topOfDresser: return "A tidy dresser top enhances the bedroom’s overall feel, reducing visual clutter and creating a peaceful atmosphere. It also makes it easier to find and access the items you need each day."
            }
        }
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .aGoodNightSleep, .bedroomLighting, .bedroomShelves, .bedroomTrunkBasket, .bedsideDrawers, .bedsideTable, .comfortableChair, .writingDesk, .simpleDecor, .whereTheClothesAre, .theHangingClothes, .dresserMirror, .topOfDresser, .flatScreenTVZone, .underBedStorageSpace: return true
            }
        }
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .aGoodNightSleep, .bedroomLighting, .bedroomShelves, .bedroomTrunkBasket, .bedsideDrawers, .bedsideTable, .comfortableChair, .writingDesk, .simpleDecor, .whereTheClothesAre, .theHangingClothes, .dresserMirror, .topOfDresser, .flatScreenTVZone, .underBedStorageSpace:
                return [
                    MiniTaskTypeBox(BedroomMiniTaskType.remove)!,
                    MiniTaskTypeBox(BedroomMiniTaskType.clean)!,
                    MiniTaskTypeBox(BedroomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(BedroomMiniTaskType.group)!,
                    MiniTaskTypeBox(BedroomMiniTaskType.sort)!,
                    MiniTaskTypeBox(BedroomMiniTaskType.contain)!,
                    MiniTaskTypeBox(BedroomMiniTaskType.label)!
                ]
            }
        }
        static var SubTaskType: [any SubTaskType] {
            return BedroomSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }
    enum PlayroomSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
        case playroomZoneSpace = "Playroom Zone Space"
        case playroomExplorationSpace = "Playroom Exploration Space"
        case playroomTechZoneSpace = "Playroom Tech Zone Space"
        case playroomStudyZoneSpace = "Playroom Study Zone Space"
        case playroomSensoryZoneSpace = "Playroom Sensory Zone Space"
        case playroomPerformanceZoneSpace = "Playroom Performance Zone Space"
        case playroomActivityZoneSpace = "Playroom Activity Zone Space"
        case playroomBoardGameZoneSpace = "Playroom Board Game Zone Space"
        case playroomImaginationZoneSpace = "Playroom Imagination Zone Space"
        case playroomBuildingZoneSpace = "Playroom Building Zone Space"
        case playroomQuietZoneSpace = "Playroom Quiet Zone Space"
        case playroomCraftZoneSpace = "Playroom Craft Zone Space"
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .playroomCraftZoneSpace: return "Organize a craft area with a table, chairs, and storage for art supplies like crayons, markers, paper, and glue. Use bins or drawer organizers to keep everything tidy."
            case .playroomQuietZoneSpace: return "Set up a calming area with soft seating, books, or quiet toys. Use shelves or bins to store calming materials, and consider using soft lighting or calming colors."
            case .playroomBuildingZoneSpace: return "Organize a space with building blocks, plastic building blocks, or other construction toys. Use storage bins with dividers for different pieces and provide a flat surface for building."
            case .playroomImaginationZoneSpace: return "Create a space dedicated to imaginative play, with items like play kitchens, building blocks, or dollhouses. Organize toys in bins or on shelves by type of play."
            case .playroomBoardGameZoneSpace: return "Set up a small table or floor space with shelving or bins to store board games, cards, and puzzles. Keep everything organized by type or theme for easy selection."
            case .playroomActivityZoneSpace: return "Organize an area for active play with mats, space for movement, and equipment like balls or jump ropes. Ensure that everything is safely stored when not in use to avoid tripping hazards."
            case .playroomPerformanceZoneSpace: return "Designate a performance space for imaginative play, such as a small stage, microphone, or dress-up area. Store costumes and props in nearby bins or hooks for easy access."
            case .playroomSensoryZoneSpace: return "Set up a sensory-friendly space with textured toys, soft lighting, and calming elements like bean bags or weighted blankets. Use bins or shelves to store sensory materials."
            case .playroomStudyZoneSpace: return "Create a quiet area with a desk or table, proper lighting, and school supplies. Organize books and materials on nearby shelves to keep the space ready for homework or learning activities."
            case .playroomTechZoneSpace: return "Set up a tech zone with a computer, tablets, or gaming consoles. Use a desk or media console to house devices, and manage cables with organizers or clips."
            case .playroomExplorationSpace: return "Create an area where kids can explore new ideas or activities, such as science experiments, puzzles, or building sets. Store materials in bins or on shelves for easy access."
            case .playroomZoneSpace: return "Divide the playroom into zones based on activities, such as crafting, tech, or sensory play. Use rugs or shelving to define each area and store related items within each zone."

            }
        }
        var usageDescription: String {
            switch self {
            case .playroomCraftZoneSpace: return "A craft zone encourages creativity and artistic expression, giving children a designated space to explore their artistic side. Keeping supplies organized makes it easy to start new projects and clean up when finished."
            case .playroomQuietZoneSpace: return "A quiet zone offers a peaceful retreat for reading or relaxing, helping children unwind from more stimulating play. It creates balance in the playroom by offering a place for reflection and calm."
            case .playroomBuildingZoneSpace: return " A building zone inspires creativity and problem-solving through construction play. Keeping pieces organized makes it easier for kids to find what they need and keeps the area tidy between play sessions."
            case .playroomImaginationZoneSpace: return " An imagination zone gives children the freedom to explore creative storytelling and role-playing. It encourages unstructured, open-ended play while keeping toys organized and ready for action."
            case .playroomBoardGameZoneSpace: return "A board game zone invites family fun and interactive play. Keeping games organized ensures that pieces stay together and accessible, making game time more enjoyable and stress-free."
            case .playroomActivityZoneSpace: return "An activity zone provides a safe, open space for kids to burn off energy through active play. It promotes physical activity while maintaining an organized and safe environment for movement."
            case .playroomPerformanceZoneSpace: return "A performance zone encourages self-expression and creativity through acting, singing, or role-playing. It gives children a fun, designated area to unleash their imagination, while keeping costumes and props neatly organized."
            case .playroomSensoryZoneSpace: return "A sensory zone provides a calming, engaging space for children to explore different textures, sounds, and visual stimuli. It promotes sensory development and can offer a peaceful break from more stimulating activities."
            case .playroomStudyZoneSpace: return "A study zone gives kids a distraction-free space to focus on schoolwork or creative projects, promoting concentration and productivity. It helps separate playtime from study time in the playroom."
            case .playroomTechZoneSpace: return " A designated tech zone keeps devices and cords in one place, reducing clutter and creating a safe, organized space for screen time. It allows for focused use of technology, whether for entertainment or learning."
            case .playroomExplorationSpace: return "An exploration space fosters curiosity and hands-on learning, giving kids a dedicated area to try new things. It inspires imagination and discovery while keeping materials neatly organized."
            case .playroomZoneSpace: return "Organizing the playroom into zones helps create structure for different activities, encouraging creativity and focus. It also keeps toys and materials organized, making cleanup easier and playtime more fun."
             }
        }
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .playroomZoneSpace, .playroomExplorationSpace, .playroomTechZoneSpace, .playroomStudyZoneSpace, .playroomSensoryZoneSpace, .playroomPerformanceZoneSpace, .playroomActivityZoneSpace, .playroomBoardGameZoneSpace, .playroomImaginationZoneSpace, .playroomBuildingZoneSpace, .playroomQuietZoneSpace, .playroomCraftZoneSpace: return true
                
            }
        }
        
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .playroomZoneSpace, .playroomExplorationSpace, .playroomTechZoneSpace, .playroomStudyZoneSpace, .playroomSensoryZoneSpace, .playroomPerformanceZoneSpace, .playroomActivityZoneSpace, .playroomBoardGameZoneSpace, .playroomImaginationZoneSpace, .playroomBuildingZoneSpace, .playroomQuietZoneSpace, .playroomCraftZoneSpace:
                return [
                    MiniTaskTypeBox(PlayroomMiniTaskType.remove)!,
                    MiniTaskTypeBox(PlayroomMiniTaskType.clean)!,
                    MiniTaskTypeBox(PlayroomMiniTaskType.categorize)!,
                    MiniTaskTypeBox(PlayroomMiniTaskType.group)!,
                    MiniTaskTypeBox(PlayroomMiniTaskType.sort)!,
                    MiniTaskTypeBox(PlayroomMiniTaskType.contain)!,
                    MiniTaskTypeBox(PlayroomMiniTaskType.label)!
                ]
            }
        }
        static var SubTaskType: [any SubTaskType] {
            return PlayroomSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }
//    enum BathroomSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
//        case bathingSpaces = "Bathing Surfaces"
//        case cleaningSuppliesSpaces = "Bathroom Cleaning SubTasks"
//        case toiletrySpaces = "Toiletry Spaces"
//        case towelStorageSpace = "Towel Storage Space"
//        case vanitySpace = "Vanity Space"
//        case laundrySpace = "Dirty Laundry"
//        case lightingSpaces = "Lighting Spaces"
//        case groomingZoneSpaces = "Grooming Zone Spaces"
//        
//        var id: UUID { UUID() }
//        var name: String { rawValue }
//        var imageName: String { rawValue }
//        
//        var instructions: String {
//            switch self {
//            case .bathingSpaces: return "Keep your bathing area organized with shower caddies or shelves for soaps, shampoos, and loofahs. Use non-slip mats and make sure the surfaces are regularly cleaned to prevent buildup."
//            case .cleaningSuppliesSpaces: return "Store bathroom cleaning supplies under the sink or in a nearby closet. Keep brushes, sprays, and wipes in a caddy for easy access, and schedule regular cleaning tasks to maintain the space."
//            case .toiletrySpaces: return "Organize toiletries in bins or trays inside cabinets or on vanity counters. Group items by category, such as skincare, haircare, or dental products, and label them if needed."
//            case .towelStorageSpace: return "Store towels on racks, in baskets, or on shelves. Roll or fold them neatly, and keep extra towels in a linen closet if available."
//            case .vanitySpace: return "Keep the vanity surface clutter-free by storing beauty products, hair tools, and grooming items in drawers or bins. Use drawer organizers to separate small items like makeup or hairpins."
//            case .laundrySpace: return "Use a designated hamper or laundry basket for dirty clothes and towels. Keep it in a corner or closet to avoid clutter and ensure easy access on laundry day."
//            case .lightingSpaces: return "Install bright, flattering lighting around the vanity or mirror. Consider using adjustable or dimmable lights for flexibility, and add task lighting for specific areas like the shower or tub."
//            case .groomingZoneSpaces: return "Organize grooming tools such as razors, hair dryers, and brushes in drawers or on countertops using trays or organizers. Make sure everything is easily accessible and stored neatly when not in use."
//            }
//        }
//        var usageDescription: String {
//            switch self {
//            case .bathingSpaces: return "Organized bathing surfaces keep all your essentials within easy reach, making your bath or shower time more relaxing. Regular cleaning also ensures a hygienic environment, preventing mildew and soap scum."
//            case .cleaningSuppliesSpaces: return "Organized cleaning supplies make bathroom maintenance more efficient. A clean bathroom not only looks good but also promotes hygiene and prevents mold and bacteria buildup, keeping the space fresh and welcoming."
//            case .toiletrySpaces: return " A well-organized toiletry space keeps your daily routine streamlined and reduces clutter. Having everything in its designated place makes it easy to find what you need, ensuring a stress-free start to the day."
//            case .towelStorageSpace: return "Proper towel storage keeps your bathroom tidy and ensures fresh, clean towels are always available. It also helps prevent damp towels from cluttering the space, promoting a more organized and visually appealing bathroom."
//            case .vanitySpace: return "A tidy vanity space creates an inviting area for your morning or evening routine. It ensures everything you need is easy to find, making grooming more efficient and enjoyable."
//            case .laundrySpace: return "A dedicated space for dirty laundry keeps the bathroom neat and prevents clothes from piling up. It also makes laundry easier to manage, maintaining a clean and organized bathroom."
//            case .lightingSpaces: return "Good lighting in the bathroom enhances functionality and creates a more enjoyable environment for grooming or relaxing. Proper lighting also makes the space feel more welcoming and well-designed."
//            case .groomingZoneSpaces: return " A designated grooming zone streamlines your daily routine and keeps the bathroom looking clean. It ensures that all your grooming tools are easy to find and use, reducing clutter and improving the bathroom’s overall appearance."
//            }
//        }
//        var weight: Double { 2.0 }
//        
//        var progress: Double {
//            return isCompleted ? 100.0 : 0.0
//        }
//        var isCompleted: Bool{
//            switch self {
//            case .bathingSpaces: return true
//            case .cleaningSuppliesSpaces: return true
//            case .toiletrySpaces: return true
//            case .towelStorageSpace: return true
//            case .vanitySpace: return true
//            case .laundrySpace: return true
//            case .lightingSpaces: return true
//            case .groomingZoneSpaces: return true
//                
//            }
//        }
//        
//        var miniTask: (any MiniTaskType)? {
//            return nil
//        }
//        var miniTaskTypes: [MiniTaskTypeBox] {
//            switch self {
//            case .bathingSpaces:
//                return [
//                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
//                ]
//            case .cleaningSuppliesSpaces:
//                return [
//                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
//                ]
//            case .laundrySpace:
//                return [
//                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
//                ]
//            case .lightingSpaces:
//                return [
//                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
//                ]
//            case .toiletrySpaces:
//                return [
//                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
//                ]
//            case .towelStorageSpace:
//                return [
//                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
//                ]
//            case .vanitySpace:
//                return [
//                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
//                ]
//            case .groomingZoneSpaces:
//                return [
//                    MiniTaskTypeBox(BathroomMiniTaskType.remove)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.clean)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.categorize)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.group)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.sort)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.contain)!,
//                    MiniTaskTypeBox(BathroomMiniTaskType.label)!
//                ]
//            }
//        }
//        static var bathingSubTask: [BathroomSubTaskType] {
//            return [.bathingSpaces]
//        }
//        static var groomingSubTask: [BathroomSubTaskType] {
//            return [.groomingZoneSpaces]
//        }
//        static var vanitySubTask: [BathroomSubTaskType] {
//            return [.vanitySpace]
//        }
//        static var laundrySubTask: [BathroomSubTaskType] {
//            return [.laundrySpace]
//        }
//        static var cleaningSpaceSubtask: [BathroomSubTaskType] {
//            return [.cleaningSuppliesSpaces]
//        }
//        static var lightZonesSubTask: [BathroomSubTaskType] {
//            return [.lightingSpaces]
//        }
//        static var toiletrySubTask: [BathroomSubTaskType] {
//            return [.toiletrySpaces]
//        }
//        static var towelStorageSubTask: [BathroomSubTaskType] {
//            return [.towelStorageSpace]
//        }
//        static var SubTaskType: [any SubTaskType] {
//            return BathroomSubTaskType.allCases.map { $0 as any SubTaskType }
//        }
//    }

    enum StorageSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
        case allTheClosets = "Closets for Everything"
        case allTheNooks = "All the Nooks"
        case longTermStorage = "Annual Storage"
        
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .allTheClosets: return "Organize all the closets."
            case .allTheNooks: return "Organize all the nooks."
            case .longTermStorage: return "Organize all the long-term storage."
            }
        }
        var usageDescription: String {
            switch self {
            case .allTheClosets: return "Organize all the closets."
            case .allTheNooks: return "Organize all the nooks."
            case .longTermStorage: return "Organize all the long-term storage."
            }
        }
        
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .allTheClosets, .allTheNooks, .longTermStorage: return true
            }
        }
        
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .allTheClosets:
                return [
                    MiniTaskTypeBox(StorageMiniTaskType.remove)!,
                    MiniTaskTypeBox(StorageMiniTaskType.clean)!,
                    MiniTaskTypeBox(StorageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(StorageMiniTaskType.group)!,
                    MiniTaskTypeBox(StorageMiniTaskType.sort)!,
                    MiniTaskTypeBox(StorageMiniTaskType.contain)!,
                    MiniTaskTypeBox(StorageMiniTaskType.label)!
                ]
            case .allTheNooks:
                return [
                    MiniTaskTypeBox(StorageMiniTaskType.remove)!,
                    MiniTaskTypeBox(StorageMiniTaskType.clean)!,
                    MiniTaskTypeBox(StorageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(StorageMiniTaskType.group)!,
                    MiniTaskTypeBox(StorageMiniTaskType.sort)!,
                    MiniTaskTypeBox(StorageMiniTaskType.contain)!,
                    MiniTaskTypeBox(StorageMiniTaskType.label)!
                ]
            case .longTermStorage:
                return [
                    MiniTaskTypeBox(StorageMiniTaskType.remove)!,
                    MiniTaskTypeBox(StorageMiniTaskType.clean)!,
                    MiniTaskTypeBox(StorageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(StorageMiniTaskType.group)!,
                    MiniTaskTypeBox(StorageMiniTaskType.sort)!,
                    MiniTaskTypeBox(StorageMiniTaskType.contain)!,
                    MiniTaskTypeBox(StorageMiniTaskType.label)!
                ]
            }
        }
        static var SubTaskType: [any SubTaskType] {
            return StorageSubTaskType.allCases.map { $0 as any SubTaskType }
        }
        
    }
    enum GarageSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
        case carCleaningSubTask = "Car Cleaning Sub Task"
        case garageDoorSubTask = "Garage Door Sub Task"
        case vehicleParkingSubTask = "Vehicle Parking Sub Task"
        case tireStorageSubtask = "Tire Storage Subtask"
        case workBenchSubTask = "Work Bench Sub Task"
        case chargingStationSubTask = "Charging Station Sub Task"
        case toolCleaningSubTask = "Tool Cleaning Sub Task"
        case handToolSubTask = "Hand Tool Sub Task"
        case powerToolSubTask = "Power Tool Sub Task"
        case smallPartsSubTask = "Small Parts Sub Task"
        case safetyEquipmentSubTask = "Safety Equipment Sub Task"
        case gardenToolSubTask = "Garden Tool Sub Task"
        case lawnEquipmentSubTask = "Lawn Equipment Sub Task"
        case outdoorFurnitureSubTask = "Outdoor Furniture Sub Task"
        case plantingSuppliesSubTask = "Planting Supplies Sub Task"
        case pottingBenchSubTask = "Potting Bench Sub Task"
        case hoseStorageSubTask = "Hose Storage Sub Task"
        case ballStorageSubTask = "Ball Storage Sub Task"
        case bikeRackSubTask = "Bike Rack Sub Task"
        case sportsEquipmentRackSubTask = "Sports Equipment Rack Sub Task"
        case sportsGearSubTask = "Sports Gear Sub Task"
        case holidayDecorSubTask = "Holiday Decor Sub Task"
        case seasonalToys = "Seasonal Toys"
        case winterGear = "Winter Gear"
        case outdoorDecorSubTask = "Outdoor Decor Sub Task"
        case cleaningSuppliesSubTask = "Garage Clean Supplies"
        case miscHouseholdItemsSubTask = "Misc Household Items SubTask"
        case overflowPantrySubtask = "Overflow Pantry Subtask"
        case paperGoodsSubTask = "Paper Goods SubTask"
        case emergencySuppliesSubTask = "Emergency Supplies SubTask"
        case compostingAreaSubTask = "Composting Area SubTask"
        case recyclingBinSubTask = "Recycling Bin SubTask"
        case trashBinSubTask = "Trash Bin SubTask"
        case hazardousWasteSubTask = "Hazardous Waste SubTask"
        case donationBinAreaSubTask = "Donation Bin Area SubTask"
        case cleaningMaintenanceSubTasks = "Cleaning Maintenance SubTasks"
        case houseToolsSubTask = "House Tools SubTask"
        case dIYRepairSubTask = "DIY Repair SubTask"
        case yardEquipmentSubTask = "Yard Equipment SubTask"
        case clothingFoldingSubTask = "Clothing Folding"
        case hatCoatHooks = "Hat Coat Hooks"
        case laundrySubTasks = "Laundry SubTasks"
        case bootShoeStorage = "Boot Shoe Storage"
        case petCareSubTask = "Pet Care SubTask"
        case extraLuggageSubTask = "Extra Luggage SubTask"
        case outdoorEquipmentSubTask = "Outdoor Equipment SubTask"
        case seasonalItemsSubTask = "Seasonal Items SubTask"
        case longItemRackSubTask = "Long Item Rack SubTask"
        
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        
        var instructions: String {
            switch self {
            case .carCleaningSubTask: return "Organize car cleaning supplies such as soap, sponges, and towels in a dedicated area, using shelves or bins for easy access. Keep these items near the garage entrance for convenience."
            case .garageDoorSubTask: return "Keep the area around the garage door clear and well-maintained. Make sure the door opens smoothly, and schedule regular maintenance checks."
            case .vehicleParkingSubTask: return "Mark out a clear parking space in the garage. Use mats or parking guides to ensure vehicles are parked efficiently, leaving room for other activities or storage."
            case .tireStorageSubtask: return "Store tires neatly on racks or shelves, keeping them off the floor to prevent damage. Label the tires for easy identification of seasonal or spare tires."
            case .workBenchSubTask: return "Organize tools and materials on or near your workbench, keeping frequently used items within reach. Use pegboards, drawers, or shelves to maximize efficiency."
            case .chargingStationSubTask: return "CSet up a designated charging station for electric vehicles or power tools with accessible outlets and proper cable management."
            case .toolCleaningSubTask: return "Store tool-cleaning supplies such as oils, brushes, and rags in a caddy or drawer near your workbench for quick access."
            case .handToolSubTask: return "Organize hand tools on a pegboard or in a toolbox, categorizing them by type and frequency of use."
            case .powerToolSubTask: return "Store power tools in a secure, accessible area, keeping them in their cases or on shelves to prevent damage. Ensure that cords are coiled and untangled."
            case .smallPartsSubTask: return "Use labeled bins or drawer organizers to sort and store small parts like screws, nuts, and bolts."
            case .safetyEquipmentSubTask: return "Designate an area for safety gear like gloves, goggles, and helmets, making sure they are easy to reach before starting any project."
            case .gardenToolSubTask: return "Hang garden tools like rakes, shovels, and pruners on a wall-mounted rack or store them in a designated corner."
            case .lawnEquipmentSubTask: return "Store lawn equipment such as mowers and trimmers in a dedicated zone, with hooks or shelves for accessories like fuel or spare parts."
            case .outdoorFurnitureSubTask: return "Store outdoor furniture during off-seasons by covering it or placing it on shelves. Use bins for smaller items like cushions or umbrellas."
            case .plantingSuppliesSubTask: return "Organize planting supplies such as pots, soil, and seeds in a cabinet or on shelves. Label each item for easy identification."
            case .pottingBenchSubTask: return "Keep potting tools and supplies organized on or near the potting bench. Store small tools in drawers and use hooks for hanging larger items."
            case .hoseStorageSubTask: return "Use a hose reel or wall-mounted hooks to keep garden hoses neatly coiled and off the ground."
            case .ballStorageSubTask: return "Use a rack or bin to store balls, making sure they’re easy to grab for playtime but neatly stored when not in use."
            case .bikeRackSubTask: return "Install wall-mounted hooks or use a floor-standing rack to store bikes securely. Keep helmets and accessories nearby."
            case .sportsEquipmentRackSubTask: return "Organize sports gear like bats, gloves, and racquets on a rack or in bins for easy access."
            case .sportsGearSubTask: return "Use labeled bins or racks to store seasonal sports gear like skis, snowboards, or beach gear."
            case .holidayDecorSubTask: return "Store holiday decorations in labeled bins and stack them neatly in a designated area."
            case .seasonalToys: return "Use bins or shelves to store toys for different seasons, keeping items grouped by activity or season for easy rotation."
            case .winterGear: return "Store winter gear like boots, coats, and snow shovels in bins or on hooks during off-seasons to keep them organized and ready for use when winter comes."
            case .outdoorDecorSubTask: return "Organize outdoor decor items in labeled bins or shelves, and protect them during the off-season with covers or proper storage."
            case .cleaningSuppliesSubTask: return "Keep cleaning supplies like brooms, dustpans, and cleaning solutions in a specific area for garage cleanup."
            case .miscHouseholdItemsSubTask: return "Store miscellaneous household items in labeled bins or cabinets, grouping similar items together for easy access."
            case .overflowPantrySubtask: return "Organize surplus food items in a designated area of the garage with shelves or bins for dry goods, canned foods, and bulk items."
            case .paperGoodsSubTask: return "Store paper goods like paper towels, napkins, and toilet paper in a dry, accessible area. Use bins or shelves to keep them organized."
            case .emergencySuppliesSubTask: return "Store emergency supplies such as water, first aid kits, and flashlights in a labeled bin or on a designated shelf."
            case .compostingAreaSubTask: return "Set up a compost bin or container in a convenient location, using separate bins for different compostable materials."
            case .recyclingBinSubTask: return "Organize recycling bins for different materials like paper, plastic, and glass. Label each bin for easy sorting."
            case .trashBinSubTask: return "Keep trash bins neatly arranged near the entrance of the garage for easy access, and use labeled bins to separate waste."
            case .hazardousWasteSubTask: return "Store hazardous materials like paint, chemicals, and batteries in a secure, labeled area until they can be properly disposed of."
            case .donationBinAreaSubTask: return "Set up a donation bin for items you no longer need but are still in good condition. Keep it in a visible, easy-to-access spot to encourage regular use."
            case .cleaningMaintenanceSubTasks: return "Organize cleaning maintenance tools and products in one place, ensuring easy access for regular cleaning."
            case .houseToolsSubTask: return "Store household tools like hammers, screwdrivers, and wrenches in a toolbox or on a pegboard for easy access during home repairs."
            case .dIYRepairSubTask: return "Organize materials and tools for DIY projects in a dedicated space, keeping them easily accessible but neatly stored."
            case .yardEquipmentSubTask: return "Keep yard tools like trimmers, blowers, and hoses stored in a designated area. Use hooks or shelves to keep everything tidy and off the ground."
            case .clothingFoldingSubTask: return "Set up a folding area with a flat surface for folding clothes, and store laundry baskets nearby for easy sorting."
            case .hatCoatHooks: return "Install hooks near the entrance of the garage for hats, coats, and other outerwear."
            case .laundrySubTasks: return "Organize laundry supplies in a designated cabinet or shelf, keeping detergent, softeners, and cleaning products neatly stored and labeled."
            case .bootShoeStorage: return "Use a shoe rack or bin to store boots and shoes near the garage entrance, keeping them out of the way but accessible."
            case .petCareSubTask: return " Designate an area for pet care items like food, grooming tools, and leashes. Store items in labeled bins or on shelves for easy access."
            case .extraLuggageSubTask: return "Store luggage on shelves or in overhead storage, keeping suitcases and travel bags organized and out of the way when not in use."
            case .outdoorEquipmentSubTask: return "Organize outdoor equipment like tents, kayaks, or camping gear on racks or shelves, and store smaller items in labeled bins."
            case .seasonalItemsSubTask: return "Store seasonal items like holiday decor or pool toys in labeled bins, grouping them by season for easy access when needed."
            case .longItemRackSubTask: return "Install a long item rack to store items like ladders, skis, or fishing rods, keeping them safely off the ground and easily accessible."
            }
        }
        var usageDescription: String {
            switch self {
            case .carCleaningSubTask: return "Having a specific space for car cleaning supplies ensures that everything is ready for a quick wash. This keeps your car looking great without the hassle of searching for materials."
            case .garageDoorSubTask: return "A well-maintained garage door ensures safety and smooth operation. Keeping the entrance clutter-free prevents accidents and prolongs the life of the door mechanism."
            case .vehicleParkingSubTask: return "Designating a parking space prevents damage to both your vehicle and surrounding items, making it easier to park safely and navigate the garage."
            case .tireStorageSubtask: return "Proper tire storage extends their life and makes seasonal changes more manageable. Organized storage also frees up floor space and reduces clutter."
            case .workBenchSubTask: return "A tidy workbench enhances productivity and makes it easier to complete projects. Having tools and materials well-organized ensures you can focus on the task at hand."
            case .chargingStationSubTask: return "A charging station ensures your tools or vehicle stay powered and ready for use without the hassle of tangled cords or searching for chargers."
            case .toolCleaningSubTask: return "Keeping tools clean prolongs their life and ensures they work efficiently. Having cleaning supplies on hand makes tool maintenance easier and encourages regular upkeep."
            case .handToolSubTask: return "Proper organization of hand tools reduces time spent searching for the right tool and makes projects run more smoothly, enhancing productivity."
            case .powerToolSubTask: return "Organized power tools ensure safety and longevity, making it easy to grab the right tool when needed. Proper storage also keeps the workspace tidy."
            case .smallPartsSubTask: return "Keeping small parts organized prevents them from getting lost and makes assembly or repair tasks faster and more efficient."
            case .safetyEquipmentSubTask: return "Safety should always come first, and having equipment readily accessible encourages safe practices in the garage and on projects."
            case .gardenToolSubTask: return "Proper garden tool storage keeps tools in good condition and makes it easier to access them when working outdoors, helping to maintain an organized garage."
            case .lawnEquipmentSubTask: return "Having lawn equipment organized and accessible ensures yard work can be done efficiently, while proper storage extends the life of the equipment."
            case .outdoorFurnitureSubTask: return "Storing outdoor furniture properly protects it from the elements, ensuring it stays in good condition and ready for use when the season changes."
            case .plantingSuppliesSubTask: return " Organized planting supplies make gardening more enjoyable and efficient by having everything you need in one place, reducing time spent searching for materials."
            case .pottingBenchSubTask: return " A well-organized potting bench provides a dedicated space for gardening projects, making them easier and more enjoyable while keeping the area tidy."
            case .hoseStorageSubTask: return "Proper hose storage prevents kinks and prolongs the life of the hose, while also keeping the garage and yard looking tidy"
            case .ballStorageSubTask: return "Organized ball storage keeps sports gear accessible while reducing clutter, making it easy to start play without searching for equipment."
            case .bikeRackSubTask: return "Proper bike storage keeps bikes safe from damage and makes them easy to access, saving space in the garage while encouraging active lifestyles."
            case .sportsEquipmentRackSubTask: return " Keeping sports equipment organized ensures everything is ready for use, making it easier to enjoy outdoor activities without digging through clutter."
            case .sportsGearSubTask: return "Seasonal gear storage keeps items protected during off-seasons and ensures they are easy to access when needed, preserving the condition of your equipment."
            case .holidayDecorSubTask: return "Organized holiday decor storage prevents damage and makes decorating for the holidays stress-free by having everything in one place and ready to use."
            case .seasonalToys: return "Seasonal toy organization makes it easy to switch toys as the seasons change, keeping playtime fun and reducing clutter in the playroom or garage."
            case .winterGear: return "Proper storage of winter gear ensures it stays in good condition, reducing the stress of finding cold-weather items when you need them most."
            case .outdoorDecorSubTask: return "Keeping outdoor decor stored properly ensures it stays in good condition for future use and reduces clutter in your garage or outdoor spaces."
            case .cleaningSuppliesSubTask: return " Having cleaning supplies readily available ensures that you can keep your garage clean and tidy with minimal effort, maintaining a functional workspace."
            case .miscHouseholdItemsSubTask: return "Proper storage of miscellaneous items helps prevent clutter and makes it easier to find what you need when household tasks arise."
            case .overflowPantrySubtask: return "An overflow pantry provides extra storage space for bulk food purchases and keeps your main pantry organized, ensuring you always have essentials on hand."
            case .paperGoodsSubTask: return "Organized paper goods storage prevents overbuying and ensures you’re always stocked, saving time and avoiding last-minute shopping trips."
            case .emergencySuppliesSubTask: return "Organizing emergency supplies ensures you’re prepared for unexpected situations, making critical items easy to find when they’re needed most."
            case .compostingAreaSubTask: return "Composting reduces waste and creates nutrient-rich soil for gardening, and having a dedicated area for composting makes it easier to follow an eco-friendly routine."
            case .recyclingBinSubTask: return "Properly organized recycling bins make it easy to sort and dispose of recyclables, helping you reduce waste and stay environmentally conscious."
            case .trashBinSubTask: return "Organized trash bins make waste disposal more efficient and help keep the garage clean and free from odors, creating a pleasant and functional space."
            case .hazardousWasteSubTask: return "Safe storage of hazardous waste protects your family and the environment, ensuring these items are handled responsibly."
            case .donationBinAreaSubTask: return "A designated donation bin makes it simple to declutter your space while giving back to the community, reducing waste and helping others."
            case .cleaningMaintenanceSubTasks: return "Having cleaning maintenance supplies organized helps you stay on top of garage upkeep, keeping the space functional and clean for daily use."
            case .houseToolsSubTask: return "Keeping house tools organized makes repairs quicker and more efficient, ensuring that you can tackle maintenance tasks with minimal disruption."
            case .dIYRepairSubTask: return "A well-organized DIY repair area fosters creativity and productivity, making it easy to start projects without searching for tools and materials."
            case .yardEquipmentSubTask: return "Proper yard equipment storage ensures that everything is ready to use when you need it, reducing time spent searching and extending the life of your tools."
            case .clothingFoldingSubTask: return " A dedicated clothing folding area makes laundry tasks more manageable and keeps clothes neatly organized and ready to be put away"
            case .hatCoatHooks: return " A dedicated clothing folding area makes laundry tasks more manageable and keeps clothes neatly organized and ready to be put away"
            case .laundrySubTasks: return "Proper laundry organization ensures that supplies are readily available and easy to find, making laundry tasks more efficient and less stressful."
            case .bootShoeStorage: return "Organized boot and shoe storage prevents clutter and keeps dirt and mud from being tracked into the house, ensuring a clean and functional entryway."
            case .petCareSubTask: return "A pet care area keeps everything your pets need in one place, making daily care routines easier and keeping pet supplies organized and accessible."
            case .extraLuggageSubTask: return "Proper luggage storage keeps travel gear in good condition and ensures it’s ready for use when needed, freeing up space in your home or garage."
            case .outdoorEquipmentSubTask: return "Proper outdoor equipment storage protects your gear from damage and makes it easy to grab and go when you’re ready for an adventure."
            case .seasonalItemsSubTask: return "Organizing seasonal items keeps them safe and ensures they’re easy to find when the time comes, reducing clutter and freeing up space in your home."
            case .longItemRackSubTask: return "Proper storage of long items maximizes space and prevents damage, ensuring that these larger items are stored securely and ready for use when needed."
            }
        }
        var weight: Double { 2.0 }
        
        var progress: Double {
            return isCompleted ? 100.0 : 0.0
        }
        var isCompleted: Bool {
            switch self {
            case .carCleaningSubTask, .garageDoorSubTask, .vehicleParkingSubTask, .tireStorageSubtask, .chargingStationSubTask, .workBenchSubTask,  .toolCleaningSubTask, .handToolSubTask, .powerToolSubTask, .smallPartsSubTask, .safetyEquipmentSubTask, .gardenToolSubTask, .lawnEquipmentSubTask, .outdoorFurnitureSubTask, .plantingSuppliesSubTask, .pottingBenchSubTask, .hoseStorageSubTask, .ballStorageSubTask, .bikeRackSubTask, .sportsEquipmentRackSubTask, .sportsGearSubTask, .holidayDecorSubTask, .seasonalToys, .winterGear, .outdoorDecorSubTask, .cleaningSuppliesSubTask, .miscHouseholdItemsSubTask, .overflowPantrySubtask, .paperGoodsSubTask, .emergencySuppliesSubTask, .compostingAreaSubTask, .recyclingBinSubTask, .trashBinSubTask, .hazardousWasteSubTask, .donationBinAreaSubTask, .cleaningMaintenanceSubTasks, .houseToolsSubTask, .dIYRepairSubTask, .yardEquipmentSubTask, .clothingFoldingSubTask, .hatCoatHooks, .laundrySubTasks, .bootShoeStorage, .petCareSubTask, .extraLuggageSubTask, .outdoorEquipmentSubTask, .seasonalItemsSubTask, .longItemRackSubTask: return true
            }
        }
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .carCleaningSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .garageDoorSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .vehicleParkingSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .tireStorageSubtask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .workBenchSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .chargingStationSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .toolCleaningSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .handToolSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .powerToolSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .smallPartsSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .safetyEquipmentSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .gardenToolSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .lawnEquipmentSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .outdoorFurnitureSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .plantingSuppliesSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
                
            case .pottingBenchSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .hoseStorageSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .ballStorageSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .bikeRackSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .sportsEquipmentRackSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .sportsGearSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .holidayDecorSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
                
            case .seasonalToys:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .winterGear:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .outdoorDecorSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .cleaningSuppliesSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .miscHouseholdItemsSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .overflowPantrySubtask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .paperGoodsSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .emergencySuppliesSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .compostingAreaSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .recyclingBinSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .trashBinSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .hazardousWasteSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .donationBinAreaSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .cleaningMaintenanceSubTasks:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .houseToolsSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .dIYRepairSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .yardEquipmentSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .clothingFoldingSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .hatCoatHooks:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .laundrySubTasks:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .bootShoeStorage:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .petCareSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .extraLuggageSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .outdoorEquipmentSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .seasonalItemsSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            case .longItemRackSubTask:
                return [
                    MiniTaskTypeBox(GarageMiniTaskType.remove)!,
                    MiniTaskTypeBox(GarageMiniTaskType.clean)!,
                    MiniTaskTypeBox(GarageMiniTaskType.categorize)!,
                    MiniTaskTypeBox(GarageMiniTaskType.group)!,
                    MiniTaskTypeBox(GarageMiniTaskType.sort)!,
                    MiniTaskTypeBox(GarageMiniTaskType.contain)!,
                    MiniTaskTypeBox(GarageMiniTaskType.label)!
                ]
            }
        }
    
        static var SubTaskType: [any SubTaskType] {
            return GarageSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }
    enum ComingSoonSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
        case comingSoon
        
        var id: UUID { UUID() }
        var name: String { rawValue }
        var imageName: String { rawValue }
        var instructions: String { "comingSoon" }
        var usageDescription: String { "comingSoon" }
        var weight: Double { 2.0 }
        var progress: Double { 0.0 }
        var isCompleted: Bool { false }
        
        var miniTask: (any MiniTaskType)? {
            return nil
        }
        var miniTaskTypes: [MiniTaskTypeBox] {
            switch self {
            case .comingSoon:  return []
            }
        }
        var SubTaskType: [any SubTaskType] {
            return ComingSoonSubTaskType.allCases.map { $0 as any SubTaskType }
        }
    }
    
