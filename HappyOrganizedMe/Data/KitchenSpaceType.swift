//
//  KitchenSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/14/24.
//

import Foundation


// MARK: KitchenSpaceType
enum KitchenPrepSpaceType: String, SpaceType {
    
    case prepZoneCountertops = "Countertops"
    case prepZoneCuttingBoards = "Cutting Boards"
    case prepZoneUtensils = "Utensils"
    case prepZoneAppliances = "Appliances"
    case prepZoneSpiceRacks = "Spice Racks"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .prepZoneCountertops:
            return "Clean and sanitize countertops."
        case .prepZoneCuttingBoards:
            return "Clean and sanitize cutting boards."
        case .prepZoneUtensils:
            return "Clean and sanitize utensils."
        case .prepZoneAppliances:
            return "Clean and sanitize appliances."
        case .prepZoneSpiceRacks:
            return "Clean and sanitize spice racks."
        }
    }
    var usageDescription: String {
        switch self {
        case .prepZoneCountertops:
            return "The prep zone countertops are the primary work surface for food preparation tasks. This space is used for chopping, slicing, mixing, and assembling ingredients before cooking. It should be kept clear of unnecessary items to maximize space for cutting boards, bowls, and utensils. Having this area clean and organized allows you to efficiently lay out ingredients, perform prep work, and maintain hygiene. Countertop space is often located near the sink for washing produce and easy cleanup, as well as close to cooking areas for seamless transitions from prep to cooking."
        case .prepZoneCuttingBoards:
            return "Cutting boards in the prep zone are essential for safe and efficient food preparation. They are used for chopping, slicing, and dicing various ingredients, helping to protect countertops from damage and ensuring sanitary food handling. Different cutting boards may be used for specific purposes, such as separating raw meat from vegetables to prevent cross-contamination. Cutting boards should be stored within easy reach of the prep area, either on the countertop or in a nearby drawer, and should be cleaned thoroughly after each use to maintain kitchen hygiene."
        case .prepZoneUtensils:
            return "Utensils in the prep zone are the tools used for a variety of food preparation tasks, such as chopping, peeling, mixing, and measuring. These utensils typically include knives, peelers, spatulas, tongs, measuring cups, and spoons. They are essential for preparing ingredients before cooking. Keeping them organized and easily accessible, either in a drawer with dividers, a utensil holder, or mounted on a wall rack, helps streamline the prep process. Utensils should be arranged based on frequency of use, with the most commonly needed items (e.g., chef’s knife, vegetable peeler) kept within easy reach to ensure efficient and smooth preparation."
        case .prepZoneAppliances:
            return "The appliances in the prep zone are typically small, countertop appliances used for various food preparation tasks. These can include blenders, food processors, mixers, toasters, and coffee grinders. These appliances help with chopping, blending, grinding, mixing, and other tasks that expedite food preparation. Having these appliances stored near or on the prep counter allows for quick access when needed, and keeping them organized or stored in designated cabinets ensures that the workspace remains clear and uncluttered. Proper organization of cords and easy access to power outlets is also essential to make this zone functional."
        case .prepZoneSpiceRacks:
            return "The spice rack in the prep zone is essential for quick and easy access to commonly used spices and seasonings during food preparation. It allows you to keep your spices organized, visible, and within arm’s reach, so you can efficiently add flavor to your dishes without interrupting the prep process. The spice rack can be wall-mounted, placed on the countertop, or stored in a nearby drawer or cabinet. Organizing spices alphabetically or by frequency of use can further enhance efficiency, and using labeled containers ensures a tidy and functional system."
        }
    }
    var weight: Double { 4.0}
    
    var subTask: (any SubTaskType)? {
        return nil
    }
    var subTaskTypes: [SubTaskTypeBox] {
    return []
    }
    
    static var SpaceType: [any SpaceType] {
        return KitchenPrepSpaceType.allCases.map { $0 as any SpaceType }
    }
}

