//
//  SubTaskTypes.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation

enum KitchenCookingSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
   
    case stovetop = "Stovetop"
    case oven = "Oven"
    case cookware = "Cookware"
    case cookingUtensils = "CookingUtensils"
    case pantryEssentials = "PantryEssentials"
    case ventilation = "Ventilation"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .stovetop: return "Maintain and organize your stovetop area, ensuring it’s clean and ready for everyday cooking tasks"
        case .oven: return "Keep your oven in top condition by cleaning and organizing its interior, racks, and related tools"
        case .cookware: return "Sort and arrange your pots, pans, and cookware for easy access and efficient use in the kitchen."
        case .cookingUtensils: return "Organize and declutter your cooking utensils for better kitchen efficiency and a cleaner workspace."
        case .pantryEssentials: return "Organize and declutter your cooking utensils for better kitchen efficiency and a cleaner workspace"
        case .ventilation: return "Ensure proper ventilation in your cooking area by cleaning and maintaining your range hood and filters."
        }
    }
    var usageDescription: String {
        switch self {
        case .stovetop: return "Your stovetop is where culinary magic begins, whether you’re searing, sautéing, or simmering. Keep it organized and clean to inspire your next delicious creation!"
        case .oven: return "The oven is your gateway to warm, comforting meals and perfect bakes. Keeping it ready ensures your next roast or bake is nothing short of perfection!"
        case .cookware: return "Your cookware is the backbone of every meal, from hearty stews to delicate sauces. With everything in its place, you’re always prepared to whip up something amazing."
        case .cookingUtensils: return "Your cookware is the backbone of every meal, from hearty stews to delicate sauces. With everything in its place, you’re always prepared to whip up something amazing."
        case .pantryEssentials: return "Your pantry holds the ingredients for countless delicious meals. By organizing it, you’re setting the stage for spontaneous creativity and seamless meal prep."
        case .ventilation: return "Your pantry holds the ingredients for countless delicious meals. By organizing it, you’re setting the stage for spontaneous creativity and seamless meal prep."
        }
    }
    var weight: Double { 2.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return KitchenCookingSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}

enum KitchenPrepSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
    case countertops = "Countertops"
    case cuttingBoards = "CuttingBoards"
    case utensils = "Utensils"
    case Appliances = "Appliances"
    case spiceRacks = "SpiceRacks"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .countertops: return "Keep countertops clean and clear for easy meal prep."
        case .cuttingBoards: return "Organize cutting boards for quick access during prep."
        case .utensils: return "Sort utensils to make meal prep more efficient."
        case .Appliances: return "Store appliances where they’re easy to grab when needed."
        case .spiceRacks: return "Arrange spices for easy access to enhance your dishes."
        }
    }
    var usageDescription: String {
        switch self {
        case .countertops: return "Your countertops are the foundation of every great meal, where ingredients come together in harmony. Keep them clutter-free to inspire creativity and keep your kitchen flowing smoothly."
        case .cuttingBoards: return "Cutting boards are where the magic of meal prep happens, from chopping vegetables to carving roasts. A well-organized collection ensures you’re always ready for the next slice and dice."
        case .utensils: return "Your prep utensils are essential partners in creating culinary wonders. Organize them to make your meal prep swift and seamless, allowing you to focus on your delicious dishes."
        case .Appliances: return "Your prep appliances are your trusty sidekicks, from mixers to food processors, ready to power up your recipes. Keep them organized and at hand to make meal prep an effortless joy."
        case .spiceRacks: return "Spices bring your meals to life, turning ordinary ingredients into extraordinary dishes. A well-organized spice rack ensures the right flavor is always within reach, inspiring bold and delicious creations."
        }
    }
    var weight: Double { 5.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return KitchenPrepSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}

