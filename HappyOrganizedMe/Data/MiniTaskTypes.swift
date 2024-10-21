//
//  MiniTaskTypes.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation


enum KitchenMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Start by clearing out everything from the designated area. Remove expired food, broken appliances, or items that no longer serve a purpose."
        case .clean: return "Once items are removed, thoroughly clean the surfaces, cabinets, and drawers. Use appropriate cleaning products to wipe down counters, shelves, and appliances."
        case .categorize: return "Group items by category, such as cookware, pantry items, or utensils. Place similar items together to streamline their use and access."
        case .group: return "Once categorized, group items by function or frequency of use. For example, place frequently used spices together near the stove or baking supplies in one drawer."
        case .sort: return " Sort items by size, type, or expiration date. Arrange pantry items with soon-to-expire products in the front or group utensils by size in drawers."
        case .contain: return "Use containers, bins, or baskets to store grouped items. Stackable containers work well in pantries, while drawer organizers can help keep utensils neat."
        case .label: return "Label containers, shelves, or bins to identify where everything belongs. Use clear labels for easy visibility and consistency throughout the kitchen."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Removing unnecessary items helps you start with a clean slate, making it easier to organize and manage your kitchen. It reduces clutter and creates more usable space."
        case .clean: return "Cleaning ensures a hygienic and fresh kitchen environment. Regular cleaning helps maintain the quality of your kitchen spaces and creates a more pleasant atmosphere for cooking and meal prep."
        case .categorize: return "Categorizing items helps you create an organized kitchen that’s easy to navigate. It allows for quicker meal prep and reduces time spent searching for things, enhancing overall kitchen efficiency."
        case .group: return "Grouping items in this way enhances the flow of your kitchen, making it easier to find exactly what you need. It saves time and effort by keeping commonly used items within easy reach."
        case .sort: return "Sorting helps maintain an organized and functional kitchen. It reduces food waste by keeping track of expiration dates and makes finding the right tools or ingredients much faster."
        case .contain: return "Containing items prevents clutter and keeps everything in its place. It also maximizes storage space and creates a clean, streamlined look in your kitchen."
        case .label: return "Labeling ensures that everyone knows where items belong, making it easier to maintain organization over time. It reduces confusion and helps keep your kitchen looking tidy and functional."

        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
    
    
    
    
    static var MiniTaskType: [any MiniTaskType] {
        return KitchenMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}

enum LivingRoomMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Start by removing unnecessary or unused items from the living room. This includes old magazines, broken decor, or anything that no longer serves a purpose."
        case .clean: return "Once everything is removed, thoroughly clean surfaces like coffee tables, shelves, and electronics. Don’t forget to vacuum or mop the floors and dust in hard-to-reach areas."
        case .categorize: return "Group similar items together, such as books, electronics, or decor pieces. Keep like items in the same space for better organization."
        case .group: return "Within each category, group items by their purpose or usage. For example, keep remotes and chargers together or organize books by genre."
        case .sort: return "Sort items by size, type, or frequency of use. Keep everyday items within easy reach and store less frequently used items out of sight."
        case .contain: return "Use baskets, bins, or trays to contain items like remotes, games, or throw blankets. Choose storage solutions that fit your living room’s style while keeping items easily accessible."
        case .label: return "Label containers, shelves, or bins to ensure everything stays in its place. Clear, consistent labeling makes it easier for everyone to maintain the organization."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Removing clutter creates a more open and inviting space. It helps you focus on what you want to keep and makes it easier to organize, giving your living room a fresh, clean feel."
        case .clean: return "A clean living room is more comfortable and visually appealing. Regular cleaning helps maintain the room’s aesthetic, making it a pleasant space for relaxation and gatherings."
        case .categorize: return "Categorizing makes it easier to find things when you need them. It also helps you see what you have and ensures that everything has a designated place, reducing future clutter."
        case .group: return "Grouping items by function makes your living room more efficient and functional. It enhances the flow of the space, helping you access what you need quickly and easily."
        case .sort: return "Sorting keeps the room organized and makes day-to-day activities more convenient. It reduces the time spent searching for things, ensuring a streamlined and efficient space."
        case .contain: return "Containing items reduces visible clutter and keeps your living room looking neat. It also makes tidying up faster, as everything has a designated space."
        case .label: return "Labeling prevents confusion and helps keep your living room organized over time. It ensures that everyone knows where things belong, making it easier to maintain a clutter-free space."

        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  

    static var MiniTaskType: [any MiniTaskType] {
        return LivingRoomMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}