enum KitchenCookingSpaceType: String, SpaceType {
    case cookingZoneStovetop = "Stovetop"
    case cookingZoneOven = "Oven"
    case cookingZone = "Cookware"
    case cookingZoneUtensils = "Cooking Utensils"
    case cookingZonePantryEssentials = "Pantry Essentials"
    case cookingZoneVentilation = "Ventilation"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .cookingZoneStovetop:
            return "Clean the stovetop and remove grease or food residue.."
        case .cookingZoneOven:
            return "Clean the inside of the oven and check for needed repairs or replacements (e.g., oven light)."
        case .cookingZone:
            return "Organize pots, pans, lids, and baking sheets."
        case .cookingZoneUtensils:
            return "Arrange cooking tools (like spatulas, tongs, and wooden spoons) in a nearby drawer or container."
        case .cookingZonePantryEssentials:
            return "Store oils, spices, and cooking essentials within easy reach."
        case .cookingZoneVentilation:
            return "Clean or replace range hood filters."
        }
    }
    var usageDescription: String {
        switch self {
        case .cookingZoneStovetop:
            return "The stovetop in the cooking zone is the primary area for cooking food using pots and pans. It’s used for boiling, sautéing, frying, simmering, and other heat-based cooking techniques. Having this area clean and clutter-free allows for safe and efficient cooking. Frequently used cooking tools like spatulas, tongs, and ladles should be stored nearby for easy access. Additionally, having essential ingredients like oil, salt, and spices within reach minimizes interruptions while cooking. Keeping the stovetop clean and well-maintained ensures consistent performance and prevents food residue buildup that could affect cooking quality."
        case .cookingZoneOven:
            return "The oven in the cooking zone is used for baking, roasting, broiling, and slow-cooking food. It’s essential for preparing items like casseroles, roasted meats, baked goods, and more. The oven should be kept clean to ensure even heat distribution and optimal cooking performance. Racks can be adjusted depending on the dish being cooked to ensure proper heat exposure. Having oven mitts, baking sheets, and roasting pans stored nearby allows for easy handling of hot dishes. Preheating the oven to the correct temperature and using timers or thermometers ensures precise cooking results, whether baking bread or roasting vegetables."
        case .cookingZone:
            return "Cookware in the cooking zone includes pots, pans, skillets, and baking dishes used for various cooking techniques such as boiling, frying, sautéing, and baking. This essential equipment is key to preparing meals and should be stored close to the stovetop and oven for easy access. Different cookware, like non-stick pans, cast iron skillets, and saucepans, serve specific cooking purposes. Organizing cookware by type or size, using drawer dividers, racks, or hanging storage, ensures that the right piece is always within reach during cooking. Proper maintenance of cookware, like cleaning and storing pans to avoid scratches, extends their life and maintains cooking efficiency."
        case .cookingZoneUtensils:
            return "Cooking utensils in the cooking zone are the tools used for handling food during the cooking process. This includes spatulas, tongs, ladles, whisks, and slotted spoons. These utensils help in stirring, flipping, serving, and transferring food safely while cooking. They should be stored near the stovetop and oven, either in a countertop holder or a nearby drawer, to ensure quick and easy access. Organizing utensils by type or function can make cooking more efficient. Having heat-resistant or specialized utensils (like wooden spoons for non-stick cookware) ensures that the right tool is always available for the task at hand."
        case .cookingZonePantryEssentials:
            return "Pantry essentials in the cooking zone are the staple ingredients frequently used during cooking, such as oils, vinegars, spices, herbs, salt, pepper, and other seasonings. Keeping these items organized and stored near the stovetop and oven allows for quick access while preparing meals. These essentials should be easily reachable in cabinets, on shelves, or in pull-out drawers close to the cooking area. Labeling containers and arranging items by frequency of use or category (e.g., oils together, spices together) can further streamline the cooking process. Having these core ingredients within arm’s reach reduces time spent searching and enhances the efficiency of meal preparation."
        case .cookingZoneVentilation:
            return "Ventilation in the cooking zone, typically provided by a range hood or exhaust fan, is essential for removing smoke, steam, grease, and cooking odors from the air. Proper ventilation helps maintain a clean and safe kitchen environment by preventing the buildup of fumes and excess moisture, which can affect air quality and cause lingering smells. It also helps to reduce grease accumulation on surfaces. Regular cleaning of the ventilation filters and ensuring the fan operates effectively are key to maintaining its functionality. Having effective ventilation in place ensures a more comfortable cooking experience, especially when frying or high-heat cooking is involved."
        }
    }
    
    var weight: Double { 2.0 }
    
    var subTask: (any SubTaskType)? {
        return nil
    }
    var subTaskTypes: [SubTaskTypeBox] {
    return []
    }
    
    static var SpaceType: [any SpaceType] {
        return KitchenCookingSpaceType.allCases.map { $0 as any SpaceType }
    }
}

