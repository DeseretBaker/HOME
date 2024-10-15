//
//  GarageSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/15/24.
//

import Foundation

enum GarageSpaceType: String, Codable, CaseIterable, Identifiable, SpaceType {
    case vehicleParking = "Vehicle Parking"
    case carCleaningSupplies = "Car Cleaning Supplies"
    case garageDoorArea = "Garage Door Area"
    case tireStorageCorner = "Tire Storage Corner"
    case chargingStation = "Charging Station"
    // GarageTool
    case handToolStorage = "Hand Tool Storage"
    case powerToolStorage = "Power Tool Storage"
    case workBench = "Work Bench"
    case toolCleaningMaintenance = "Tool Cleaning Maintenance"
    case smallPartsOrganizer = "Small Parts Organizer"
    case safetyEquipmentStation = "Safety Equipment Station"
    // GarageGarden
    case gardenToolStorage = "Garden Tool Storage"
    case plantingSupplies = "Planting Supplies"
    case lawnEquipment = "Lawn Equipment"
    case outdoorDecorationsFurniture = "Outdoor Decorations Furniture"
    case pottingBench = "Potting Bench"
    case hoseStorage = "Hose Storage"
    // GarageSportsGear
    case ballStorage = "Ball Storage"
    case bikeRack = "Bike Rack"
    case sportsEquipmentRack = "Sports Equipment Rack"
    case sportsGear = "Seasonal Sports Gear"
    // GarageSeasonalStorage
    case holidayDecorations = "Holiday Decorations"
    case winterClothingGear = "Winter Clothing Gear"
    case seasonalToysOutdoorGear = "Seasonal Toys Outdoor Gear"
    case outdoorFurnitureStorage = "Outdoor Furniture Storage"
    // GarageHouseholdStorage
    case overflowPantry = "Overflow Pantry"
    case cleaningSupplies = "Cleaning Supplies"
    case paperGoodsStorage = "Paper Goods Storage"
    case miscellaneousHouseholdItems = "Miscellaneous Household Items"
    case emergencySupplies = "Emergency Supplies"
    // GarageWasteRecycling
    case trashBinArea = "Trash Bin Area"
    case recyclingBinArea = "Recycling Bin Area"
    case compostingArea = "Composting Area"
    case hazardousWasteArea = "Hazardous Waste Area"
    case donationBinArea = "Donation Bin Area"
    // GarageMaintenance
    case houseMaintenanceTools = "House Maintenance Tools"
    case cleaningMaintenanceProducts = "Cleaning Maintenance Products"
    case dIYRepairArea = "DIY Repair Area"
    case yardMaintenanceEquipmentZone = "Yard Maintenance"
    // GarageMudroomLaundry
    case shoeBootStorage = "Shoe Boot Storage"
    case coatHatHooks = "Coat Hats Hooks"
    case laundrySupplies = "Laundry Supplies"
    case clothingFoldingHangingArea = "Clothing Folding Hanging Area"
    case petCare = "Pet Care"
    // GarageOverhead
    case seasonalItems = "Seasonal Items"
    case extraLuggage = "Extra Luggage"
    case outdoorEquipment = "Outdoor Equipment"
    case longItemRack = "Long Item Rack"
    
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .vehicleParking: return "Designate a specific area in the garage for vehicle parking by marking the floor or using parking stops. Clear the space of any clutter that could obstruct parking. Make sure there’s enough room on either side for easy access to doors."
        case .carCleaningSupplies: return "Use shelves or storage bins to neatly organize car cleaning items such as wax, glass cleaner, microfiber towels, and vacuum attachments. Label the bins and make sure they’re easy to reach."
        case .garageDoorArea: return "Keep the area around your garage door clear of items that could block the door’s movement. Use hooks or a small shelf for remotes or keys. Make sure there’s easy access to openers or safety features like manual overrides."
        case .tireStorageCorner: return "Stack your tires either vertically on a tire rack or horizontally if space allows. Keep a cover over them to protect from dust, or place them in individual tire bags."
        case .chargingStation: return "Create a specific zone in the garage for charging electric vehicles or power tools. Install easy-to-reach outlets, hooks for cords, and label each charger. Consider using surge protectors for safety."
        case .handToolStorage: return "Hang tools like hammers, wrenches, and screwdrivers on pegboards, or use drawer organizers to separate them by type or size. Label sections for quick identification."
        case .powerToolStorage: return "Store power tools on sturdy shelves or in lockable cabinets for safety. Keep the tools’ cords neatly coiled, and place charging stations nearby for cordless tools."
        case .workBench: return "Clear off your workbench, keeping only the essentials on the surface. Use drawers or pegboards to store tools and supplies close by but out of the way. Install a good light source for precision work."
        case .toolCleaningMaintenance: return "Set up a small station with tool oil, cleaning brushes, and sharpening tools. Keep rags and rust removers nearby for easy access."
        case .smallPartsOrganizer: return "Use clear storage containers or drawer units with dividers to organize screws, nails, bolts, and other small parts. Label each section for easy identification."
        case .safetyEquipmentStation: return "Install hooks or shelves near your work area for safety gear like goggles, gloves, and ear protection. Keep everything in one place so it’s easy to grab before starting a project"
        case .gardenToolStorage: return "Use wall-mounted racks, hooks, or shelving units to hang rakes, shovels, hoes, and pruners. Arrange by size or type for easy accessUse wall-mounted racks, hooks, or shelving units to hang rakes, shovels, hoes, and pruners. Arrange by size or type for easy access"
        case .plantingSupplies: return "SStore pots, soil, seeds, and gardening gloves on labeled shelves or in bins. Keep smaller items like plant labels and twine in easy-to-reach containers."
        case .lawnEquipment: return "Store lawnmowers, trimmers, and other bulky lawn equipment in a specific area of the garage, either on the floor or on heavy-duty shelving. Keep cords and fuel nearby for convenience."
        case .outdoorDecorationsFurniture: return "Store outdoor decor like string lights, lawn ornaments, or patio furniture in large bins or on shelves. Keep everything covered or bagged to prevent dust buildup."
        case .pottingBench: return "Set up a potting bench with a work surface for potting plants, along with drawers or shelves for tools, soil, and pots. Install hooks to hang small gardening tools."
        case .hoseStorage: return "Install a wall-mounted hose reel or use a hose cart to keep your garden hose neatly coiled and off the ground."
        case .ballStorage: return "Use a ball storage rack or a bin to keep sports balls organized and off the floor. Label bins by sport if needed."
        case .bikeRack: return "Install wall-mounted hooks or a floor-standing bike rack to store bikes and helmets. Make sure the rack is sturdy and accessible."
        case .sportsEquipmentRack: return "Use a rack or shelves to store sports equipment like bats, gloves, and racquets. Label sections for easy access."
        case .sportsGear: return "Store seasonal gear like skis, snowboards, or beach umbrellas in labeled bins, racks, or overhead storage. Keep everything covered and protected when not in use."
        case .holidayDecorations: return "Store holiday decorations in labeled bins by holiday. Use clear bins to easily see what’s inside, and stack them neatly on shelves."
        case .winterClothingGear: return "Store winter coats, boots, and gloves in a designated area. Use bins for smaller items and hang coats on sturdy hooks."
        case .seasonalToysOutdoorGear: return "Use labeled bins or racks to store seasonal outdoor toys like pool floats, sleds, or camping gear."
        case .outdoorFurnitureStorage: return "Store outdoor furniture in a dry area or cover them with protective tarps when not in use. Use shelves for smaller decor items."
        case .overflowPantry: return "Store extra pantry items like canned goods, bulk items, or paper goods on designated shelves in the garage. Label shelves for easy organization."
        case .cleaningSupplies: return "Store cleaning supplies like sponges, cleaners, and brooms on shelves or in bins. Keep similar items together for quick access."
        case .paperGoodsStorage: return "Store paper towels, napkins, toilet paper, and other paper goods on shelves or in bins. Label each section and stack items neatly so they’re easy to grab when needed."
        case .miscellaneousHouseholdItems: return "Use bins or shelves to store miscellaneous items that don’t fit into specific categories. Label each bin by item type, such as light bulbs, batteries, or extension cords."
        case .emergencySupplies: return "Designate a shelf or cabinet for emergency supplies like first aid kits, flashlights, batteries, water, and non-perishable food. Store them in easy-to-access containers and label each one."
        case .trashBinArea: return "SSet up a specific area near the garage door for your trash bins. Use racks or designated floor space to keep them neatly stored and easy to roll out on trash day."
        case .recyclingBinArea: return "Arrange separate bins for paper, plastic, glass, and metals. Clearly label each bin and position them near the trash bins for easy sorting."
        case .compostingArea: return "Set up a small bin or container for compostable materials like food scraps and garden waste. Keep it in an easily accessible spot near the back or side of the garage."
        case .hazardousWasteArea: return "Use a secure cabinet or bin to store hazardous materials such as chemicals, batteries, paints, and oils. Label the area clearly and make sure it’s childproof and away from common areas."
        case .donationBinArea: return "Set up a bin or shelf for items you plan to donate, such as clothes, toys, or household goods. Label it clearly and keep it in a convenient spot for easy access."
        case .houseMaintenanceTools: return "Organize hammers, screwdrivers, wrenches, and other house maintenance tools in a toolbox or on a pegboard. Label each section for easy access."
        case .cleaningMaintenanceProducts: return "Store cleaning supplies like mops, brooms, and all-purpose cleaners in a designated area of the garage. Use hooks to hang larger items and bins or shelves for smaller products."
        case .dIYRepairArea: return "Create a dedicated space for DIY projects with a workbench, tools, and repair supplies. Keep everything neatly organized in bins or toolboxes, with a pegboard for quick access to frequently used tools."
        case .yardMaintenanceEquipmentZone: return "Organize your lawn mower, leaf blower, hedge trimmers, and gardening tools in one area. Use hooks, shelves, or large bins to keep everything neatly stored."
        case .shoeBootStorage: return "Install shoe racks or use bins to organize shoes and boots near the entrance of the garage. Label each section for family members or by shoe type."
        case .coatHatHooks: return "Install sturdy hooks or a coat rack near the garage entrance for hanging coats, hats, and umbrellas. Keep them at varying heights for easy access by everyone."
        case .laundrySupplies: return "Organize laundry detergents, fabric softeners, and stain removers on shelves or in bins near your laundry area. Label each container and keep frequently used items within easy reach."
        case .clothingFoldingHangingArea: return "Create a space with a counter or table for folding clothes, and install hanging rods or hooks for freshly laundered items. Keep baskets nearby for sorting."
        case .petCare: return "Store pet care items such as food, grooming tools, leashes, and toys in one section of the garage. Use bins or shelves to organize by item type, and label each one."
        case .seasonalItems: return "Use labeled bins or overhead storage for seasonal items like holiday decorations, camping gear, or snow removal equipment. Group similar items together by season."
        case .extraLuggage: return "Store suitcases, duffle bags, and travel gear in overhead racks or on shelves. Keep them clean and dry by using covers or placing them in dust-free areas."
        case .outdoorEquipment: return "Store outdoor equipment like camping tents, kayaks, or fishing gear in labeled bins or on racks. Keep items off the floor to prevent damage from moisture or dirt."
        case .longItemRack: return "Install a rack or hooks to hold long items like ladders, fishing rods, or skis. Position the rack along the wall to keep these items securely stored and off the ground."
            
        }
    }
    var usageDescription: String {
        switch self {
        case .vehicleParking: return "Having a dedicated parking space ensures that your vehicle stays safe from scratches, dents, and accidental damage, while making daily parking a breeze. Plus, keeping it clutter-free saves time when you’re in a rush to park or leave!"
        case .carCleaningSupplies: return "When your car cleaning supplies are in one convenient place, you’ll always be ready for that quick car detail session. It also prevents duplicate purchases of supplies you might already have but can’t find."
        case .garageDoorArea: return "A clear and functional garage door area ensures smooth operation of the door, avoiding potential hazards or breakdowns. You’ll also have peace of mind knowing that access is easy during emergencies."
        case .tireStorageCorner: return "Proper tire storage helps prevent wear and tear, extending the life of your tires. It also keeps them neatly organized and ready for easy swapping when the season changes."
        case .chargingStation: return "A well-organized charging station ensures that your tools, gadgets, or vehicles are always powered up and ready to go. No more searching for chargers or dealing with tangled cords—just plug in and charge with ease."
        case .handToolStorage: return "Organizing hand tools keeps them easily accessible and prevents you from wasting time searching for the right tool in the middle of a project. Plus, it protects your tools from getting damaged or lost."
        case .powerToolStorage: return "Organized power tool storage keeps expensive equipment safe and in good working condition. It also makes starting any project a lot easier when you know exactly where everything is."
        case .workBench: return "A clean, organized workbench is key to any successful project. It gives you a clutter-free zone to work on repairs, crafting, or DIY projects, making you more efficient and inspired."
        case .toolCleaningMaintenance: return "Regularly cleaning and maintaining your tools keeps them in tip-top shape, extending their lifespan and ensuring they perform at their best when you need them most."
        case .smallPartsOrganizer: return "Small parts can easily get lost or mixed up, but with proper organization, you’ll know exactly where each item is when you need it, saving time and frustration."
        case .safetyEquipmentStation: return "Safety should always come first, and having your protective gear easily accessible encourages you to use it consistently, keeping you safe while working on projects."
        case .gardenToolStorage: return "Properly storing garden tools prevents them from rusting or dulling and keeps them organized, so you’re always ready to tackle your outdoor tasks without tripping over scattered tools."
        case .plantingSupplies: return "Having all your planting supplies in one place makes it easy to start gardening projects without hunting for materials. It also keeps your supplies clean and dry between uses."
        case .lawnEquipment: return "Designating a space for lawn equipment keeps these often bulky items out of the way but easily accessible when it’s time for yard work, helping you maintain a tidy, well-organized space."
        case .outdoorDecorationsFurniture: return "Properly storing your outdoor furniture and decor ensures they stay in great condition year after year, making it simple to pull them out when the season changes."
        case .pottingBench: return "A dedicated potting bench provides a clean, organized space to work on your gardening projects, making planting easier and more enjoyable."
        case .hoseStorage: return "Proper hose storage prevents kinks, cracks, and tangles, ensuring your hose lasts longer and is always ready for use when you need to water the garden or wash the car."
        case .ballStorage: return "Having a designated spot for balls means your garage stays neat, and you won’t waste time searching for that missing basketball or soccer ball when it’s time to play."
        case .bikeRack: return "Storing bikes properly saves valuable floor space and prevents bikes from tipping over or getting damaged."
        case .sportsEquipmentRack: return "Organizing sports equipment ensures it’s all in one place, making it easy to grab what you need and reducing clutter in the garage."
        case .sportsGear: return "Organized seasonal sports gear prevents damage and makes sure it’s ready when you need it next season, saving time and stress."
        case .holidayDecorations: return "Organized holiday decorations make setting up (and packing away) for the holidays fun and hassle-free, saving time and avoiding tangled lights or broken ornaments."
        case .winterClothingGear: return "Having winter clothing and gear organized in one place makes it easy to grab what you need when the cold weather arrives, saving you from searching through closets or storage boxes."
        case .seasonalToysOutdoorGear: return "Keeping seasonal items organized prevents damage and helps them last longer, making it easy to grab them when outdoor fun calls."
        case .outdoorFurnitureStorage: return "Properly storing outdoor furniture prolongs its life and keeps it looking great for next season, saving you from replacing worn-out pieces every year."
        case .overflowPantry: return "An overflow pantry gives you extra storage space for non-perishables, making it easy to stock up on essentials without cluttering your kitchen pantry."
        case .cleaningSupplies: return "An organized cleaning supply area means you’ll always have what you need on hand to keep your home spotless,"
        case .paperGoodsStorage: return " Keeping paper goods organized ensures you’re always stocked up for the long haul, saving you from last-minute runs to the store. It also keeps the garage tidy and prevents paper products from getting damaged by moisture or dust."
        case .miscellaneousHouseholdItems: return "Having a dedicated spot for miscellaneous items keeps them from getting lost or scattered around the house. It ensures everything has a place, making it easier to find those household essentials when you need them."
        case .emergencySupplies: return "Organized emergency supplies mean you’re prepared for the unexpected. In an emergency, you won’t waste precious time searching for critical items—they’ll be right where you need them."
        case .trashBinArea: return "A dedicated trash bin area keeps the garage smelling fresh and prevents clutter from piling up. It also makes it simple to take out the trash without maneuvering around other items in the garage."
        case .recyclingBinArea: return "An organized recycling area makes it easy to stay eco-friendly, encouraging everyone in the house to sort and dispose of recyclables properly. It also helps reduce waste and keep your garage cleaner."
        case .compostingArea: return "Having a dedicated composting area helps reduce household waste and provides nutrient-rich compost for your garden. It keeps things tidy and promotes a sustainable lifestyle."
        case .hazardousWasteArea: return "Proper storage of hazardous waste is essential for safety and environmental protection. Keeping it organized ensures you handle these materials correctly and responsibly when it’s time to dispose of them."
        case .donationBinArea: return "A designated donation bin encourages decluttering while also giving back to the community. It makes it easy to gather items over time and ensures nothing gets forgotten or misplaced before a donation run."
        case .houseMaintenanceTools: return "Having your house maintenance tools organized and within reach means you’ll always be ready to tackle repairs or home improvement projects without digging through drawers or boxes."
        case .cleaningMaintenanceProducts: return "Keeping your cleaning products organized and easily accessible makes household chores more efficient and ensures you have everything you need in one place."
        case .dIYRepairArea: return "A DIY repair area makes it easy to jump into home projects or repairs without having to set up a new workspace each time. It keeps all your materials and tools ready for action, saving you time and frustration."
        case .yardMaintenanceEquipmentZone: return "Having a designated zone for yard equipment keeps these bulky tools out of the way but still easily accessible for outdoor chores. It also extends the life of your equipment by keeping it clean and protected."
        case .shoeBootStorage: return "A dedicated shoe and boot storage area keeps the garage and house floors clean by providing a spot to leave dirty or wet shoes. It also ensures everyone’s footwear stays organized and easy to find."
        case .coatHatHooks: return "Organizing coats and hats on hooks prevents them from cluttering other areas of the house. It also keeps outdoor essentials easily accessible as you head in and out, especially during colder months."
        case .laundrySupplies: return "Having a well-organized laundry supply area makes laundry day faster and more efficient. You’ll always know where to find the right products, saving time and keeping your laundry area neat."
        case .clothingFoldingHangingArea: return "A dedicated folding and hanging area helps you stay on top of laundry without cluttering the rest of the house. It makes folding and organizing clothes a smoother process and reduces wrinkles."
        case .petCare: return "Keeping pet supplies organized ensures your furry friends are always taken care of. It saves you time and stress by having everything from food to grooming tools in one convenient place."
        case .seasonalItems: return "Organizing seasonal items prevents clutter and keeps them protected when not in use. It makes seasonal changes easier, so you can transition smoothly without digging through piles of unrelated items."
        case .extraLuggage: return "WA dedicated space for extra luggage keeps your travel gear organized and ready for your next adventure. It also prevents damage and wear from being stacked in inconvenient places."
        case .outdoorEquipment: return "Organizing outdoor equipment ensures it’s well-preserved and easy to grab when you’re ready for your next outdoor adventure. It also keeps the garage tidy and free from bulky gear piling up."
        case .longItemRack: return "A long item rack maximizes vertical space in your garage, preventing long items from cluttering the floor and keeping them safe from damage. It makes accessing these items easier when you need them."
            
        }
    }
    var weight: Double { 5.0 }
    
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .carCleaningSupplies, .garageDoorArea, .vehicleParking, .tireStorageCorner, .chargingStation, .handToolStorage, .powerToolStorage, .toolCleaningMaintenance, .workBench, .smallPartsOrganizer, .safetyEquipmentStation, .gardenToolStorage, .lawnEquipment, .outdoorDecorationsFurniture, .plantingSupplies, .pottingBench, .hoseStorage, .ballStorage, .bikeRack, .sportsEquipmentRack, .sportsGear, .holidayDecorations, .seasonalToysOutdoorGear, .winterClothingGear, .outdoorFurnitureStorage, .cleaningSupplies, .miscellaneousHouseholdItems, .overflowPantry, .paperGoodsStorage, .emergencySupplies, .compostingArea, .recyclingBinArea, .trashBinArea, .donationBinArea, .hazardousWasteArea, .cleaningMaintenanceProducts, .houseMaintenanceTools, .dIYRepairArea, .yardMaintenanceEquipmentZone, .clothingFoldingHangingArea, .coatHatHooks, .laundrySupplies, .shoeBootStorage, .petCare, .extraLuggage, .outdoorEquipment, .seasonalItems, .longItemRack: return true
        }
    }
    
    var subTask: (any SubTaskType)? {
        return nil
    }
    var subTaskTypes: [SubTaskTypeBox] {
        switch self {
        case .carCleaningSupplies, .garageDoorArea, .vehicleParking, .tireStorageCorner, .chargingStation, .handToolStorage, .powerToolStorage, .toolCleaningMaintenance, .workBench, .smallPartsOrganizer, .safetyEquipmentStation, .gardenToolStorage, .lawnEquipment, .outdoorDecorationsFurniture, .plantingSupplies, .pottingBench, .hoseStorage, .ballStorage, .bikeRack, .sportsEquipmentRack, .sportsGear, .holidayDecorations, .seasonalToysOutdoorGear, .winterClothingGear, .outdoorFurnitureStorage, .cleaningSupplies, .miscellaneousHouseholdItems, .overflowPantry, .paperGoodsStorage, .emergencySupplies, .compostingArea, .recyclingBinArea, .trashBinArea, .donationBinArea, .hazardousWasteArea, .cleaningMaintenanceProducts, .houseMaintenanceTools, .dIYRepairArea, .yardMaintenanceEquipmentZone, .clothingFoldingHangingArea, .coatHatHooks, .laundrySupplies, .shoeBootStorage, .petCare, .extraLuggage, .outdoorEquipment, .seasonalItems, .longItemRack:
            return GarageSubTaskType.allCases.map { SubTaskTypeBox($0)! }
        }
    }
    static var parkingZoneSpaces: [GarageSpaceType] {
        return [.chargingStation, .vehicleParking, .garageDoorArea, .safetyEquipmentStation]
    }
    static var activityZoneSpaces: [GarageSpaceType] {
        return [.bikeRack, .ballStorage, .seasonalToysOutdoorGear, .sportsEquipmentRack, .sportsGear, .winterClothingGear]
    }
    static var outdoorZoneSpaces: [GarageSpaceType] {
        return [.gardenToolStorage, .hoseStorage, .lawnEquipment, .longItemRack, .outdoorDecorationsFurniture, .outdoorEquipment, .outdoorFurnitureStorage, .plantingSupplies, .pottingBench, .yardMaintenanceEquipmentZone]
    }
    static var allThingsWasteZoneSpaces: [GarageSpaceType] {
        return [.donationBinArea, .recyclingBinArea, .trashBinArea, .compostingArea, .hazardousWasteArea]
    }
    static var repairZoneSpaces: [GarageSpaceType] {
        return [.dIYRepairArea, .safetyEquipmentStation, .smallPartsOrganizer, .workBench, .houseMaintenanceTools]
    }
    static var cleaningZoneSpaces: [GarageSpaceType] {
        return [.cleaningSupplies, .carCleaningSupplies, .cleaningMaintenanceProducts, .toolCleaningMaintenance, .laundrySupplies]
    }
    static var toolZoneSpaces: [GarageSpaceType] {
        return [.handToolStorage, .houseMaintenanceTools, .powerToolStorage, .gardenToolStorage, .handToolStorage, .toolCleaningMaintenance, .workBench]
    }
    static var storageZoneSpaces: [GarageSpaceType] {
        return [.clothingFoldingHangingArea, .coatHatHooks, .emergencySupplies, .extraLuggage, .holidayDecorations, .laundrySupplies, .miscellaneousHouseholdItems, .overflowPantry, .petCare, .paperGoodsStorage, .seasonalItems, .shoeBootStorage, .tireStorageCorner]
    }
    static var SpaceType: [any SpaceType] {
        return GarageSpaceType.allCases.map { $0 as any SpaceType }
    }
}