enum DiningRoomMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Go through the dining room and identify items that don’t belong, are no longer needed, or are cluttering the space. These could be decor pieces, unused dishes, or other objects. Use a box or basket to gather the items. Decide if each item will be thrown away, donated, or relocated to another area of the home."
        case .clean: return "Wipe down all surfaces in the dining room, including the dining table, chairs, sideboards, and light fixtures. Use appropriate cleaners for wood, glass, or metal. Pay special attention to high-touch areas like chair backs, drawer pulls, and tabletops. Don’t forget to clean under furniture and in hidden spots like behind curtains or under the table."
        case .categorize: return "Sort items in the dining room by their function. For example, group all dining ware, table linens, decor, and serving pieces separately. Consider creating categories for daily-use items and those reserved for special occasions. This helps identify what’s essential versus what may be taking up unnecessary space."
        case .group: return "After categorizing, group similar items together in one area. Place all your serving platters on a single shelf, store table linens in one drawer, and group decorative items together. If certain categories have multiple sub-groups (e.g., cloth napkins for daily use and for special occasions), group them accordingly within their storage areas."
        case .sort: return "Within each group, sort items by size, type, or frequency of use. For example, sort dinner plates from salad plates, or arrange items in the order of how often they are used. Place the most frequently used items in easy-to-reach spots, while less frequently used items can be stored higher or lower."
        case .contain: return "Use storage containers, bins, or baskets to store small items such as napkin rings, candles, or seasonal decor. For table linens, consider using fabric baskets or drawer dividers. Ensure that all containers are labeled clearly and stored in cabinets or shelves to reduce visual clutter."
        case .label: return "After containing and storing items, label drawers, cabinets, and containers with clear, descriptive labels. Use small, neat labels that describe the contents, such as “Table Linens,” “Serving Dishes,” or “Candles.” You can use a label maker or handwrite the labels, depending on your preference."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Removing unnecessary or misplaced items from the dining room creates a cleaner, more organized environment. It opens up space for functional or aesthetically pleasing elements, making the room feel more spacious and inviting. Decluttering is a key first step in maintaining a tidy and stress-free dining space."
        case .clean: return "Regular cleaning helps maintain the appearance and longevity of dining room furniture. A clean environment is essential for both everyday meals and hosting guests. It ensures a hygienic space where food is served, contributing to the overall health and well-being of your family and guests."
        case .categorize: return "Categorizing helps streamline the organization process by making it easier to locate and store items. This prevents clutter and ensures that each item has a designated place. By keeping similar items together, you enhance the functionality and efficiency of your dining room, especially during meal preparation or when setting the table for guests."
        case .group: return "Grouping items improves access and functionality. When similar items are stored together, it becomes easier to quickly find what you need, particularly when preparing for meals or hosting gatherings. Grouping items also reduces the risk of clutter building up in random areas and maintains a visually cohesive look."
        case .sort: return "Sorting ensures that the dining room is not only organized but also functional. When items are sorted effectively, you can access what you need without having to rummage through drawers or cabinets. This saves time and makes everyday dining or entertaining much smoother, with everything in its proper place."
        case .contain: return "Containing smaller items prevents them from getting lost or creating clutter. It keeps everything in its place and makes it easier to clean and maintain order in the dining room. Using containers also protects delicate items like linens or silverware from damage, dust, and wear."
        case .label: return "Labels serve as a visual guide, helping you quickly locate what you need without having to open multiple drawers or containers. They also encourage long-term organization, as family members or guests can easily find and return items to their proper places. Labeled storage ensures the dining room stays orderly over time, making daily use or hosting more efficient and stress-free."
        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  
    static var MiniTaskType: [any MiniTaskType] {
        return DiningRoomMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}