enum KitchenCleaningSpaceType: String, SpaceType {
    case cleaningZoneSink = "Sink"
    case cleaningZoneDishwasher = "Dishwasher"
    case cleaningZoneTrashRecycling = "Trash Recycling"
    case cleaningZoneCleaningSupplies = "Cleaning Supplies"
    case cleaningZoneTowelHookStorage = "Towel Hook Storage"
    case cleaningZoneSoapDispenser = "Soap Dispenser"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .cleaningZoneSink:
            return "Deep clean the sink, faucet, and surrounding area."
        case .cleaningZoneDishwasher:
            return "Clean the inside of the dishwasher and ensure it’s functioning properly."
        case .cleaningZoneTrashRecycling:
            return "Organize and clean the trash and recycling bins."
        case .cleaningZoneCleaningSupplies:
            return "Organize and store cleaning supplies under the sink or in nearby cabinets."
        case .cleaningZoneTowelHookStorage:
            return "Organize kitchen towels and cleaning cloths."
        case .cleaningZoneSoapDispenser:
            return "Clean and refill soap dispensers, and replace sponges or scrubbers."
        }
    }
    var usageDescription: String {
        switch self {
        case .cleaningZoneSink:
            return "The sink in the cleaning zone is the central hub for washing dishes, rinsing produce, and cleaning kitchen tools. It is also used for hand washing and filling pots with water for cooking. Having a dual-basin sink can separate dirty dishes from rinsing tasks, while a single-basin sink provides ample space for larger items like pots and pans. The sink area should be equipped with dish soap, sponges, scrub brushes, and drying racks to facilitate efficient cleaning. A garbage disposal, if present, helps with disposing of food waste. Keeping the sink clean and free from debris ensures proper drainage and hygiene in the kitchen."
        case .cleaningZoneDishwasher:
            return "The dishwasher in the cleaning zone is used for efficiently cleaning and sanitizing dishes, utensils, and cookware. It minimizes the time and effort required for dishwashing compared to handwashing, especially after large meals. Dishes are loaded into designated racks based on size and type, with smaller items like utensils and glasses placed on the top rack, and larger items like pots and plates on the bottom rack. The dishwasher should be loaded efficiently to maximize space while ensuring all items are properly cleaned. Keeping the dishwasher clean, running it with a cleaning cycle periodically, and maintaining filters and seals will ensure it operates smoothly."
        case .cleaningZoneTrashRecycling:
            return "The trash and recycling zone is dedicated to the disposal of waste, including food scraps, packaging, and recyclable materials. This area typically includes separate bins for general waste, recyclables (like plastics, paper, and glass), and sometimes compostable items. It is strategically placed near the sink or prep area to make cleanup quick and efficient. Proper labeling of bins can help with sorting waste and recycling correctly. Keeping the bins clean and regularly emptying them prevents odors and clutter from accumulating in the kitchen. This zone is essential for maintaining an organized, eco-friendly, and sanitary kitchen environment.."
        case .cleaningZoneCleaningSupplies:
            return "The cleaning supplies zone is where all the essential tools and products for maintaining kitchen cleanliness are stored. This typically includes items like dish soap, sponges, scrub brushes, disinfectants, and surface cleaners, as well as specialty items like glass cleaners and stainless steel polish. Most cleaning supplies are stored under the sink or in a nearby cabinet for easy access when cleaning countertops, appliances, and floors. Organizing these supplies in bins or caddies can help keep this area tidy and ensure you can quickly grab what you need. Proper organization and storage also help maintain a hygienic and safe kitchen environment by preventing spills and keeping toxic chemicals out of reach of children or pets."
        case .cleaningZoneTowelHookStorage:
            return "The towel hook/storage zone is where kitchen towels, dishcloths, and cleaning rags are kept for drying dishes, wiping countertops, and handling spills. Towels are often hung on hooks or bars near the sink or cleaning area for easy access. Having a designated spot for clean towels ensures that they are always available when needed, while dirty towels can be swapped out efficiently. Organized storage for extra towels, such as in a nearby drawer or basket, helps maintain a clean, clutter-free kitchen. Keeping this area well-maintained prevents the buildup of damp or dirty towels, which can harbor bacteria."
        case .cleaningZoneSoapDispenser:
            return "The soap dispenser in the cleaning zone is an essential tool for handwashing, dishwashing, and general kitchen cleaning. It is typically positioned near the sink for easy access when cleaning dishes or hands. A built-in or countertop soap dispenser ensures that soap is readily available without cluttering the area with bottles. Regular refilling and cleaning of the dispenser help maintain hygiene and prevent clogging. Whether for dish soap or hand soap, having a functional and well-placed dispenser keeps the cleaning process smooth and efficient."
        }
    }
    
    var weight: Double { 2.0 }
    
    var subTask: (any SubTaskType)? {
        return nil
    }
    var subTaskTypes: [SubTaskTypeBox] {
    return []
    }
    
    static var SpaceType: [any SpaceType] {
        return KitchenCleaningSpaceType.allCases.map { $0 as any SpaceType }
    }
}