enum KitchenCleaningSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
    case sink = "Sink"
    case dishwasher = "Dishwasher"
    case trashRecycling = "TrashRecycling"
    case cleaningSupplies = "CleaningSupplies"
    case towelHookStorage = "TowelHookStorage"
    case soapDispenser = "SoapDispenser"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .sink: return "Keep the sink clean and clear for easy dishwashing."
        case .dishwasher: return "Maintain and organize the dishwasher for efficient cleaning."
        case .trashRecycling: return "Sort trash and recycling for a cleaner kitchen."
        case .cleaningSupplies: return "Organize cleaning supplies for quick access when tidying."
        case .towelHookStorage: return "Keep towels neatly stored and accessible."
        case .soapDispenser: return "Ensure the soap dispenser is filled and functioning."
        }
    }
    var usageDescription: String {
        switch self {
        case .sink: return "The sink is the heart of cleaning, where dishes are refreshed and kitchens shine. Keep it clean and ready for action!"
        case .dishwasher: return "Your dishwasher takes care of the heavy lifting. Keep it organized and running smoothly for spotless results every time."
        case .trashRecycling: return "Managing waste is key to a clean and eco-friendly kitchen. Organize your trash and recycling for easy disposal."
        case .cleaningSupplies: return "A well-stocked and organized cleaning station makes tidying up a breeze. Keep your supplies handy for a sparkling kitchen."
        case .towelHookStorage: return "A clean towel, always within reach, keeps your kitchen tidy and your hands dry. Organize your towels for convenience."
        case .soapDispenser: return "The soap dispenser is your go-to for sparkling clean hands and dishes. Keep it filled and ready for every wash."
        }
    }
    var weight: Double { 5.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return KitchenCleaningSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}

enum KitchenFoodStorageSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
    case foodStoragePantry = "FoodStoragePantry"
    case refrigerator = "Refrigerator"
    case freezer = "Freezer"
    case snackBar = "Snack Bar"
    case bulkBins = "Bulk Bins"
    case condiments = "Condiments"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .foodStoragePantry: return "Organize pantry items for easy access and meal prep."
        case .refrigerator: return "Keep the fridge clean and organize by food type"
        case .freezer: return "Organize and label freezer items for easy access."
        case .snackBar: return "Arrange snacks for quick and easy access."
        case .bulkBins: return "Label and organize bulk bins for efficiency."
        case .condiments: return "Organize condiments for easy flavor boosts."
        }
    }
    var usageDescription: String {
        switch self {
        case .foodStoragePantry: return "The pantry is your treasure trove of ingredients, where meal possibilities begin. Keep it organized to inspire quick meals and creative cooking."
        case .refrigerator: return "Your refrigerator keeps your ingredients fresh and ready. Maintain its order for a kitchen that’s always stocked with the best."
        case .freezer: return "The freezer is your long-term storage hero, preserving meals and ingredients. Keep it organized to maximize space and freshness."
        case .snackBar: return "Snacks fuel your busy days and brighten your breaks. Keep them neatly stored and accessible for quick grabs anytime."
        case .bulkBins: return "Bulk bins help you stock up on essentials while staying organized. Keep them filled and labeled for hassle-free cooking."
        case .condiments: return "Condiments add the finishing touches to your meals. Keep them organized and within reach to flavor every dish to perfection."
        }
    }
    var weight: Double { 5.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return KitchenFoodStorageSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}

enum KitchenCookwareSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
    case drawers = "Drawers"
    case potsAndPans = "PotsAndPans"
    case bakingSheets = "BakingSheets"
    case lids = "Lids"
    case specialtyEquipment = "SpecialtyEquipment"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .drawers: return "Organize cookware drawers for easy access to tools and equipment."
        case .potsAndPans: return "Sort and arrange pots and pans for quick meal prep."
        case .bakingSheets: return "Organize baking sheets for quick access when baking or roasting."
        case .lids: return "Store lids in an organized way for easy pairing with cookware."
        case .specialtyEquipment: return "Store specialty equipment neatly for those special cooking occasions."
        }
    }
    var usageDescription: String {
        switch self {
        case .drawers: return "Drawers are the hidden gems of your kitchen, storing essential tools. Keep them organized so you’re always ready to pull out what you need."
        case .potsAndPans: return "Your pots and pans bring every meal to life, from searing to simmering. Keep them neatly organized for inspired, efficient cooking"
        case .bakingSheets: return "Baking sheets are the foundation of your favorite treats and savory dishes. Keep them easily accessible to elevate your baking game."
        case .lids: return "Lids complete the picture, sealing in flavors and keeping your meals perfectly covered. Organize them to match their pots and pans with ease."
        case .specialtyEquipment: return "Specialty equipment adds flair and versatility to your kitchen. Keep these unique tools organized and ready for your next culinary adventure."
        }
    }
    var weight: Double { 3.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return KitchenCookwareSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}

