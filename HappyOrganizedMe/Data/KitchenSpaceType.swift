//
//  KitchenSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/14/24.
//

import Foundation


// MARK: KitchenSpaceType
enum KitchenSpaceType: String, Codable, CaseIterable, Identifiable, SpaceType {
    // PrepZoneSpaces
    case prepZoneCountertops = "Countertop Zones"
    case prepZoneAppliances = "Appliance Zone"
    // CookingZoneSpaces
    case cookingZoneRange = "Range"
    case cookingZoneCookware = "All Things Cooking"
    // CleaningZoneSpaces
    case cleaningZoneSpace = "All the Cleaning Things"
    // FoodStorageZoneSpaces
    case foodStorageZonePantry = "Where the Food Goes"
    case foodStorageRefrigerator = "Cold Stuff"
    // CookwareZoneSpaces
    case cookwareZoneBaking = "More Baking Stuff"
    // ServingZoneSpaces
    case servingZoneServeWare = "ServeWare"
    case servingZoneEverydayDishes = "Everyday Dishes"
    // drinkZoneSpaces
    case drinkZone = "Drink-Up"
    case theWasteZone = "The Waste Zone"
    case theCompostZone = "The Compost Zone"
    case theRecyclingZone = "The Recycling Zone"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .theRecyclingZone:
            return "Designate a designated area for recycling. Keep it clean and organized by storing recyclable materials like plastic bottles, aluminum cans, and glass jars. Use recycling bins or containers to keep recyclable materials separate from other trash."
        case .theCompostZone:
            return "Designate a designated area for composting. Keep it clean and organized by storing compostable materials like leaves, grass clippings, and fruit peels. Use compost bins or containers to keep composting materials separate from other trash."
        case .prepZoneCountertops:
            return "Designate a clear section of your countertop as your primary prep zone. Keep it clutter-free by storing only essential items like a cutting board, knife block, and a few frequently used utensils. Use organizers or containers to manage any small items and maintain an open workspace."
        case .prepZoneAppliances:
            return "Set up a section of your countertop or a nearby cabinet for frequently used small appliances like a blender, food processor, or mixer. Use sliding shelves or appliance garages to keep them accessible but out of the way when not in use. Keep stand mixers, hand mixers."
        case .cookingZoneRange:
            return "Clean the stovetop and remove grease or food residue..Clean the inside of the oven and check for needed repairs or replacements (e.g., oven light). Clean or replace range hood ventilation filters."
        case .cookingZoneCookware:
            return "Organize pots, pans, lids, and baking sheets. Organize pots and pans with adjustable dividers or hanging racks. Store baking sheets and trays vertically or in cabinets with dividers. Keep lids organized in separate containers or lid racks. Store less frequently used items like slow cookers or bread machines in upper cabinets or hard-to-reach spaces. Organize prep utensils like spatulas, wooden spoons, tongs, and whisks in a caddy or drawer divider near the prep zone. Keep them upright and accessible for quick grabbing.Arrange cooking tools (like spatulas, tongs, and wooden spoons) in a nearby drawer or container and baking tools like whisks and spatulas in designated spots."
        case .cleaningZoneSpace:
            return "Deep clean the sink, faucet, and surrounding area. Clean the inside of the dishwasher and ensure it’s functioning properly. Organize and clean the trash and recycling bins. Organize and store cleaning supplies under the sink or in nearby cabinets."
        case .foodStorageZonePantry:
            return "Organize dry goods by category and label containers (e.g., snacks, canned goods). Store oils, spices, and cooking essentials within easy reach. Deep clean the fridge, dispose of expired items, and organize shelves by food type. Defrost and clean the freezer if needed, and organize food in clear, labeled containers. Create a designated area for snacks or frequently used items. Organize bulk items like cereal or grains in easy-access containers. Arrange condiments and sauces for easy reach. Organize baking ingredients like flour, sugar, and baking powder in labeled containers."
        case .servingZoneEverydayDishes:
            return "Organize dishes by size and type in cabinets. Sort and arrange drinking glasses and stemware for easy access. Use organizers to sort forks, knives, spoons, and serving utensils."
        case .foodStorageRefrigerator: 
            return "Store perishable foods in an accessible location. Store frozen foods in an accessible location. Store canned foods in an accessible location. Store dried foods in an accessible location. Store powdered foods in an accessible location. Store powdered drinks in an accessible location."
        case .servingZoneServeWare: 
            return "Store platters, serving bowls, and pitchers in an accessible location. Create a designated drawer or basket for napkins, placemats, and tablecloths."
        case .cookwareZoneBaking: 
            return "Store baking sheets, mixing bowls, and measuring cups."
        case .drinkZone: 
            return "Store canned goods in labeled containers. Store tea machines and other tea-related items in a designated spot. Store bottled water in a designated spot. Store juice machines and other juice-related items in a designated spot. Store coffee machines and other coffee-related items in a designated spot."
        case .theWasteZone: 
            return "Store trash cans in an accessible location. Store recycling bins in an accessible location. Store compost bins in an accessible location. Store garbage cans in an accessible location."
        }
    }
    var usageDescription: String {
        switch self {
        case . theRecyclingZone:
            return "Store recycling bins in an accessible location. Store trash cans in an accessible location."
        case .theCompostZone:
            return "Store compost bins in an accessible location. Store garbage cans in an accessible location."
        case .prepZoneCountertops:
            return "The countertop is the heart of the prep zone and needs to be spacious to accommodate chopping, mixing, and assembling ingredients. A dedicated, clutter-free prep area ensures you have enough space to work efficiently and helps keep meal preparation organized and stress-free. This setup allows you to move seamlessly through tasks, making cooking more enjoyable and less chaotic."
        case .prepZoneAppliances:
            return "Keeping small appliances together in a dedicated space reduces the hassle of dragging them out when needed. It keeps your prep area clear and ensures these tools are always within reach, making food prep quicker and more enjoyable. Mixer tools include stand mixers, hand mixers, whisks, spatulas, and attachments like dough hooks or beaters. These tools are used to mix batters, doughs, and creams during the baking process. Storing mixer tools in a dedicated cabinet or shelf near the baking area, along with their attachments, helps keep the baking zone organized. Proper organization ensures that you can easily access and assemble the necessary tools for each baking task, streamlining the process and keeping the kitchen tidy."
        case .cookingZoneRange:
            return "The stovetop in the cooking zone is the primary area for cooking food using pots and pans. It’s used for boiling, sautéing, frying, simmering, and other heat-based cooking techniques. Having this area clean and clutter-free allows for safe and efficient cooking. Frequently used cooking tools like spatulas, tongs, and ladles should be stored nearby for easy access. Additionally, having essential ingredients like oil, salt, and spices within reach minimizes interruptions while cooking. Keeping the stovetop clean and well-maintained ensures consistent performance and prevents food residue buildup that could affect cooking quality. The oven in the cooking zone is used for baking, roasting, broiling, and slow-cooking food. It’s essential for preparing items like casseroles, roasted meats, baked goods, and more. The oven should be kept clean to ensure even heat distribution and optimal cooking performance. Racks can be adjusted depending on the dish being cooked to ensure proper heat exposure. Having oven mitts, baking sheets, and roasting pans stored nearby allows for easy handling of hot dishes. Preheating the oven to the correct temperature and using timers or thermometers ensures precise cooking results, whether baking bread or roasting vegetables. Ventilation in the cooking zone, typically provided by a range hood or exhaust fan, is essential for removing smoke, steam, grease, and cooking odors from the air. Proper ventilation helps maintain a clean and safe kitchen environment by preventing the buildup of fumes and excess moisture, which can affect air quality and cause lingering smells. It also helps to reduce grease accumulation on surfaces. Regular cleaning of the ventilation filters and ensuring the fan operates effectively are key to maintaining its functionality. Having effective ventilation in place ensures a more comfortable cooking experience, especially when frying or high-heat cooking is involved."
        case .cookingZoneCookware:
            return "Cookware in the cooking zone includes pots, pans, skillets, and baking dishes used for various cooking techniques such as boiling, frying, sautéing, and baking. This essential equipment is key to preparing meals and should be stored close to the stovetop and oven for easy access. Different cookware, like non-stick pans, cast iron skillets, and saucepans, serve specific cooking purposes. Organizing cookware by type or size, using drawer dividers, racks, or hanging storage, ensures that the right piece is always within reach during cooking. Proper maintenance of cookware, like cleaning and storing pans to avoid scratches, extends their life and maintains cooking efficiency. Cooking utensils in the cooking zone are the tools used for handling food during the cooking process. This includes spatulas, tongs, ladles, whisks, and slotted spoons. These utensils help in stirring, flipping, serving, and transferring food safely while cooking. They should be stored near the stovetop and oven, either in a countertop holder or a nearby drawer, to ensure quick and easy access. Organizing utensils by type or function can make cooking more efficient. Having heat-resistant or specialized utensils (like wooden spoons for non-stick cookware) ensures that the right tool is always available for the task at hand. Utensils in the prep zone are the tools used for a variety of food preparation tasks, such as chopping, peeling, mixing, and measuring. These utensils typically include knives, peelers, spatulas, tongs, measuring cups, and spoons. They are essential for preparing ingredients before cooking. Keeping them organized and easily accessible, either in a drawer with dividers, a utensil holder, or mounted on a wall rack, helps streamline the prep process. Utensils should be arranged based on frequency of use, with the most commonly needed items (e.g., chef’s knife, vegetable peeler) kept within easy reach to ensure efficient and smooth preparation."
        case .cleaningZoneSpace:
            return "The sink in the cleaning zone is the central hub for washing dishes, rinsing produce, and cleaning kitchen tools. It is also used for hand washing and filling pots with water for cooking. Having a dual-basin sink can separate dirty dishes from rinsing tasks, while a single-basin sink provides ample space for larger items like pots and pans. The sink area should be equipped with dish soap, sponges, scrub brushes, and drying racks to facilitate efficient cleaning. A garbage disposal, if present, helps with disposing of food waste. Keeping the sink clean and free from debris ensures proper drainage and hygiene in the kitchen. The dishwasher in the cleaning zone is used for efficiently cleaning and sanitizing dishes, utensils, and cookware. It minimizes the time and effort required for dishwashing compared to handwashing, especially after large meals. Dishes are loaded into designated racks based on size and type, with smaller items like utensils and glasses placed on the top rack, and larger items like pots and plates on the bottom rack. The dishwasher should be loaded efficiently to maximize space while ensuring all items are properly cleaned. Keeping the dishwasher clean, running it with a cleaning cycle periodically, and maintaining filters and seals will ensure it operates smoothly. The trash and recycling zone is dedicated to the disposal of waste, including food scraps, packaging, and recyclable materials. This area typically includes separate bins for general waste, recyclables (like plastics, paper, and glass), and sometimes compostable items. It is strategically placed near the sink or prep area to make cleanup quick and efficient. Proper labeling of bins can help  with sorting waste and recycling correctly. Keeping the bins clean and regularly emptying them prevents odors and clutter from accumulating in the kitchen. This zone is essential for maintaining an organized, eco-friendly, and sanitary kitchen environment.. The cleaning supplies zone is where all the essential tools and products for maintaining kitchen cleanliness are stored. This typically includes items like dish soap, sponges, scrub brushes, disinfectants, and surface cleaners, as well as specialty items like glass cleaners and stainless steel polish. Most cleaning supplies are stored under the sink or in a nearby cabinet for easy access when cleaning countertops, appliances, and floors. Organizing these supplies in bins or caddies can help keep this area tidy and ensure you can quickly grab what you need. Proper organization and storage also help maintain a hygienic and safe kitchen environment by preventing spills and keeping toxic chemicals out of reach of children or pets."
        case .foodStorageZonePantry:
            return "Pantry essentials in the cooking zone are the staple ingredients frequently used during cooking, such as oils, vinegars, spices, herbs, salt, pepper, and other seasonings. Keeping these items organized and stored near the stovetop and oven allows for quick access while preparing meals. These essentials should be easily reachable in cabinets, on shelves, or in pull-out drawers close to the cooking area. Labeling containers and arranging items by frequency of use or category (e.g., oils together, spices together) can further streamline the cooking process. Having these core ingredients within arm’s reach reduces time spent searching and enhances the efficiency of meal preparation. The pantry in the food storage zone is where dry goods, canned foods, snacks, and bulk items are stored. It serves as the primary storage space for non-perishable food items such as grains, pasta, cereals, baking supplies, and spices. Organizing the pantry by category—such as grouping snacks, canned goods, or baking ingredients—makes it easier to find items quickly. Clear, labeled containers or bins can help keep smaller items neatly arranged, while frequently used items are best kept at eye level for easy access. Proper organization of the pantry ensures that ingredients are visible, reducing food waste and making meal planning more efficient. The snack zone in the food storage area is dedicated to organizing easily accessible snacks for quick consumption. It can include items such as chips, crackers, granola bars, nuts, dried fruits, and other packaged snacks. Organizing snacks in clear containers, bins, or baskets ensures they are visible and easy to grab, especially for kids or busy households. This area should be kept tidy and replenished regularly to prevent clutter and keep snacks fresh. Placing healthier options at eye level and within easy reach can also promote better snack choices. The bulk bin zone is designed for storing large quantities of frequently used dry goods like rice, flour, sugar, oats, grains, and legumes. These items are stored in large, airtight containers or bins to maintain freshness and prevent pests. Organizing the bulk bin area with clearly labeled containers makes it easy to identify and access ingredients when cooking or baking. Bulk bins help reduce packaging waste, promote better food management, and make it easier to store larger quantities of pantry staples. Keeping this zone tidy and well-organized ensures that ingredients remain fresh and readily available for meal preparation. The condiment zone is where sauces, dressings, oils, and other flavor-enhancing products like ketchup, mustard, mayonnaise, vinegar, and hot sauces are stored. Typically located in the refrigerator door or in a dedicated pantry section, this area keeps condiments easily accessible for quick use during cooking or serving. Organizing condiments by type (e.g., sauces, spreads, oils) and using shelves or caddies helps maximize space and ensure you can easily find what you need. Proper organization prevents overcrowding and allows for the rotation of older items to the front to reduce waste and keep everything fresh."
        case .cookwareZoneBaking: 
            return "The baking supplies section includes essential tools and equipment used in baking, such as measuring cups, measuring spoons, mixing bowls, rolling pins, cookie cutters, and baking sheets. These items should be organized and stored together in drawers, cabinets, or on shelves near the baking area to allow easy access when preparing baked goods. Keeping these supplies neatly arranged ensures an efficient workflow and reduces the time spent searching for the right tool during the baking process. The ingredients section of the baking zone is where commonly used baking staples like flour, sugar, baking powder, baking soda, salt, and chocolate chips are stored. These ingredients are best kept in airtight, labeled containers to maintain freshness and prevent spills. Organizing ingredients by type and having them easily accessible ensures a smooth baking process, allowing for quick measuring and mixing without needing to search for items."
        case .foodStorageRefrigerator:
            return "The refrigerator in the food storage zone is used for storing perishable items like fruits, vegetables, dairy, meats, and leftovers to keep them fresh. The refrigerator is organized with different shelves and drawers designed to maintain optimal temperatures for various types of food. Items that need to be used soon, like leftovers or dairy products, should be stored at eye level, while raw meats are best stored on the bottom shelf to prevent cross-contamination. Crisper drawers help preserve the freshness of fruits and vegetables by regulating humidity. Organizing the refrigerator efficiently helps reduce food waste, keeps ingredients fresh, and ensures easy access to frequently used items. The freezer in the food storage zone is used for long-term storage of frozen foods, including meats, vegetables, leftovers, and prepared meals. It helps preserve food for extended periods, preventing spoilage. Organizing the freezer with labeled bins or sections for different food types (e.g., meats, vegetables, ready-made meals) ensures easy access and reduces clutter. Frequently used items should be stored near the front, while less-used or bulk items can be kept in the back. Regularly cleaning and organizing the freezer prevents ice buildup and helps manage food inventory, ensuring that nothing is forgotten or expired."
        case .servingZoneEverydayDishes: 
            return "Plates and bowls are essential for serving meals and are typically stored in cabinets or drawers within the serving zone. Organizing them by size and type—dinner plates, salad plates, cereal bowls, etc.—makes it easy to grab the right dish when setting the table. Storing these items in stacks or using shelf risers maximizes space and ensures they are accessible during meals or when unloading the dishwasher. Glasses and stemware are used for serving drinks, such as water, wine, or cocktails. They are often stored in cabinets or on glass racks, organized by type (e.g., everyday drinking glasses, wine glasses, champagne flutes). Keeping stemware in a designated space helps prevent breakage and ensures easy access when serving beverages during meals or entertaining. Silverware, including forks, knives, spoons, and serving utensils, is stored in divided drawer organizers to keep each type of utensil separated and easy to find. Having silverware organized by type within the serving zone ensures quick access when setting the table or serving meals. It also makes it easier to clean and put away items after washing."
        case .servingZoneServeWare: 
            return "Serveware includes items like serving platters, bowls, pitchers, and trays used to present and distribute food at the table. These items are typically stored in cabinets or open shelving for easy access during meals or entertaining. Organizing serveware by size and frequency of use helps keep this area functional and makes it easier to retrieve the right piece when serving guests. Table linens, such as napkins, placemats, and tablecloths, are stored in drawers, baskets, or shelves. Keeping them neatly folded and organized by type or occasion ensures that they are ready for everyday use or special gatherings. Storing table linens close to the dining area or serving zone streamlines the process of setting the table and adds a decorative touch to meal presentation.  The specialty equipment section of the cookware zone is designed for storing larger, less frequently used items such as a turkey roaster, canner, slow cooker, or pressure cooker. These items are typically used seasonally or for specific tasks, so they should be stored in a designated area that is easily accessible but out of the way of everyday cookware. High shelves, deep cabinets, or storage areas in a pantry or utility room are ideal for these bulky items. Organizing specialty equipment properly ensures they are protected from damage and easily retrievable when needed for holiday meals or large-scale cooking projects."
        case .drinkZone: 
            return "Canned goods are stored in the drinks zone, along with other canned beverages like juice, soda, and milk. These items are best kept in airtight containers to maintain freshness and prevent spills. Organizing canned goods by type and having them easily accessible ensures a smooth drinking process, allowing for quick measuring and pouring without needing to search for items. Tea machines are stored in the drinks zone, along with other tea-making devices like coffee makers and espresso machines. These items are best kept in airtight containers to maintain freshness and prevent spills. Organizing tea machines by type and having them easily accessible ensures a smooth drinking process, allowing for quick measuring and pouring without needing to search for items. Bottled water is stored in the drinks zone, along with other bottled beverages like water, juice, and soda. These items are best kept in airtight containers to maintain freshness and prevent spills. Organizing bottled water by type and having them easily accessible ensures a smooth drinking process, allowing for quick measuring and pouring without needing to search for items. Juice machines are stored in the drinks zone, along with other juice-making devices like blender and juicer. These items are best kept in airtight containers to maintain freshness and prevent spills. Organizing juice machines by type and having them easily accessible ensures a smooth drinking process, allowing for quick measuring and pouring without needing to search for items. Coffee machines are stored in the drinks zone, along with other coffee-making devices like espresso machines and drip coffee makers. These items are best kept in airtight containers to maintain freshness and prevent spills. Organizing coffee machines by type and having them easily accessible ensures a smooth drinking process, allowing for quick measuring and pouring without needing to search for items."
        case .theWasteZone: 
            return "The Waste Zone is a designated area for all garbage, recycling, and other waste products. It is important to keep this area clean and organized to prevent contamination of the kitchen and other areas. The Waste Zone is a designated area for all garbage, recycling, and other waste products. It is important to keep this area clean and organized to prevent contamination of the kitchen and other areas."
        }
    }
    var weight: Double { 2.0 }
    
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .theRecyclingZone: return true
        case .theCompostZone: return true
        case .prepZoneCountertops: return true
        case .prepZoneAppliances: return true
        case .cookingZoneRange: return true
        case .cookingZoneCookware: return true
        case .cleaningZoneSpace: return true
        case .foodStorageZonePantry: return true
        case .cookwareZoneBaking: return true
        case .servingZoneEverydayDishes: return true
        case .servingZoneServeWare: return true
        case .drinkZone: return true
        case .theWasteZone: return true
        case .foodStorageRefrigerator: return true
        }
    }
    var subTask: (any SubTaskType)? {
        return nil
    }
    
    var subTaskTypes: [SubTaskTypeBox] {
        switch self {
        case .theRecyclingZone:
            return [
                SubTaskTypeBox(KitchenSubTaskType.allThingsWaste)!
            ]
        case .theCompostZone:
            return [
                SubTaskTypeBox(KitchenSubTaskType.allThingsWaste)!
            ]
        case.prepZoneCountertops:
            return [
                SubTaskTypeBox(KitchenSubTaskType.prepCounters)!
            ]
        case .prepZoneAppliances:
            return [
                SubTaskTypeBox(KitchenSubTaskType.appliances)!
            ]
        case .cookingZoneRange:
            return [
                SubTaskTypeBox(KitchenSubTaskType.theWholeRange)!
            ]
        case .cookingZoneCookware:
            return [
                SubTaskTypeBox(KitchenSubTaskType.allThingsCooking)!
            ]
        case .cleaningZoneSpace:
            return [
                SubTaskTypeBox(KitchenSubTaskType.allThingsCleaning)!
            ]
        case .theWasteZone:
            return [
                SubTaskTypeBox(KitchenSubTaskType.allThingsWaste)!
            ]
        case .foodStorageZonePantry:
            return [
                SubTaskTypeBox(KitchenSubTaskType.foodStoragePantry)!
            ]
        case .servingZoneServeWare:
            return [
                SubTaskTypeBox(KitchenSubTaskType.serveWareHolidays)!
            ]
        case .foodStorageRefrigerator:
            return [
                SubTaskTypeBox(KitchenSubTaskType.foodStoragePantry)!
            ]
        case .cookwareZoneBaking:
            return [
                SubTaskTypeBox(KitchenSubTaskType.bakingZoneBakingSupplies)!
            ]
        case .drinkZone:
            return [
                SubTaskTypeBox(KitchenSubTaskType.drinkZone)!
            ]
        case .servingZoneEverydayDishes:
            return [
                SubTaskTypeBox(KitchenSubTaskType.servingZoneEverydayDishes)!
            ]
        }
    }
    static var prepZoneSpaces: [KitchenSpaceType] {
        return [.prepZoneCountertops, .prepZoneAppliances]
    }
    static var cookingZoneSpaces: [KitchenSpaceType] {
        return [.cookingZoneRange, .cookingZoneCookware]
    }
    static var foodStorageZoneSpaces: [KitchenSpaceType] {
        return [.foodStorageZonePantry, .foodStorageRefrigerator]
    }
    static var servingZoneSpaces: [KitchenSpaceType] {
        return [.servingZoneServeWare, .servingZoneEverydayDishes]
    }
    static var drinkZoneSpaces: [KitchenSpaceType] {
        return [.drinkZone, .foodStorageRefrigerator]
    }
    static var cleaningZone: [KitchenSpaceType] {
        return [.cleaningZoneSpace, .theWasteZone, .theRecyclingZone, .theCompostZone]
    }
    static var cookwareZone: [KitchenSpaceType] {
        return [.cookingZoneCookware, .cookingZoneRange, .cookwareZoneBaking,.prepZoneAppliances]
    }
    static var allSpaceTypes: [any SpaceType] {
        return KitchenSpaceType.allCases.map { $0 as any SpaceType}
    }
}



enum UnknownSpaceType: String, Codable, CaseIterable, Identifiable,  SpaceType {
    case unknown
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String { "unknown" }
    var usageDescription: String { "unknown" }
    var weight: Double { 0.0 }
    var subTaskTypes: [SubTaskTypeBox] { [] }
    var progress: Double { 0.0 }
    var isCompleted: Bool { true }
    
    static var allSpaceTypes: [any SpaceType] {
        return UnknownSpaceType.allCases.map { $0 as any SpaceType}
    }
}

