//
//  PlayroomSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/15/24.
//

import Foundation

// MARK: PlayroomSpaceType

enum PlayroomSpaceType: String, Codable, CaseIterable, Identifiable, SpaceType {
    case toyBins = "Toy Bins"
    case shelvingUnits = "Shelving Units"
    case toyChestTrunks = "Toy Chest Trunks"
    case rotationalStorage = "Rotational Storage"
    // PlayroomOutdoorSpaceType: String, Codable, CaseIterable, Identifiable, SpaceType {
        case playEquipment = "Play Equipment"
        case outdoorToyStorage = "Outdoor Toy Storage"
        case waterPlayArea = "Water Play Area"
        case gardeningExplorationArea = "Gardening Exploration Area"
    // PlayroomTechSpaceType: String, Codable, CaseIterable, Identifiable, SpaceType {
        case deviceChargingStation = "Device Charging Station"
        case comfortableSeating = "Comfortable Seating"
        case headphoneStorage = "Headphone Storage"
        case screenTimeTimer = "Screen Time Timer"
    // PlayroomStudy
        case deskChair = "Desk Chair"
        case suppliesStorage = "Supplies Storage"
        case homeworkOrganizer = "Homework Organizer"
        case referenceShelf = "Reference Shelf"
    // PlayroomSensorySpaceType: String, Codable, CaseIterable, Identifiable, SpaceType {
        case sensoryBins = "Sensory Bins"
        case tactileWallPanels = "Tactile Wall Panels"
        case lightTable = "Light Table"
        case waterPlayStation = "Water Play Station"
    // PlayroomPerformanceSpaceType: String, Codable, CaseIterable, Identifiable, SpaceType {
        case instrumentStorage = "Instrument Storage"
        case performanceArea = "Performance Area"
        case musicStand = "Music Stand"
        case recordingPlaybackZone = "Recording/Playback Zone"
    // PlayroomActivitySpaceType: String, Codable, CaseIterable, Identifiable, SpaceType {
        case softMatsRugs = "Soft Mats & Rugs"
        case sportsEquipmentRacks = "Sports Equipment Racks"
        case indoorPlayEquipment = "Indoor Play Equipment"
        case freePlayAreas = "Free Play Areas"
    // PlayroomGame
        case puzzleStorage = "Puzzle Storage"
        case gameShelf = "Game Shelf"
        case gameTable = "Game Table"
        case gamePieceOrganizer = "Game Piece Organizer"
    // PlayroomImagination
        case dressUpArea = "Dress Up Area"
        case pretendPlaySets = "Pretend Play Sets"
        case rolePlayStation = "Role Play Station"
        case costumeMirror = "Costume Mirror"
    // PlayroomConstruction
        case buildingBlockStorage = "Building Block Storage"
        case constructionTable = "Construction Table"
        case displayShelf = "Display Shelf"
        case challengeCards = "Challenge Cards"
    // PlayroomQuite
        case bookshelves = "Bookshelves"
        case cozySeatingAreas = "Cozy Seating Areas"
        case softLighting = "Soft Lighting"
        case quietTimeBasket = "Quiet Time Basket"
    // PlayroomCraftSpaceType: String, Codable, CaseIterable, Identifiable, SpaceType {
        case craftSuppliesDrawers = "Craft Supplies Drawers"
        case artTable = "Art Table"
        case craftDisplayBoard = "Craft Display Board"
        case supplyOrganizer = "Supply Organizer"

    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .toyBins: return "Organize toy bins by categories such as building blocks, dolls, cars, or action figures. Label each bin for easy identification and use stackable or clear bins to maximize space and visibility."
        case .shelvingUnits: return "Install sturdy shelving units at accessible heights for children, using baskets or bins to store smaller items. Arrange toys, books, and art supplies neatly, and consider using adjustable shelves to adapt as storage needs change."
        case .toyChestTrunks: return "Use a large storage chest or trunk for bulky toys like stuffed animals or large playsets, ensuring quick and easy cleanup."
        case .rotationalStorage: return "Implement a rotational system by dividing toys into several groups and only keeping one group accessible at a time. Store the rest in labeled bins or containers out of sight and rotate them every few weeks."
        case .sensoryBins: return "Incorporate bins filled with different textures and materials, such as sand, rice, water beads, or fabric scraps, to create a variety of sensory experiences."
        case .tactileWallPanels: return "Install wall panels with different textures like soft fabric, bumpy surfaces, or rough materials to create a tactile sensory experience for children."
        case .lightTable: return "Include a light table or illuminated surface for playing with transparent objects, creating a visually stimulating sensory activity. Set up a light table with translucent shapes, letters, or sensory materials for children to explore, experiment, and create designs with the glowing light beneath."
        case .waterPlayStation: return "Set up a water play station with a shallow bin, water toys, and tools like cups, funnels, or water wheels, allowing kids to splash, pour, and explore."
        case .bookshelves: return "Arrange a cozy reading corner with low, accessible bookshelves to store a variety of books. Organize books by category, color, or size to make them easy for kids to find and put back."
        case .cozySeatingAreas: return "Create a comfortable seating area with child-sized chairs, bean bags, or floor cushions in the quiet zone. Arrange them in a way that encourages reading, relaxing, or quiet play."
        case .softLighting: return "Use soft, adjustable lighting such as floor lamps, table lamps, or string fairy lights to create a gentle, calming atmosphere in the quiet zone."
        case .quietTimeBasket: return "Use quiet time baskets to organize calming activities like puzzles, coloring books, and sensory toys (fidget toys), and place them in the quiet zone for easy access during reading time or quiet breaks."
        case .buildingBlockStorage: return "Store building blocks (e.g., wooden blocks, plastic blocks) in bins or drawers, organizing them by size or type for easy access. Organize building blocks in clear, labeled bins or storage boxes, making them easy to find and put away after playtime."
        case .constructionTable: return "Set up a dedicated construction table with ample space for building and experimenting, keeping it clear of clutter and organizing supplies in nearby bins or drawers. Provide a flat table or mat where children can build and construct without interfering with other activities."
        case .displayShelf: return "Install display shelves at an accessible height for children, arranging completed projects and favorite creations neatly on them."
        case .challengeCards: return "Include building challenge cards or guides to inspire creativity and encourage new ideas for construction projects.Create or purchase challenge cards with different building tasks and ideas, and keep them in a designated container near the construction area."
        case .puzzleStorage: return "Store puzzles in stackable bins or labeled boxes, and dedicate a table or mat as a designated puzzle-solving area."
        case .gameShelf: return "Organize board games and card games on a dedicated shelf, sorted by size or frequency of use, and label each section for easy access. Consider grouping them by age or difficulty."
        case .gameTable: return "Set up a dedicated game table with ample space for playing board games, puzzles, or card games. Ensure it’s sturdy, with chairs or seating nearby. Provide a table with enough space for multiple players to sit and play, ensuring it’s located near the puzzle and game storage."
        case .gamePieceOrganizer: return "Use a game piece organizer with compartments to sort and store small game pieces, dice, cards, and other accessories. Label each section for easy identification."
        case .softMatsRugs: return "Lay down soft mats or rugs for tumbling, stretching, or safe indoor physical play like yoga or dancing.Place soft mats or rugs in areas where children engage in physical activities or play. Choose ones that are easy to clean and provide cushioning."
        case .sportsEquipmentRacks: return "Install hooks or a small rack to store items like jump ropes, balls, or hula hoops in an organized manner. For older children, Install sports equipment racks to hold items like balls, bats, rackets, and other gear in an organized manner. Position them at a reachable height for easy access."
        case .indoorPlayEquipment: return "Set up indoor play equipment like small slides, climbing walls, or rope swings or ladders that are safe for indoor use, ensuring they fit within the playroom’s space and have soft mats underneath for safety."
        case .freePlayAreas: return "Designate open spaces within the playroom free of furniture or obstructions, allowing kids the freedom to move, dance, or engage in unstructured play. Provide a variety of surfaces like soft mats, rugs, and pillows to encourage creativity and  imagination."
        case .instrumentStorage: return "Organize musical instruments like drums, keyboards, or guitars on shelves, racks, or stands to keep them easily accessible."
        case .performanceArea: return "Set up a small stage or cleared space with a backdrop, props, and a spotlight to create an inviting area for children to perform songs, dances, or skits."
        case .musicStand: return "Include a music stand in the performance area where children can place their sheet music, song lyrics, or scripts, ensuring easy access and a professional feel."
        case .recordingPlaybackZone: return "Set up a recording and playback zone with a simple microphone, recording device, and speakers, allowing children to record their performances and listen to them afterward."
        case .dressUpArea: return "Designate a corner or space with a mirror, hooks, and storage bins for costumes, hats, and accessories to encourage imaginative dress-up play. Use hooks, a small wardrobe, or a chest to store dress-up clothes, costumes, and accessories, keeping them accessible for imaginative play."
        case .pretendPlaySets: return "Organize playsets like kitchen toys, dollhouses, or puppet theaters in labeled bins or baskets for easy identification and cleanup."
        case .rolePlayStation: return "Set up a role-play station with costumes, props, and themed accessories, making it easy for kids to dive into different characters and imaginative scenarios."
        case .costumeMirror: return "Place a full-length mirror near the dress-up area, allowing kids to see themselves in their costumes as they role-play."
        case .craftSuppliesDrawers: return "Organize craft supplies in clear containers, drawers, or bins, and label each one for easy identification. Keep frequently used items like crayons, markers, and paper within reach, while storing less frequently used supplies on higher shelves."
        case .artTable: return "Set up a dedicated art table with ample workspace, easy-to-clean surfaces, and storage for supplies like paper, paints, and brushes. Include a comfortable chair and ensure there’s plenty of light for detailed work.."
        case .craftDisplayBoard: return "Create a display area using corkboards, clip strings, wire grid, or framed spaces where kids can showcase their completed crafts and artwork. Rotate the displayed pieces regularly to keep it fresh and engaging.."
        case .supplyOrganizer: return "Use a portable caddie with multiple compartments to organize craft supplies like markers, crayons, scissors, glue, and paintbrushes. Make sure each item has its designated spot for easy access and cleanup."
        case .deskChair: return "Provide a child-sized desk and chair in a quiet corner of the playroom, equipped with writing and drawing supplies, making it a dedicated space for focused activities."
        case .suppliesStorage: return "Organize study supplies like pencils, markers, paper, and notebooks in bins or caddies near the study desk to keep everything easily accessible and neatly stored."
        case .homeworkOrganizer: return "Use a homework organizer with labeled folders or trays for different subjects or assignments, ensuring that everything is sorted and easy to find."
        case .referenceShelf: return "Set up a reference shelf with dictionaries, encyclopedias, and educational books within easy reach."
        case .deviceChargingStation: return "Establish a dedicated area with charging docks and cable organizers for tablets, laptops, and other tech devices."
        case .comfortableSeating: return "Arrange bean bags, floor cushions, or small chairs near tech devices to create a cozy, tech-friendly seating area."
        case .headphoneStorage: return "Use hooks or bins to store headphones or headsets for screen-based activities."
        case .screenTimeTimer: return "Use a visual timer or a digital countdown to manage screen time sessions. Include a system for managing screen time (e.g., timers or parental controls) to ensure balanced use of technology."
        case .playEquipment: return "Set up outdoor play structures like swings, slides, or climbing frames, ensuring the area is safe for active play."
        case .outdoorToyStorage: return "Use weatherproof bins or a shed to store outdoor toys like balls, bikes, or ride-on vehicles."
        case .waterPlayArea: return "Designate a space for water activities like a small pool, splash pad, or water table for outdoor fun."
        case .gardeningExplorationArea: return "Create a garden or nature exploration zone where children can plant seeds, dig, and observe nature."
        }
    }
    var usageDescription: String {
        switch self {
        case .toyBins: return "Toy bins keep toys organized and easily accessible, reducing clutter and making cleanup quick and efficient. This helps children learn organization skills and ensures that toys are always ready for playtime."
        case .shelvingUnits: return "Shelving helps keep the playroom organized, making it easy for children to find and put away their belongings. It maximizes vertical space, keeps items off the floor, and encourages independent play and cleanup."
        case .toyChestTrunks: return "A toy chest provides a convenient and centralized place for storing larger toys or a variety of smaller items. It encourages kids to keep their playroom tidy while offering quick and easy access to their favorite toys."
        case .rotationalStorage: return "Rotational play keeps the playroom fresh and engaging, reducing clutter while helping children rediscover their toys with excitement. It also promotes creativity and prevents boredom, ensuring a variety of play experiences over time."
        case .craftSuppliesDrawers: return "A well-organized craft zone makes it easy for children to find and use their materials, encouraging creativity and independent crafting. It reduces mess and ensures that all supplies are readily available for spontaneous art projects."
        case .artTable: return "An art table provides a designated area for children to express their creativity, helping to contain any mess and keep other areas of the playroom tidy. It encourages focused, imaginative play and makes cleanup much easier."
        case .craftDisplayBoard: return "Displaying crafts boosts children’s confidence and pride in their creations, making them feel valued and encouraging further creativity. It also adds a personalized touch to the playroom, making it a vibrant and inspiring space."
        case .supplyOrganizer: return "A supplies caddie keeps craft materials organized and within reach, making it easy for kids to start projects and tidy up afterward. It encourages independence and creativity by allowing them to easily find and use their supplies."
        case .bookshelves: return "Having an organized bookshelf encourages a love for reading and provides a quiet space for children to relax. It helps them develop organizational skills and fosters a habit of independent reading and exploration."
        case .cozySeatingAreas: return "Having dedicated seating makes the quiet zone inviting and cozy, giving children a calm space to unwind, read, or engage in solo activities. It supports focus and relaxation, promoting a peaceful environment for downtime."
        case .softLighting: return "Proper lighting helps set a tranquil mood, making the space more inviting for reading, resting, or quiet play. It reduces eye strain and enhances the overall comfort of the quiet zone, encouraging children to spend time there."
        case .quietTimeBasket: return "Quiet time baskets offer a structured way to encourage independent play and relaxation, helping children transition smoothly into quieter activities while keeping the space organized and clutter-free."
        case .buildingBlockStorage: return "Having an organized building block area encourages creativity and problem-solving, making it easier for children to access the materials they need and fostering a tidy play environment."
        case .constructionTable: return "A construction table provides a stable and organized space for children to build and create, encouraging imaginative play and making it easier to focus on their construction projects without distractions."
        case .displayShelf: return "Display shelves offer a sense of pride and accomplishment, allowing children to showcase their work and boosting confidence while keeping their play area organized and inspiring further creativity."
        case .challengeCards: return "Challenge cards encourage problem-solving, creativity, and focused play, offering children new ideas and inspiring them to try different building techniques, enhancing their construction skills."
        case .dressUpArea: return "A dress-up area fosters creativity, self-expression, and role-playing, allowing children to explore different characters and scenarios, which aids in developing social and emotional skills."
        case .pretendPlaySets: return "Pretend play sets encourage creativity, storytelling, and social skills as children explore different roles and scenarios, helping them make sense of the world around them."
        case .rolePlayStation: return "A role-play station fosters creativity, empathy, and social skills by allowing children to explore various roles, enhancing their ability to understand different perspectives and express themselves."
        case .costumeMirror: return "A costume mirror encourages self-expression and boosts confidence, letting children fully immerse themselves in their imaginative play and see themselves as the characters they create."
        case .puzzleStorage: return "Puzzles help develop problem-solving skills, patience, and fine motor skills. Having an organized space encourages kids to engage in this mentally stimulating activity."
        case .gameShelf: return "A game shelf keeps all games visible and organized, making it easier to choose and enjoy game time, promoting family bonding and strategic thinking."
        case .gameTable: return "A game table provides a central area for fun and interactive play, encouraging social interaction, problem-solving, and quality family time."
        case .gamePieceOrganizer: return "Keeping game pieces organized ensures that games are complete, prevents loss, and makes it easier to set up and play, maintaining a tidy and functional playroom."
        case .softMatsRugs: return "Soft mats and rugs create a safe, comfortable play surface, reducing the risk of injury and offering a cozy area for various activities and exercises in the playroom."
        case .sportsEquipmentRacks: return "Sports equipment racks keep gear organized and prevent clutter, making it easier for kids to find what they need and encouraging active play in the playroom."
        case .indoorPlayEquipment: return "Indoor play equipment offers a fun, active outlet for kids to burn off energy, especially on days when outdoor play isn’t possible, promoting physical activity and motor skill development."
        case .freePlayAreas: return "Free play areas encourage creativity, physical activity, and independent play, giving children the space to explore, imagine, and develop their motor skills in a safe environment."
        case .instrumentStorage: return "Proper instrument storage keeps the playroom tidy and ensures that instruments are protected, encouraging children to explore music and perform without the risk of damage or clutter.."
        case .performanceArea: return "A dedicated performance area encourages creativity, boosts confidence, and provides an outlet for self-expression, allowing children to explore their talents in a fun and supportive environment."
        case .musicStand: return "Having a music stand encourages children to practice reading music or following scripts, enhancing their musical or theatrical skills while fostering a sense of organization and focus during performances."
        case .recordingPlaybackZone: return "This zone encourages creativity, helps build confidence, and provides a fun way for children to hear and improve their musical or storytelling skills, turning the playroom into a mini recording studio."
        case .sensoryBins: return "Sensory bins stimulate a child’s senses, improve fine motor skills, and provide a calming activity that can help with focus and relaxation in the playroom."
        case .tactileWallPanels: return "Tactile wall panels encourage sensory exploration, help develop fine motor skills, and provide a soothing, hands-on activity that can be both engaging and calming in the playroom."
        case .lightTable: return "A light table stimulates visual and tactile senses, encourages creativity, and enhances fine motor skills, making it a captivating and educational addition to the sensory zone."
        case .waterPlayStation: return "A water play station offers a calming sensory experience, helps develop fine motor skills, and introduces basic concepts of volume, cause and effect, making it both fun and educational."
        case .deskChair: return "A desk and chair encourage structured study time, creativity, and independent work, offering a comfortable spot for homework, art projects, or reading, fostering concentration and learning habits."
        case .suppliesStorage: return "Having study supplies organized and within reach promotes a productive and efficient study environment, helping children stay focused and inspired during learning activities."
        case .homeworkOrganizer: return "A homework organizer helps keep schoolwork neat and organized, making it easier for children to stay on top of their assignments and develop good study habits."
        case .referenceShelf: return "A reference shelf provides quick access to learning materials, supporting homework, research, and fostering a love for reading and learning."
        case .deviceChargingStation: return "A device charging station keeps gadgets powered up and organized, ensuring they’re always ready for use and reducing clutter."
        case .comfortableSeating: return "Comfortable seating enhances the tech experience, making it easier for kids to focus on educational games or enjoy screen time in a relaxed environment."
        case .headphoneStorage: return "Keeping headphones organized prevents tangles, reduces clutter, and ensures they’re always ready for use during tech time or online learning."
        case .screenTimeTimer: return "A screen time timer helps children understand and manage their time, ensuring balanced tech use while promoting healthy screen habits."
        case .playEquipment: return "Outdoor play equipment encourages physical activity, strengthens motor skills, and provides a fun, active way for children to explore and enjoy the outdoors."
        case .outdoorToyStorage: return "Proper outdoor toy storage ensures toys remain in good condition, are easy to find, and helps maintain a tidy play area."
        case .waterPlayArea: return "A water play area offers kids a fun, sensory experience that encourages exploration and creativity, while also helping them cool off during warm days."
        case .gardeningExplorationArea: return "Gardening encourages a connection with nature, teaches responsibility, and offers hands-on learning about plant life and growth."
        }
    }
    var weight: Double { 1.0 }
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .toyBins, .shelvingUnits, .toyChestTrunks, .rotationalStorage: return true
        case .gardeningExplorationArea, .outdoorToyStorage, .playEquipment, .waterPlayArea: return true
        case .deviceChargingStation, .comfortableSeating, .headphoneStorage, .screenTimeTimer: return true
        case .deskChair, .suppliesStorage, .homeworkOrganizer, .referenceShelf: return true
        case .lightTable, .sensoryBins, .tactileWallPanels, .waterPlayStation: return true
        case .freePlayAreas, .indoorPlayEquipment, .softMatsRugs, .sportsEquipmentRacks: return true
        case .gamePieceOrganizer, .gameShelf, .gameTable, .puzzleStorage: return true
        case .dressUpArea, .pretendPlaySets, .rolePlayStation, .costumeMirror: return true
        case .buildingBlockStorage, .constructionTable, .displayShelf, .challengeCards: return true
        case .bookshelves, .cozySeatingAreas, .softLighting, .quietTimeBasket: return true
        case .craftSuppliesDrawers, .artTable, .craftDisplayBoard, .supplyOrganizer: return true
        case .instrumentStorage, .performanceArea, .musicStand, .recordingPlaybackZone: return true
        }
    }
    var subTask: (any SubTaskType)? {
        return nil
    }
    var subTaskTypes: [SubTaskTypeBox] {
        switch self {
        case .toyBins, .shelvingUnits, .toyChestTrunks, .rotationalStorage:
            return [
                SubTaskTypeBox(PlayroomSubTaskType.declutter)!,
                SubTaskTypeBox(PlayroomSubTaskType.polish)!,
                SubTaskTypeBox(PlayroomSubTaskType.tableLinens)!,
                SubTaskTypeBox(PlayroomSubTaskType.clean)!,
                SubTaskTypeBox(PlayroomSubTaskType.accessories)!,
                SubTaskTypeBox(PlayroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(PlayroomSubTaskType.organize)!
            ]
        case .gardeningExplorationArea, .outdoorToyStorage, .playEquipment, .waterPlayArea:
            return [
                SubTaskTypeBox(PlayroomSubTaskType.declutter)!,
                SubTaskTypeBox(PlayroomSubTaskType.polish)!,
                SubTaskTypeBox(PlayroomSubTaskType.tableLinens)!,
                SubTaskTypeBox(PlayroomSubTaskType.clean)!,
                SubTaskTypeBox(PlayroomSubTaskType.accessories)!,
                SubTaskTypeBox(PlayroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(PlayroomSubTaskType.organize)!
            ]
        case .deviceChargingStation, .comfortableSeating, .headphoneStorage, .screenTimeTimer:
            return [
                SubTaskTypeBox(PlayroomSubTaskType.declutter)!,
                SubTaskTypeBox(PlayroomSubTaskType.polish)!,
                SubTaskTypeBox(PlayroomSubTaskType.tableLinens)!,
                SubTaskTypeBox(PlayroomSubTaskType.clean)!,
                SubTaskTypeBox(PlayroomSubTaskType.accessories)!,
                SubTaskTypeBox(PlayroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(PlayroomSubTaskType.organize)!
            ]
        case .deskChair, .suppliesStorage, .homeworkOrganizer, .referenceShelf:
            return [
                SubTaskTypeBox(PlayroomSubTaskType.declutter)!,
                SubTaskTypeBox(PlayroomSubTaskType.polish)!,
                SubTaskTypeBox(PlayroomSubTaskType.tableLinens)!,
                SubTaskTypeBox(PlayroomSubTaskType.clean)!,
                SubTaskTypeBox(PlayroomSubTaskType.accessories)!,
                SubTaskTypeBox(PlayroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(PlayroomSubTaskType.organize)!
            ]
        case .lightTable, .sensoryBins, .tactileWallPanels, .waterPlayStation:
            return [
                SubTaskTypeBox(PlayroomSubTaskType.declutter)!,
                SubTaskTypeBox(PlayroomSubTaskType.polish)!,
                SubTaskTypeBox(PlayroomSubTaskType.tableLinens)!,
                SubTaskTypeBox(PlayroomSubTaskType.clean)!,
                SubTaskTypeBox(PlayroomSubTaskType.accessories)!,
                SubTaskTypeBox(PlayroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(PlayroomSubTaskType.organize)!
            ]
        case .instrumentStorage, .musicStand, .performanceArea, .recordingPlaybackZone:
            return [
                SubTaskTypeBox(PlayroomSubTaskType.declutter)!,
                SubTaskTypeBox(PlayroomSubTaskType.polish)!,
                SubTaskTypeBox(PlayroomSubTaskType.tableLinens)!,
                SubTaskTypeBox(PlayroomSubTaskType.clean)!,
                SubTaskTypeBox(PlayroomSubTaskType.accessories)!,
                SubTaskTypeBox(PlayroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(PlayroomSubTaskType.organize)!
            ]
        case .freePlayAreas, .indoorPlayEquipment, .softMatsRugs, .sportsEquipmentRacks:
            return [
                SubTaskTypeBox(PlayroomSubTaskType.declutter)!,
                SubTaskTypeBox(PlayroomSubTaskType.polish)!,
                SubTaskTypeBox(PlayroomSubTaskType.tableLinens)!,
                SubTaskTypeBox(PlayroomSubTaskType.clean)!,
                SubTaskTypeBox(PlayroomSubTaskType.accessories)!,
                SubTaskTypeBox(PlayroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(PlayroomSubTaskType.organize)!
            ]
        case .gamePieceOrganizer, .gameShelf, .gameTable, .puzzleStorage:
            return [
                SubTaskTypeBox(PlayroomSubTaskType.declutter)!,
                SubTaskTypeBox(PlayroomSubTaskType.polish)!,
                SubTaskTypeBox(PlayroomSubTaskType.tableLinens)!,
                SubTaskTypeBox(PlayroomSubTaskType.clean)!,
                SubTaskTypeBox(PlayroomSubTaskType.accessories)!,
                SubTaskTypeBox(PlayroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(PlayroomSubTaskType.organize)!
            ]
        case .dressUpArea, .pretendPlaySets, .rolePlayStation, .costumeMirror:
            return [
                SubTaskTypeBox(PlayroomSubTaskType.declutter)!,
                SubTaskTypeBox(PlayroomSubTaskType.polish)!,
                SubTaskTypeBox(PlayroomSubTaskType.tableLinens)!,
                SubTaskTypeBox(PlayroomSubTaskType.clean)!,
                SubTaskTypeBox(PlayroomSubTaskType.accessories)!,
                SubTaskTypeBox(PlayroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(PlayroomSubTaskType.organize)!
            ]
        case .buildingBlockStorage, .constructionTable, .displayShelf, .challengeCards:
            return [
                SubTaskTypeBox(PlayroomSubTaskType.declutter)!,
                SubTaskTypeBox(PlayroomSubTaskType.polish)!,
                SubTaskTypeBox(PlayroomSubTaskType.tableLinens)!,
                SubTaskTypeBox(PlayroomSubTaskType.clean)!,
                SubTaskTypeBox(PlayroomSubTaskType.accessories)!,
                SubTaskTypeBox(PlayroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(PlayroomSubTaskType.organize)!
            ]
        case .bookshelves, .cozySeatingAreas, .softLighting, .quietTimeBasket:
            return [
                SubTaskTypeBox(PlayroomSubTaskType.declutter)!,
                SubTaskTypeBox(PlayroomSubTaskType.polish)!,
                SubTaskTypeBox(PlayroomSubTaskType.tableLinens)!,
                SubTaskTypeBox(PlayroomSubTaskType.clean)!,
                SubTaskTypeBox(PlayroomSubTaskType.accessories)!,
                SubTaskTypeBox(PlayroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(PlayroomSubTaskType.organize)!
            ]
        case .craftSuppliesDrawers, .artTable, .craftDisplayBoard, .supplyOrganizer:
            return [
                SubTaskTypeBox(PlayroomSubTaskType.declutter)!,
                SubTaskTypeBox(PlayroomSubTaskType.polish)!,
                SubTaskTypeBox(PlayroomSubTaskType.tableLinens)!,
                SubTaskTypeBox(PlayroomSubTaskType.clean)!,
                SubTaskTypeBox(PlayroomSubTaskType.accessories)!,
                SubTaskTypeBox(PlayroomSubTaskType.repairsAndUpdates)!,
                SubTaskTypeBox(PlayroomSubTaskType.organize)!
            ]
        }
    }
    static var SpaceType: [any SpaceType] {
        return PlayroomSpaceType.allCases.map { $0 as any SpaceType }
    }
}