enum OfficeMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Go through the office and identify items that are no longer needed, out of place, or causing clutter. This includes old papers, unused office supplies, or out-of-date electronics. Use a box or trash bin to collect items to discard, recycle, or donate. Make decisions quickly to keep the process efficient."
        case .clean: return "Dust and wipe down all surfaces, including the desk, shelves, computer, and office equipment. Pay attention to high-touch areas like keyboards, mouse, and desk organizers. Use appropriate cleaning solutions for different materials (e.g., wood polish, screen cleaner). Don’t forget to clean under the desk and behind electronics."
        case .categorize: return "Sort office items into categories based on their function. Examples include office supplies, electronics, paperwork, and reference materials. This process should involve setting aside time to go through items and deciding what stays, what is archived, and what can be discarded."
        case .group: return "Within each category, group items together. For example, put all writing instruments in one drawer, all cables in another, and keep related papers in the same folder or file. Group by purpose, frequency of use, or type (e.g., highlighters, pens, and pencils in one group)."
        case .sort: return "Once grouped, sort items by priority or frequency of use. Items you use daily (like your computer, notebook, or pens) should be placed in easily accessible spots. Less frequently used items (like reference books or extra supplies) can be stored in drawers, shelves, or storage boxes further away."
        case .contain: return "Use organizers, bins, or trays to contain small items such as paperclips, sticky notes, or charging cables. Invest in drawer organizers or desk trays to keep items neatly stored in one place. Larger items like notebooks or binders can be stored in filing cabinets or shelves."
        case .label: return "Label drawers, shelves, and storage containers with clear, concise labels that describe the contents. Use a label maker or printable labels to keep a consistent and professional look. Labeling categories like “Office Supplies,” “Cables,” “Documents,” or “Reference Materials” helps maintain order."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Removing unnecessary items frees up space and makes the office feel less cluttered and more productive. It allows you to focus on what truly matters by getting rid of distractions, and it creates an environment that promotes efficiency, creativity, and a sense of calm."
        case .clean: return "A clean office not only looks better but also creates a healthier work environment. Regular cleaning prevents the buildup of dust and germs, which can affect your health and the longevity of your office equipment. A clean workspace also boosts morale and productivity by reducing distractions."
        case .categorize: return "Categorizing helps you streamline your office setup by grouping similar items together, making it easier to find what you need when you need it. It also simplifies the organizing process and helps ensure that everything in your office has a dedicated place, reducing clutter and increasing efficiency."
        case .group: return "Grouping items further refines your organization and ensures quick access to what you need. It eliminates wasted time spent searching for things, thus making your office setup more efficient. Grouping items also helps with visual organization, giving the space a more cohesive and streamlined look."
        case .sort: return "Sorting ensures that your workspace is functional and tailored to your needs. By keeping essential items within reach and less-used items out of the way, you create a more organized and efficient workspace, which helps to maintain focus and productivity."
        case .contain: return "Containing items keeps them from spreading across your workspace, preventing clutter and disorganization. It also protects delicate or important items from being misplaced or damaged. Containing items ensures that everything stays organized and easy to find, helping you maintain a tidy office long-term."
        case .label: return "Labels provide a visual guide to your office organization, making it easy to find and return items to their proper places. Labels also promote long-term organization, as they help keep your space neat and efficient, even when you’re busy or sharing the space with others. This system prevents clutter from re-emerging and keeps your office running smoothly."

        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  
    static var MiniTaskType: [any MiniTaskType] {
        return OfficeMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}