enum KitchenServingSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
    case platesBowls = "PlatesBowls"
    case glassesStemware = "GlassesStemware"
    case silverware = "Silverware"
    case tableLinens = "TableLinens"
    case serveWare = "ServeWare"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .platesBowls: return "Organize plates and bowls for easy access and beautiful presentation."
        case .glassesStemware: return "Arrange glasses and stemware for easy access and serving."
        case .silverware: return "Keep silverware organized for quick setting and clean-up."
        case .tableLinens: return "Store table linens neatly for effortless table setting."
        case .serveWare: return "Organize serveware for smooth and stylish meal presentation."
        }
    }
    var usageDescription: String {
        switch self {
        case .platesBowls: return "Plates and bowls are the canvas for your culinary creations. Keep them neatly stored to set the stage for every meal."
        case .glassesStemware: return "Glasses and stemware elevate every dining experience, from casual drinks to elegant gatherings. Keep them polished and ready to impress."
        case .silverware: return "Silverware brings function and finesse to every meal. Organize your forks, knives, and spoons so you’re always prepared for dining in style."
        case .tableLinens: return "Table linens add a touch of warmth and elegance to your dining space. Keep them folded and ready to create a welcoming table."
        case .serveWare: return "Serveware brings your dishes to the table with flair. Keep serving platters and bowls organized to make hosting a joy."
        }
    }
    var weight: Double { 4.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return KitchenServingSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}
enum KitchenBakingSubTaskType:  String, Codable, CaseIterable, Identifiable, SubTaskType {
    
    case bakingZoneBakingSupplies = "Baking Supplies"
    case bakingZoneIngredients = "Ingredients"
    case bakingZoneMixerTools = "Mixer Tools"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .bakingZoneBakingSupplies: return "Store baking sheets, mixing bowls, and measuring cups."
        case .bakingZoneIngredients: return "Organize baking ingredients like flour, sugar, and baking powder in labeled containers."
        case .bakingZoneMixerTools: return "Keep stand mixers, hand mixers, and baking tools like whisks and spatulas in designated spots."
        }
    }
    var usageDescription: String {
        switch self {
        case .bakingZoneBakingSupplies: return "The baking supplies section includes essential tools and equipment used in baking, such as measuring cups, measuring spoons, mixing bowls, rolling pins, cookie cutters, and baking sheets. These items should be organized and stored together in drawers, cabinets, or on shelves near the baking area to allow easy access when preparing baked goods. Keeping these supplies neatly arranged ensures an efficient workflow and reduces the time spent searching for the right tool during the baking process."
        case .bakingZoneIngredients: return "The ingredients section of the baking zone is where commonly used baking staples like flour, sugar, baking powder, baking soda, salt, and chocolate chips are stored. These ingredients are best kept in airtight, labeled containers to maintain freshness and prevent spills. Organizing ingredients by type and having them easily accessible ensures a smooth baking process, allowing for quick measuring and mixing without needing to search for items."
        case .bakingZoneMixerTools: return "Mixer tools include stand mixers, hand mixers, whisks, spatulas, and attachments like dough hooks or beaters. These tools are used to mix batters, doughs, and creams during the baking process. Storing mixer tools in a dedicated cabinet or shelf near the baking area, along with their attachments, helps keep the baking zone organized. Proper organization ensures that you can easily access and assemble the necessary tools for each baking task, streamlining the process and keeping the kitchen tidy."
        }
    }
    
    var weight: Double { 2.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return KitchenBakingSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}