enum KitchenFoodStorageSpaceType: String, SpaceType {
    
    case foodStorageZonePantry = "Food Storage Pantry"
    case foodStorageZoneRefrigerator = "Refrigerator"
    case foodStorageZoneFreezer = "Freezer"
    case foodStorageZoneSnacks = "Snacks"
    case foodStorageZoneBulkBins = "Bulk Bins"
    case foodStorageZoneCondiments = "Condiments"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .foodStorageZonePantry:
            return "Organize dry goods by category and label containers (e.g., snacks, canned goods)."
        case .foodStorageZoneRefrigerator:
            return "Deep clean the fridge, dispose of expired items, and organize shelves by food type."
        case .foodStorageZoneFreezer:
            return "Defrost and clean the freezer if needed, and organize food in clear, labeled containers."
        case .foodStorageZoneSnacks:
            return "Create a designated area for snacks or frequently used items."
        case .foodStorageZoneBulkBins:
            return "Organize bulk items like cereal or grains in easy-access containers."
        case .foodStorageZoneCondiments:
            return "Arrange condiments and sauces for easy reach."
        }
    }
    var usageDescription: String {
        switch self {
        case .foodStorageZonePantry:
            return "The pantry in the food storage zone is where dry goods, canned foods, snacks, and bulk items are stored. It serves as the primary storage space for non-perishable food items such as grains, pasta, cereals, baking supplies, and spices. Organizing the pantry by category—such as grouping snacks, canned goods, or baking ingredients—makes it easier to find items quickly. Clear, labeled containers or bins can help keep smaller items neatly arranged, while frequently used items are best kept at eye level for easy access. Proper organization of the pantry ensures that ingredients are visible, reducing food waste and making meal planning more efficient."
        case .foodStorageZoneRefrigerator:
            return "The refrigerator in the food storage zone is used for storing perishable items like fruits, vegetables, dairy, meats, and leftovers to keep them fresh. The refrigerator is organized with different shelves and drawers designed to maintain optimal temperatures for various types of food. Items that need to be used soon, like leftovers or dairy products, should be stored at eye level, while raw meats are best stored on the bottom shelf to prevent cross-contamination. Crisper drawers help preserve the freshness of fruits and vegetables by regulating humidity. Organizing the refrigerator efficiently helps reduce food waste, keeps ingredients fresh, and ensures easy access to frequently used items."
        case .foodStorageZoneFreezer:
            return "The freezer in the food storage zone is used for long-term storage of frozen foods, including meats, vegetables, leftovers, and prepared meals. It helps preserve food for extended periods, preventing spoilage. Organizing the freezer with labeled bins or sections for different food types (e.g., meats, vegetables, ready-made meals) ensures easy access and reduces clutter. Frequently used items should be stored near the front, while less-used or bulk items can be kept in the back. Regularly cleaning and organizing the freezer prevents ice buildup and helps manage food inventory, ensuring that nothing is forgotten or expired."
        case .foodStorageZoneSnacks:
            return "The snack zone in the food storage area is dedicated to organizing easily accessible snacks for quick consumption. It can include items such as chips, crackers, granola bars, nuts, dried fruits, and other packaged snacks. Organizing snacks in clear containers, bins, or baskets ensures they are visible and easy to grab, especially for kids or busy households. This area should be kept tidy and replenished regularly to prevent clutter and keep snacks fresh. Placing healthier options at eye level and within easy reach can also promote better snack choices."
        case .foodStorageZoneBulkBins:
            return "The bulk bin zone is designed for storing large quantities of frequently used dry goods like rice, flour, sugar, oats, grains, and legumes. These items are stored in large, airtight containers or bins to maintain freshness and prevent pests. Organizing the bulk bin area with clearly labeled containers makes it easy to identify and access ingredients when cooking or baking. Bulk bins help reduce packaging waste, promote better food management, and make it easier to store larger quantities of pantry staples. Keeping this zone tidy and well-organized ensures that ingredients remain fresh and readily available for meal preparation."
        case .foodStorageZoneCondiments:
            return "The condiment zone is where sauces, dressings, oils, and other flavor-enhancing products like ketchup, mustard, mayonnaise, vinegar, and hot sauces are stored. Typically located in the refrigerator door or in a dedicated pantry section, this area keeps condiments easily accessible for quick use during cooking or serving. Organizing condiments by type (e.g., sauces, spreads, oils) and using shelves or caddies helps maximize space and ensure you can easily find what you need. Proper organization prevents overcrowding and allows for the rotation of older items to the front to reduce waste and keep everything fresh."
        }
    }
    
    var weight: Double { 2.0 }
    var subTask: (any SubTaskType)? {
        return nil
    }
    var subTaskTypes: [SubTaskTypeBox] {
    return []
    }
    
    static var SpaceType: [any SpaceType] {
        return KitchenFoodStorageSpaceType.allCases.map { $0 as any SpaceType }
    }
}