enum BedroomMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Go through your bedroom and identify items that don’t belong, are no longer needed, or are contributing to clutter. This can include old clothes, papers, broken items, or anything that doesn’t serve a purpose in your bedroom. Place them in a bag or bin to either discard, donate, or relocate."
        case .clean: return "Dust and wipe down all surfaces, including nightstands, dressers, and shelves. Vacuum or sweep the floors, and don’t forget to clean under the bed. Wash your bedding, including sheets, pillowcases, and comforters, and consider deep-cleaning curtains or windows if needed."
        case .categorize: return "Sort items in your bedroom by category, such as clothing, accessories, shoes, and personal items. Create distinct piles or sections for each category to keep the organization process focused and efficient."
        case .group: return "Once categorized, group similar items together. For example, group all workout clothes in one drawer, shoes in another area, and accessories like belts or scarves in a designated bin. Arrange items based on how often you use them, with frequently worn items placed in easily accessible spots."
        case .sort: return "Within each group, sort items by priority or season. For example, sort clothes into sections for different seasons or sort accessories by daily use versus occasional wear. Place high-use items in the most convenient spots and store lesser-used items in drawers or on high shelves."
        case .contain: return "Use bins, baskets, or drawer organizers to contain smaller items like jewelry, socks, or underwear. Keep storage containers in closets, under the bed, or on shelves to prevent clutter from spreading. Store blankets or extra bedding in decorative baskets or storage ottomans for dual functionality."
        case .label: return "Label drawers, bins, or containers with clear, descriptive labels, especially in areas like closets or storage bins. Use labels like “Winter Clothes,” “Jewelry,” or “Daily Accessories” to ensure that everything has a designated place and is easy to find."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "The bedroom should be a restful, clutter-free environment. Removing unnecessary items creates space, reduces stress, and promotes better sleep. It also helps to create a more peaceful atmosphere by eliminating visual clutter and distractions."
        case .clean: return "A clean bedroom promotes a healthier, more comfortable space for rest. Regular cleaning reduces allergens like dust and pet dander, which can affect sleep quality. It also helps create a calming environment, which is essential for relaxation and rejuvenation."
        case .categorize: return "Categorizing your belongings ensures that every item has a specific place. This makes it easier to maintain organization and prevents clutter from building up in the future. Knowing exactly where everything belongs helps to streamline your daily routines and keeps the bedroom tidy."
        case .group: return "Grouping items helps you quickly find what you need and maintain order in your bedroom. It keeps everything organized in a way that makes sense for your lifestyle, reducing frustration and saving time, especially when getting dressed or preparing for bed."
        case .sort: return "Sorting items ensures that your bedroom remains functional and efficient. By prioritizing access to the items you use most often, you reduce daily frustration and keep your space optimized for your needs. This system also helps with seasonal transitions and wardrobe changes."
        case .contain: return "Containing items keeps them organized and prevents them from becoming scattered across your bedroom. It helps maintain visual harmony in the space and keeps surfaces clear. Containing items also ensures that they are protected and easy to find, making it easier to keep your bedroom tidy."
        case .label: return "Labels act as reminders of where items belong, making it easy to maintain an organized bedroom. This system ensures that you, or anyone sharing the space, can quickly locate and return items, preventing clutter from accumulating again. Labels promote long-term organization and efficiency."

        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  
    static var MiniTaskType: [any MiniTaskType] {
        return BedroomMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}