enum KitchenDrinkSubTaskType:  String, Codable, CaseIterable, Identifiable, SubTaskType {
    
    case drinkZoneKettles = "Hot water"
    case drinkZoneMugsTravelMugs = "Mugs"
    case drinkZoneSupplies = "Supplies"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .drinkZoneKettles:
            return "Clean and organize the area around the coffee maker or kettle."
        case .drinkZoneMugsTravelMugs:
            return "Store coffee mugs and tea cups nearby for convenience."
        case .drinkZoneSupplies:
            return "Organize coffee beans, tea bags, sugar, and spoons in labeled containers or drawers."
        }
    }
    var usageDescription: String {
        switch self {
        case .drinkZoneKettles:
            return "The kettles section includes electric or stovetop kettles used for boiling water for tea, coffee, or other hot beverages. This area is typically located near the drink preparation zone to ensure quick and easy access when preparing hot drinks. Kettles should be stored on the countertop or in a nearby cabinet for easy access, especially if used daily. Keeping this area clear and organized ensures a smooth and efficient beverage-making process."
        case .drinkZoneMugsTravelMugs:
            return "The mugs section is dedicated to storing everyday mugs and travel mugs for coffee, tea, and other beverages. Mugs are usually stored in cabinets, on open shelves, or in accessible mug racks. Travel mugs should be placed within easy reach for grab-and-go convenience. Organizing mugs by size or use (everyday mugs vs. travel mugs) helps keep the drink zone neat and ensures that the appropriate mug is always at hand."
        case .drinkZoneSupplies:
            return "The supplies section holds essential items for preparing and enjoying beverages, such as tea bags, coffee beans, sugar, sweeteners, creamers, stirrers, and filters. These supplies should be organized in bins, drawers, or canisters for easy access and freshness. Storing all drink-related supplies together ensures that everything is within reach when making a beverage, streamlining the process and keeping the area clutter-free."
        }
    }
    
    var weight: Double { 2.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return KitchenDrinkSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}