enum KitchenCookwareSpaceType: String, SpaceType {
    case cookwareZoneDrawers = "Drawers"
    case cookwareZonePotsAndPans = "Pots and Pans"
    case cookwareZoneBakingSheets = "Baking Sheets"
    case cookwareZoneLids = "Lids"
    case cookwareZoneSpecialtyEquipment = "Specialty Equipment"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .cookwareZoneDrawers: return "Sort and organize utensils by type (e.g., knives, forks, spoons) using drawer organizers.s"
        case .cookwareZonePotsAndPans: return "Organize pots and pans with adjustable dividers or hanging racks."
        case .cookwareZoneBakingSheets: return "Store baking sheets and trays vertically or in cabinets with dividers."
        case .cookwareZoneLids: return "Keep lids organized in separate containers or lid racks."
        case .cookwareZoneSpecialtyEquipment: return "Store less frequently used items like slow cookers or bread machines in upper cabinets or hard-to-reach spaces."
        }
    }
    var usageDescription: String {
        switch self {
        case .cookwareZoneDrawers: return "This section of the cookware zone is designated for storing small kitchen gadgets and utensils, such as a can opener, lemon zester, garlic press, peeler, and other specialty tools that are essential for various cooking tasks. These items are typically stored in shallow drawers with dividers to keep them organized and easily accessible. Having a designated drawer for kitchen gadgets helps prevent clutter in other areas of the kitchen and ensures that you can quickly find the tool you need. Grouping similar items together, such as cutting tools or measuring gadgets, enhances the overall organization and functionality of this zone."
        case .cookwareZonePotsAndPans: return "The pots and pans section of the cookware zone is where various types of cookware, including saucepans, stockpots, frying pans, and skillets, are stored. This area should be organized by size and type for easy access during cooking. Larger pots and pans can be stacked or stored in deep drawers, while specialized storage solutions like vertical racks or pull-out shelves can help keep them neatly arranged and prevent scratching. Lids can be stored separately using lid racks or designated sections. Proper organization of pots and pans makes it easier to grab the right piece of cookware when needed, speeding up the cooking process and keeping the kitchen efficient and clutter-free."
        case .cookwareZoneBakingSheets: return "The baking sheets section of the cookware zone is dedicated to storing flat cooking trays like cookie sheets, baking sheets, and roasting pans. These items are often used for baking, roasting, and broiling, so keeping them organized and accessible is key to efficient meal prep. Vertical storage racks or dividers within cabinets or drawers are ideal for organizing baking sheets, as they allow you to easily slide trays in and out without having to stack them. Keeping baking sheets separate by size or type helps maintain order and ensures that you can quickly grab the right tray for your needs."
        case .cookwareZoneLids: return "The lids section of the cookware zone is dedicated to organizing pot and pan lids of various sizes. Lids can easily become cluttered if not stored properly, so using specialized lid organizers, such as racks, drawer dividers, or vertical storage solutions, can help keep them neatly arranged and easy to access. Storing lids upright, either in drawers or inside cabinet doors, saves space and ensures they don’t get lost or damaged. Matching lids with their corresponding cookware or grouping them by size ensures you can quickly find the right lid while cooking, improving efficiency in the kitchen."
        case .cookwareZoneSpecialtyEquipment: return "The specialty equipment section of the cookware zone is designed for storing larger, less frequently used items such as a turkey roaster, canner, slow cooker, or pressure cooker. These items are typically used seasonally or for specific tasks, so they should be stored in a designated area that is easily accessible but out of the way of everyday cookware. High shelves, deep cabinets, or storage areas in a pantry or utility room are ideal for these bulky items. Organizing specialty equipment properly ensures they are protected from damage and easily retrievable when needed for holiday meals or large-scale cooking projects."
        }
    }
    
    var weight: Double { 2.0 }
    
    var subTask: (any SubTaskType)? {
        return nil
    }
    var subTaskTypes: [SubTaskTypeBox] {
    return []
    }
    
    static var SpaceType: [any SpaceType] {
        return KitchenCookwareSpaceType.allCases.map { $0 as any SpaceType }
    }
}