enum PlayroomMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Go through the playroom and identify toys, games, or items that are broken, outgrown, or no longer used. Set up a box for donations, a bag for trash, and a bin for relocating toys that belong in other rooms."
        case .clean: return "Dust and wipe down surfaces such as shelves, toy bins, and play tables. Disinfect toys that are frequently touched. Sweep or vacuum the floor, and wash any soft items like stuffed animals, cushions, or play mats that may collect dust."
        case .categorize: return "Sort toys and activities by type: puzzles, books, building blocks, art supplies, and so on. Create separate areas or sections for each category of toys to keep everything organized."
        case .group: return "Group toys within each category. For example, group books by age level or subject, or organize art supplies by type (crayons, markers, paints). In the case of building toys like blocks or Legos, group them by color or size."
        case .sort: return "Sort toys or supplies based on use or frequency. Place frequently used items in easily accessible areas and store seasonal or less-used items higher up or in designated storage bins."
        case .contain: return "Use bins, baskets, or shelving units to contain toys and supplies. For smaller toys like action figures or blocks, use containers with lids or sectioned organizers to keep everything tidy. Place toys with many pieces (like puzzles) in clear containers to avoid losing pieces."
        case .label: return "Label storage bins, shelves, or drawers with clear labels for each category of toys. Use words or pictures depending on the child’s age. For younger children, consider using labels with both text and visuals to make it easier for them to understand where things go."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Removing unnecessary items makes it easier to maintain a clean, organized playroom. A clutter-free space encourages creative play and reduces the chances of accidents caused by tripping over toys. It also helps to keep only the toys that spark joy or promote learning, making playtime more purposeful."
        case .clean: return "Cleaning the playroom regularly helps maintain a healthy, hygienic environment for children. Clean toys and surfaces reduce the spread of germs, especially when multiple children share the space. A tidy playroom also makes it more inviting and comfortable for kids to play in."
        case .categorize: return "Categorizing toys makes it easier for kids to find what they want to play with and return items to their proper place after use. It also promotes organized play by giving children a clear idea of where each toy belongs, which encourages responsibility and helps maintain order in the space."
        case .group: return "Grouping items within categories makes the playroom even more organized and accessible. It allows kids to engage in focused play with specific sets of toys, such as a box of building blocks or a stack of board games. Grouping similar items together enhances the overall structure of the space and supports independent play."
        case .sort: return "Sorting toys by frequency of use ensures that children can quickly access their favorite toys, promoting play without frustration. It also keeps the playroom more organized by reducing clutter from toys that aren’t used as often, making it easier to rotate toys and keep the space fresh."
        case .contain: return "Containing toys prevents them from spreading across the room and becoming messy or overwhelming. Proper containment makes it easier for kids to access toys and, just as importantly, clean up after play. It keeps the space visually organized and ensures everything has its place, which simplifies tidying up for both kids and adults."
        case .label: return "Labels provide a clear, consistent system for keeping the playroom organized. Children can easily identify where toys belong, making it easier for them to clean up independently. This system also ensures that everyone in the household follows the same organizational pattern, preventing future clutter."

        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  

    static var MiniTaskType: [any MiniTaskType] {
        return PlayroomMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}

enum StorageMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Go through your storage space and identify items that are broken, expired, or no longer needed. Separate items into categories: discard, donate, or relocate to another area. For larger storage spaces, tackle one section at a time to avoid feeling overwhelmed."
        case .clean: return "Wipe down shelves, bins, and other surfaces in the storage area. Sweep or vacuum the floor, and remove any dust, cobwebs, or debris. For garages or basements, consider cleaning windows or adding moisture absorbers to prevent mold and mildew."
        case .categorize: return "Sort items by category—such as seasonal decorations, tools, clothing, or sports equipment. Group similar items together in designated sections or bins to make it easier to locate what you need when the time comes."
        case .group: return "Within each category, group similar items further. For example, within the “holiday decorations” category, group by season (e.g., winter decorations, summer party supplies). Use clear bins or labeled containers to keep groups intact."
        case .sort: return "Sort items based on frequency of use. Keep regularly used items within easy reach, such as at the front of shelves or lower levels. Store rarely used items, like seasonal gear or heirlooms, higher up or toward the back of the space."
        case .contain: return "Use containers, bins, or baskets to store loose items. For small or irregularly shaped items, use organizers with compartments or stackable bins. Ensure containers are sturdy and clearly marked for their contents. For items like clothing, use vacuum-sealed bags to save space."
        case .label: return "Label bins, shelves, and containers clearly, using large, easy-to-read labels. For areas with multiple categories, consider color-coded labels or symbols to quickly identify different sections. Label both the front and sides of bins if they’re stacked."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Removing unneeded items creates more usable space and helps avoid clutter buildup. It ensures that your storage is only holding things of value, making it easier to find items when you need them. Regularly clearing out the storage area prevents it from becoming a dumping ground for forgotten items."
        case .clean: return "Cleaning the storage area improves air quality and protects your belongings from damage. Dirt, dust, and moisture can accumulate in storage areas, potentially ruining stored items. Regular cleaning also makes the space more pleasant to use and ensures that your stored items remain in good condition."
        case .categorize: return "Categorizing items makes storage more efficient and reduces the time spent searching for specific items. Grouping like items together helps you keep track of your inventory, so you know what you have and where it’s stored, preventing unnecessary purchases or lost items."
        case .group: return "Grouping items within categories increases efficiency and makes it easier to find specific things. For example, instead of rummaging through one large bin of mixed decorations, you can quickly access the right set. Grouping also helps keep the space visually organized and easy to maintain."
        case .sort: return "Sorting by frequency of use maximizes convenience. Frequently accessed items should be easy to reach, while less-used items can be stored out of the way, making the storage space more functional. This system helps maintain order and reduces the time spent retrieving frequently needed items."
        case .contain: return "Containing items helps maintain order and prevents them from spilling out or becoming disorganized. Bins protect your belongings from dust, moisture, and pests while keeping them neatly stored. Proper containment also maximizes available space and makes it easier to stack or store items efficiently."
        case .label: return "Labeling is essential for maintaining long-term organization in a storage area. It ensures that you (and others) can easily identify where items belong, making retrieval and reorganization simpler. Labels also help prevent clutter from returning, as everyone will know where to place items when putting things away."

        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  
    static var MiniTaskType: [any MiniTaskType] {
        return StorageMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}