enum KitchenSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
   
    case bakeware = "Bakeware"
    case serveWare = "ServeWare"
    case largeAppliances = "LargeAppliances"
    case drinkZone = "DrinkZone"
    case bakingZone = "BakingZone"
    case servingZone = "ServingZone"
    case dinnerware = "Dinnerware"
    case tableware = "Tableware"
    case foodStorageContainers = "FoodStorageContainers"
    case cookbooks = "Cookbooks"
    case glassware = "Glassware"
    case tableLinens = "TableLinens"
    case kitchenAids = "KitchenAids"
    case occasionalItems = "OccasionalItems"
    
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        
        case .bakeware: return "Organize bakeware for easy access and efficient baking."
        case .serveWare: return "Store serveware neatly for stylish meal presentation."
      
        case .largeAppliances: return "Maintain and organize large appliances for efficient use."
        case .drinkZone: return "Organize the drink zone for easy beverage preparation"
        case .bakingZone: return "Keep the baking zone organized for easy, creative baking."
        case .servingZone: return "Organize the serving zone for smooth meal presentations"
       
        case .dinnerware: return "Store dinnerware neatly for easy table setting."
        case .tableware: return "Organize tableware for easy, stylish dining."
        case .foodStorageContainers: return "Store food containers for quick meal prep and storage."
        case .cookbooks: return "Organize cookbooks for quick access to recipes and inspiration"
        case .glassware: return "Store glassware neatly for quick access and presentation."
        case .tableLinens: return "Store table linens neatly for easy use during meals"
        case .kitchenAids: return "Organize kitchen aids for quick access and ease of use."
        case .occasionalItems: return "Store occasional items neatly for easy use when needed."
        
        }
    }
    var usageDescription: String {
        switch self {
   
        case .bakeware: return "Bakeware is your key to creating perfect cakes, breads, and more. Keep it organized and ready for your next baking adventure."
        case .serveWare: return "Serveware makes every meal look as beautiful as it tastes. Keep your platters, bowls, and trays organized to add elegance to every dish."
    
        case .largeAppliances: return "Large appliances are the powerhouses of your kitchen, from your oven to your fridge. Keep them clean and maintained to ensure smooth cooking experiences."
        case .drinkZone: return "Your drink zone is where refreshing beverages come to life. Keep it organized for everything from a quick coffee to a casual cocktail."
        case .bakingZone: return "The baking zone is your creative space, where flour, sugar, and butter turn into magic. Keep it organized to fuel your next baking masterpiece."
        case .servingZone: return "The serving zone brings your culinary creations from the kitchen to the table. Keep it neat to make hosting a joy."
 
        case .dinnerware: return "Dinnerware sets the tone for your dining experience. Keep your plates, bowls, and mugs organized to create a beautiful and functional table."
        case .tableware: return "Tableware adds the final touch to your dining table. Keep your cutlery, napkins, and accessories organized for effortless elegance."
        case .foodStorageContainers: return "Food storage containers keep your meals fresh and ready to go. Organize them to store leftovers or meal prep with ease."
        case .cookbooks: return "Cookbooks are full of inspiration and new flavors. Keep them organized and within reach for easy recipe planning."
        case .glassware: return "Glassware brings elegance to every drink. Keep it organized and sparkling, ready to add a touch of class to any meal."
        case .tableLinens: return "Table linens add warmth and charm to your dining table. Keep them neatly folded and organized for every occasion."
        case .kitchenAids: return "Kitchen aids make your cooking more efficient and enjoyable. Keep these helpful tools organized and ready for action."
        case .occasionalItems: return "Occasional items come out for special meals and moments. Keep them stored and organized for those memorable occasions."
       
        }
    }
    var weight: Double { 2.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return KitchenSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}
enum LivingRoomSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
    case Tables = "Tables"
    case floatingShelves = "Floating Shelves"
    case windowBoxSeat = "Window Box Seats"
    case bookshelf = "Bookshelf"
    case cornerShelves = "Corner Shelves"
    case ottoman = "Ottoman"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .Tables: return "String"
        case .floatingShelves: return "String"
        case .windowBoxSeat: return "String"
        case .bookshelf: return "String"
        case .cornerShelves: return "String"
        case .ottoman: return "String"
        }
    }
    var usageDescription: String {
        switch self {
        case .Tables: return "String"
        case .floatingShelves: return "String"
        case .windowBoxSeat: return "String"
        case .bookshelf: return "String"
        case .cornerShelves: return "String"
        case .ottoman: return "String"
        }
    }
    var weight: Double { 2.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return LivingRoomSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}
enum DiningRoomSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
  
    
    case declutter = "Declutter"
    case organize = "Organize"
    case clean = "Clean"
    case polish = "Polish"
    case tableLinens = "Table Linens"
    case accessories = "Accessories"
    case repairsAndUpdates = "Repairs and Updates"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var usageDescription: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var weight: Double { 2.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return DiningRoomSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}
enum OfficeSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
    case declutter = "Declutter"
    case organize = "Organize"
    case clean = "Clean"
    case polish = "Polish"
    case tableLinens = "Table Linens"
    case accessories = "Accessories"
    case repairsAndUpdates = "Repairs and Updates"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var usageDescription: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var weight: Double { 2.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return OfficeSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}