enum KitchenServingSpaceType: String, SpaceType {
    case servingZonePlatesBowls = "Plates, Bowls"
    case servingZoneGlassesStemware = "Glasses, Stemware"
    case servingZoneSilverware = "Silverware"
    case servingZoneTableLinens = "Table Linens"
    case servingZoneServeWare = "ServeWare"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .servingZonePlatesBowls: return "Organize dishes by size and type in cabinets."
        case .servingZoneGlassesStemware: return "Sort and arrange drinking glasses and stemware for easy access."
        case .servingZoneSilverware: return "Use organizers to sort forks, knives, spoons, and serving utensils."
        case .servingZoneTableLinens: return "Create a designated drawer or basket for napkins, placemats, and tablecloths."
        case .servingZoneServeWare: return "Store platters, serving bowls, and pitchers in an accessible location."
        }
    }
    var usageDescription: String {
        switch self {
        case .servingZonePlatesBowls: return "Plates and bowls are essential for serving meals and are typically stored in cabinets or drawers within the serving zone. Organizing them by size and type—dinner plates, salad plates, cereal bowls, etc.—makes it easy to grab the right dish when setting the table. Storing these items in stacks or using shelf risers maximizes space and ensures they are accessible during meals or when unloading the dishwasher."
        case .servingZoneGlassesStemware: return "Glasses and stemware are used for serving drinks, such as water, wine, or cocktails. They are often stored in cabinets or on glass racks, organized by type (e.g., everyday drinking glasses, wine glasses, champagne flutes). Keeping stemware in a designated space helps prevent breakage and ensures easy access when serving beverages during meals or entertaining."
        case .servingZoneSilverware: return "Silverware, including forks, knives, spoons, and serving utensils, is stored in divided drawer organizers to keep each type of utensil separated and easy to find. Having silverware organized by type within the serving zone ensures quick access when setting the table or serving meals. It also makes it easier to clean and put away items after washing."
        case .servingZoneTableLinens: return "Table linens, such as napkins, placemats, and tablecloths, are stored in drawers, baskets, or shelves. Keeping them neatly folded and organized by type or occasion ensures that they are ready for everyday use or special gatherings. Storing table linens close to the dining area or serving zone streamlines the process of setting the table and adds a decorative touch to meal presentation."
        case .servingZoneServeWare: return "Serveware includes items like serving platters, bowls, pitchers, and trays used to present and distribute food at the table. These items are typically stored in cabinets or open shelving for easy access during meals or entertaining. Organizing serveware by size and frequency of use helps keep this area functional and makes it easier to retrieve the right piece when serving guests."
        }
    }
    
    var weight: Double { 2.0 }
    
    var subTask: (any SubTaskType)? {
        return nil
    }
    var subTaskTypes: [SubTaskTypeBox] {
    return []
    }
    
    static var SpaceType: [any SpaceType] {
        return KitchenServingSpaceType.allCases.map { $0 as any SpaceType }
    }
}

enum KitchenBakingSpaceType: String, SpaceType {
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
    
    var subTask: (any SubTaskType)? {
        return nil
    }
    var subTaskTypes: [SubTaskTypeBox] {
    return []
    }
    
    static var SpaceType: [any SpaceType] {
        return KitchenBakingSpaceType.allCases.map { $0 as any SpaceType }
    }
}

enum KitchenSpaceType: String, SpaceType {
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
    
    var subTask: (any SubTaskType)? {
        return nil
    }
    var subTaskTypes: [SubTaskTypeBox] {
    return []
    }
    
    static var SpaceType: [any SpaceType] {
        return KitchenSpaceType.allCases.map { $0 as any SpaceType }
    }
}