enum BathroomMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Remove items that are no longer needed or are taking up space, such as expired products, used towels, old toiletries, or empty containers. Check under the sink, in cabinets, and on shelves for any items that can be discarded or relocated."
        case .clean: return "Clean all surfaces, including the sink, mirror, bathtub, shower, toilet, and floor. Use appropriate cleaning supplies for each area (e.g., glass cleaner for mirrors, bleach for toilets). Don’t forget to clean behind the toilet, faucets, and under the sink."
        case .categorize: return "Sort bathroom items into categories such as hair care, skincare, oral hygiene, and cleaning products. Assign specific areas, drawers, or containers for each category to keep similar items together."
        case .group: return "Group items within each category for further organization. For example, group all skincare products together by type (cleansers, moisturizers, serums) or group all hair tools in one drawer."
        case .sort: return "Sort items by how frequently they are used. Store daily-use products in easily accessible areas, such as countertop organizers or top drawers. Place rarely used items, such as guest towels or specialty products, in less accessible cabinets or higher shelves."
        case .contain: return "Use containers or baskets to hold smaller items like toiletries, makeup, or cleaning supplies. Opt for drawer dividers, bins, or trays to organize these items in cabinets, shelves, or under the sink."
        case .label: return "Label bins, drawers, or shelves to clearly identify what’s inside. Use waterproof labels to withstand bathroom humidity and place labels in visible areas for easy reading."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Removing unnecessary items reduces clutter and frees up space, making it easier to keep your bathroom organized and functional. This step ensures that only items you actually use or need remain in the bathroom, promoting a cleaner, more streamlined environment."
        case .clean: return "A clean bathroom is crucial for maintaining hygiene. Regular cleaning prevents the buildup of bacteria, mold, and soap scum, creating a safer and more pleasant space. It also enhances the overall look and feel of the bathroom, contributing to a more relaxing environment."
        case .categorize: return "Categorizing items improves accessibility and makes it easier to find what you need, reducing time spent searching through clutter. It also helps you maintain order over time, preventing the bathroom from becoming disorganized again."
        case .group: return "Grouping items keeps everything organized and accessible, making it easy to maintain a functional system. This method ensures that all related items are together, reducing the chances of clutter."
        case .sort: return "Sorting items by frequency of use ensures that essentials are always at hand, while keeping less-used items out of the way. This improves efficiency, especially during the busy morning routine, and keeps your bathroom looking tidy."
        case .contain: return "Containing smaller items prevents them from becoming scattered or disorganized. It also creates a neater, more visually pleasing space, while making it easier to access and store products."
        case .label: return "Labeling ensures that each item has a designated space, making it easier to maintain organization over time. It helps everyone in the household know where to find and store things, reducing the chances of clutter and disarray."

        }
    }
    var weight: Double { 5.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  
    static var MiniTaskType: [any MiniTaskType] {
        return BathroomMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}

enum GarageMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    
    case remove = "Remove"
    case clean = "Clean"
    case categorize = "Categorize"
    case group = "Group"
    case sort = "Sort"
    case contain = "Contain"
    case label = "Label"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .remove: return "Clear out items that are broken, unused, or no longer needed, such as old tools, damaged equipment, or seasonal items that are no longer functional. Properly dispose of or donate items that still have value but are not in use."
        case .clean: return "Thoroughly clean the garage, starting with sweeping the floor to remove dust, dirt, and debris. Wipe down shelves, workbenches, and storage bins. Check corners and hidden areas for cobwebs or accumulated grime, and clean any oil spills or stains on the floor."
        case .categorize: return "Sort garage items into categories, such as sports equipment, gardening tools, car maintenance supplies, and seasonal decorations. Assign designated areas or storage units for each category to keep everything organized and easily accessible."
        case .group: return "Group similar items within each category. For example, group all gardening tools together, such as rakes, shovels, and pruning shears, or group all car maintenance supplies like oil, wrenches, and jacks."
        case .sort: return "Sort items based on how frequently they are used. Keep frequently used tools and supplies in easily accessible areas, such as on hooks, shelves, or workbenches. Store rarely used items, such as seasonal decorations or specialty tools, in higher or harder-to-reach areas."
        case .contain: return "Use bins, cabinets, or wall-mounted storage systems to contain smaller items, such as screws, nuts, bolts, and other small tools. Label containers or use clear storage to easily identify what’s inside."
        case .label: return "Label storage bins, drawers, shelves, or pegboards to clearly identify the contents. Use durable, waterproof labels that can withstand the garage environment and ensure labels are easy to read."
        }
    }
    var usageDescription: String {
        switch self {
        case .remove: return "Removing unnecessary items creates more space in the garage, making it easier to access tools and equipment. This step helps declutter the area, reducing visual overload and providing room for new or essential items, enhancing functionality."
        case .clean: return "Cleaning the garage maintains a safe and hygienic environment. Regular cleaning prevents dust and dirt from accumulating, ensuring that tools and equipment remain in good condition. It also reduces the risk of pests and keeps the garage looking well-maintained."
        case .categorize: return "Categorizing items simplifies finding and storing items, making the garage more functional. It also reduces clutter and ensures that everything has its place, preventing tools and equipment from being scattered around and creating confusion."
        case .group: return "Grouping items within categories helps streamline the organization, making it easier to find specific items when needed. This step ensures that related items are kept together, reducing time spent searching and minimizing chaos."
        case .sort: return "Sorting items by frequency of use increases efficiency and convenience, ensuring that commonly needed tools and equipment are always within reach. This system helps maintain order in the garage by keeping lesser-used items out of the way, preventing unnecessary clutter."
        case .contain: return "Containing smaller items prevents them from getting lost or scattered throughout the garage. It also keeps the space visually clean and organized, while making it easier to locate and access tools and parts when needed."
        case .label: return "Labeling ensures that everything has a designated spot, making it easier to find and store items. It also helps maintain order over time by providing a clear system that everyone can follow, reducing the likelihood of disorganization."

        }
    }
    var weight: Double { 0.20 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
  
    static var MiniTaskType: [any MiniTaskType] {
        return GarageMiniTaskType.allCases.map { $0 as any MiniTaskType }
    }
}

enum ComingSoonMiniTaskType: String, Codable, CaseIterable, Identifiable, Displayable, MiniTaskType {
    case comingSoon
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    var instructions: String { "String" }
    var usageDescription: String { "String" }
    var weight: Double { 0.0 }
    var progress: Double { 0.0 }
    var isCompleted: Bool { progress >= 1.0 }
}
 