enum BedroomSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
    case declutter = "Declutter"
    case organize = "Organize"
    case clean = "Clean"
    case polish = "Polish"
    case tableLinens = "Table Linens"
    case accessories = "Accessories"
    case repairsAndUpdates = "Repairs and Updates"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
    case .declutter: return "Declutter your dining room"
    case .organize: return "Organize your dining room"
    case .clean: return "Clean your dining room"
    case .polish: return "Polish your dining room"
    case .tableLinens: return "Table Linens"
    case .accessories: return "Accessories"
    case .repairsAndUpdates: return "Repairs and Updates"
    }
}
    var usageDescription: String {
        switch self {
    case .declutter: return "Declutter your dining room"
    case .organize: return "Organize your dining room"
    case .clean: return "Clean your dining room"
    case .polish: return "Polish your dining room"
    case .tableLinens: return "Table Linens"
    case .accessories: return "Accessories"
    case .repairsAndUpdates: return "Repairs and Updates"
    }
}
    var weight: Double { 2.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return BedroomSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}
enum PlayroomSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
    case declutter = "Declutter"
    case organize = "Organize"
    case clean = "Clean"
    case polish = "Polish"
    case tableLinens = "Table Linens"
    case accessories = "Accessories"
    case repairsAndUpdates = "Repairs and Updates"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var usageDescription: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var weight: Double { 2.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return PlayroomSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}
enum BathroomSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
    case declutter = "Declutter"
    case organize = "Organize"
    case clean = "Clean"
    case polish = "Polish"
    case tableLinens = "Table Linens"
    case accessories = "Accessories"
    case repairsAndUpdates = "Repairs and Updates"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var usageDescription: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var weight: Double { 2.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return BathroomSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}
enum StorageSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
    case declutter = "Declutter"
    case organize = "Organize"
    case clean = "Clean"
    case polish = "Polish"
    case tableLinens = "Table Linens"
    case accessories = "Accessories"
    case repairsAndUpdates = "Repairs and Updates"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var usageDescription: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    
    var weight: Double { 2.0 }
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return StorageSubTaskType.allCases.map { $0 as any SubTaskType }
    }
    
}
enum GarageSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
    case declutter = "Declutter"
    case organize = "Organize"
    case clean = "Clean"
    case polish = "Polish"
    case tableLinens = "Table Linens"
    case accessories = "Accessories"
    case repairsAndUpdates = "Repairs and Updates"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var usageDescription: String {
        switch self {
        case .declutter: return "Declutter your dining room"
        case .organize: return "Organize your dining room"
        case .clean: return "Clean your dining room"
        case .polish: return "Polish your dining room"
        case .tableLinens: return "Table Linens"
        case .accessories: return "Accessories"
        case .repairsAndUpdates: return "Repairs and Updates"
        }
    }
    var weight: Double { 2.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return GarageSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}
enum UnknownSubTaskType: String, Codable, CaseIterable, Identifiable, SubTaskType {
    case unknown
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String { "unknown" }
    var usageDescription: String { "unknown" }
    var weight: Double { 2.0 }
    
    var miniTask: (any MiniTaskType)? {
        return nil
    }
    var miniTaskTypes: [MiniTaskTypeBox] {
    return []
    }
    
    static var SubTaskType: [any SubTaskType] {
        return UnknownSubTaskType.allCases.map { $0 as any SubTaskType }
    }
}


extension SubTaskType {
    static var allSubTaskTypes: [any SubTaskType] {
        return [
            KitchenSubTaskType.allCases.map { $0 as any SubTaskType },
            LivingRoomSubTaskType.allCases.map { $0 as any SubTaskType },
            DiningRoomSubTaskType.allCases.map { $0 as any SubTaskType },
            OfficeSubTaskType.allCases.map { $0 as any SubTaskType },
            BedroomSubTaskType.allCases.map { $0 as any SubTaskType },
            PlayroomSubTaskType.allCases.map { $0 as any SubTaskType },
            BathroomSubTaskType.allCases.map { $0 as any SubTaskType },
            StorageSubTaskType.allCases.map { $0 as any SubTaskType },
            GarageSubTaskType.allCases.map { $0 as any SubTaskType },
            UnknownSubTaskType.allCases.map { $0 as any SubTaskType }
        ].flatMap { $0 }
    }
    
}
