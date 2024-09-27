//
//  ProjectType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/1/24.
//

import Foundation

/// Represents different types of projects in the HappyOrganizedMe app.
enum ProjectType: String, Codable, CaseIterable, Identifiable, Displayable {
    
    
    case kitchen = "Kitchen"
    case diningRoom = "Dining Room"
    case livingRoom = "Living Room"
    case bedroom = "Bedroom"
    case bathroom = "Bathroom"
    case playroom = "Playroom"
    case office = "Office"
    case storage = "Storage"
    case garage = "Garage"
    case unknown = "Unknown"
    // Added the unknown case
    
    var id: UUID { UUID() }
    /// The display name for the project type.
    var name: String { rawValue }
    /// The image name associated with the project type.
    var imageName: String { rawValue }
    
    /// Instructions associated with the project type.
    /// 
    var instructions: String {
        switch self {
        case .kitchen:
            return "A kitchen is the heart of the home, where meals are prepared, ingredients come together, and cooking creativity flourishes. It’s a space for gathering, nourishment, and sharing, transforming simple ingredients into delicious dishes that bring people together."
        case .diningRoom:
            return "A dining room is a dedicated space where family and friends gather to share meals, celebrate special moments, and enjoy conversation. It’s a place that transforms everyday dining into memorable experiences, fostering connection and togetherness."
        case .livingRoom:
            return "A living room is a welcoming space where relaxation, entertainment, and socializing take center stage. It’s a versatile area for gathering with loved ones, enjoying leisure activities, and creating cherished memories in the heart of the home."
        case .bathroom:
            return "A bathroom is a sanctuary for personal care and rejuvenation, where you start and end your day. It’s a space for refreshing, unwinding, and practicing self-care, offering comfort and functionality in daily routines."
        case .bedroom:
            return "A bedroom is a personal retreat designed for rest, relaxation, and rejuvenation. It’s a sanctuary where you unwind, sleep, and find comfort, providing a peaceful space to recharge and reflect."
        case .storage:
            return "A storage room is a dedicated space for organizing and keeping belongings neatly tucked away. It provides order and accessibility, ensuring that items are stored efficiently and are easy to find when needed."
        case .office:
            return "An office is a focused workspace designed for productivity, organization, and creativity. It’s a place where tasks are accomplished, ideas take shape, and goals are pursued, offering a structured environment for work and study."
        case .garage:
            return "A garage is a versatile space used for parking vehicles, storing tools, and organizing outdoor equipment. It serves as a functional area for projects, maintenance, and keeping belongings secure and accessible."
        case .playroom:
            return "A playroom is a vibrant space designed for fun, creativity, and imagination. It’s a dedicated area where children can explore, play, and learn, offering a safe environment for endless adventures and activities."
        case .unknown:
            return "Unknown Project instructions"
        }
    }
    /// Usage description associated with the project type.
    var usageDescription: String {
        switch self {
        case .kitchen: 
            return "In a well-organized kitchen, dividing the space into functional “zones” can help make cooking, cleaning, and organizing more efficient. Here are some common kitchen zones and their purposes. These zones can be customized depending on your specific kitchen needs, but the key is organizing the kitchen in a way that reduces movement and maximizes efficiency."
        case .diningRoom: 
            return "In a dining room, creating zones can help improve the flow and functionality of the space, especially if it serves multiple purposes. Here are some common dining room zones. By organizing these zones in a way that complements how you use the dining room, you can create a space that is both functional and inviting."
        case .livingRoom: 
            return "A living room is a versatile space that serves various functions, and dividing it into different zones can make it more functional and comfortable. Here are some common zones in a living room. These zones can be customized depending on the size of the room and your lifestyle, making the living room a multipurpose and inviting space for various activities."
        case .bathroom: 
            return "In a bathroom, creating functional zones can help make the space more efficient and organized. Here are some common bathroom zones. These zones can be arranged based on the size and layout of the bathroom, making the space more functional and tailored to personal needs.​"
        case .bedroom: 
            return "In a bedroom, organizing zones can create a more functional and relaxing space. Here are some common bedroom zones. These zones can be arranged based on the size and layout of the bedroom, making the space more functional and tailored to personal needs. By organizing the bedroom into zones, you can make the space more efficient, comfortable, and tailored to your lifestyle needs."
        case .storage: 
            return "A storage zone in a home is an organized area dedicated to keeping items that are not in daily use but still need to be accessible. Here are some key types of storage zones within a home. These zones can be customized depending on the size of the home and the items that need to be stored.A well-organized storage zone ensures that items are easy to locate and prevents clutter from accumulating, improving both the functionality and aesthetics of your home."
        case .office: 
            return "A home office is a multifunctional space that benefits from being organized into specific zones to boost productivity and comfort. Here are common zones in a well-designed home officeEach zone can be customized to meet your personal work needs, whether you require a space for focused tasks, creativity, or meetings. By organizing the home office into these zones, you can create a space that supports your productivity and work-life balance."
        case .garage: 
            return "A well-organized garage can serve multiple purposes beyond just parking cars. Dividing the garage into functional zones helps maximize the space and keep everything in order. Here are some common zones in a garage. By dividing the garage into these zones, you can optimize the space and keep the garage functional for all its intended purposes, from parking cars to organizing tools, equipment, and household supplies."
        case .playroom: 
            return "Organizing a playroom into specific zones can help keep it functional, tidy, and enjoyable for children. Here are common zones that can make a playroom more organized and purposeful. By dividing a playroom into these zones, you can create a fun, organized space where children can engage in different types of play and activities while also learning to keep things tidy. It also helps children transition easily between various play and learning experiences."
        case .unknown: 
            return "Unknown Project"
        }
    }
    
    /// A weight value representing the priority or importance of the project type.
    var weight: Double {
        switch self {
        case .kitchen, .garage: return 5
        case .bathroom, .storage: return 4
        case .office, .playroom, .bedroom: return 3
        case .livingRoom: return 2
        case .diningRoom: return 1
        case .unknown: return 0
        }
    }
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .bathroom, .bedroom, .kitchen, .livingRoom, .diningRoom, .office, .playroom, .unknown, .garage, .storage: return true
        }
    }
    
    
    var roomTypes: [RoomTypeBox] {
        switch self {
        case .kitchen:
            return KitchenRoomType.allCases.map { RoomTypeBox($0)! }
        case .livingRoom:
            return LivingRoomType.allCases.map { RoomTypeBox($0)! }
        case .diningRoom:
            return DiningRoomType.allCases.map { RoomTypeBox($0)! }
        case .bathroom:
            return BathroomRoomType.allCases.map { RoomTypeBox($0)! }
        case .bedroom:
            return BedroomRoomType.allCases.map { RoomTypeBox($0)! }
        case .office:
            return OfficeRoomType.allCases.map { RoomTypeBox($0)! }
        case .playroom:
            return PlayroomRoomType.allCases.map { RoomTypeBox($0)! }
        case .storage:
            return StorageRoomType.allCases.map { RoomTypeBox($0)! }
        case .garage:
            return GarageRoomType.allCases.map { RoomTypeBox($0)! }
        default:
            return []
        }
    }
    static var allProjectTypes: [ProjectType] {
        return ProjectType.allCases.map { $0 as ProjectType}
    }
}
