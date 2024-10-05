//
//  OfficeSpaceType.swift
//  HappyOrganizedMe
//
//  Created by Deseret Baker on 9/15/24.
//

import Foundation


// MARK: OfficeSpaceType

enum OfficeSpaceType: String, Codable, CaseIterable, Identifiable, SpaceType {
    case deskTopSetup = "Desk Top Setup"
    // OfficeReference
    case officeReference = "Office Reference"
    case documentHandling = "Document Handling"
    // OfficeTechSpaceType
    case officeTech = "Office Tech"
    // OfficeStorageSpaceType
    case officeStorage = "Office Storage"
    case collaborationZone = "Collaboration Zone"
    case inspirationalZone = "Inspirational Zone"
    case breakZoneSpaces = "Break Zone Spaces"
    case taskLightingZoneSpaces = "Task Lighting Zone Spaces"
    
    var id: UUID { UUID() }
    var name: String { rawValue }
    var imageName: String { rawValue }
    
    var instructions: String {
        switch self {
        case .taskLightingZoneSpaces: return "Create a designated workspace for task lighting and relaxation. Use a whiteboard, whiteboard markers, or sticky notes to facilitate brainstorming and note-taking. Ensure a comfortable, ergonomic chair that supports long work or study sessions. Position your monitor at eye level to reduce neck strain. Consider using a monitor stand to free up desk space. A desk lamp or overhead light to ensure adequate lighting for focused work or study, reducing eye strain."
        case .breakZoneSpaces: return "Create a designated workspace for breaks and relaxation. Use a whiteboard, whiteboard markers, or sticky notes to facilitate brainstorming and note-taking. Ensure a comfortable, ergonomic chair that supports long work or study sessions. Position your monitor at eye level to reduce neck strain. Consider using a monitor stand to free up desk space. A desk lamp or overhead light to ensure adequate lighting for focused work or study, reducing eye strain."
        case .documentHandling: return "Create a designated workspace for document handling and organization. Use a whiteboard, whiteboard markers, or sticky notes to facilitate brainstorming and note-taking. Ensure a comfortable, ergonomic chair that supports long work or study sessions. Position your monitor at eye level to reduce neck strain. Consider using a monitor stand to free up desk space. A desk lamp or overhead light to ensure adequate lighting for focused work or study, reducing eye strain."
        case .inspirationalZone: return "Create a designated workspace for inspiration and creativity. Use a whiteboard, whiteboard markers, or sticky notes to facilitate brainstorming and note-taking. Ensure a comfortable, ergonomic chair that supports long work or study sessions. Position your monitor at eye level to reduce neck strain. Consider using a monitor stand to free up desk space. A desk lamp or overhead light to ensure adequate lighting for focused work or study, reducing eye strain."
        case .collaborationZone: return "Create a designated workspace for collaboration and communication. Use a whiteboard, whiteboard markers, or sticky notes to facilitate brainstorming and note-taking. Ensure a comfortable, ergonomic chair that supports long work or study sessions. Position your monitor at eye level to reduce neck strain. Consider using a monitor stand to free up desk space. A desk lamp or overhead light to ensure adequate lighting for focused work or study, reducing eye strain."
        case .deskTopSetup: return "The primary area for working, writing, or using a computer. Keep the surface organized with only essential items like a computer, notebook, or daily planner. Ensure a comfortable, ergonomic chair that supports long work or study sessions. It should be positioned for good posture and mobility. Position your monitor at eye level to reduce neck strain. Consider using a monitor stand to free up desk space. A desk lamp or overhead light to ensure adequate lighting for focused work or study, reducing eye strain."
        case .officeReference: return "Use bookshelves near the workstation for storing reference materials like books, manuals, or binders. Organize by subject or frequency of use to improve accessibility. Place vertical file holders or trays on the desk or nearby shelves to store important reference papers, such as reports, research, or documents you consult frequently. Install a small whiteboard or corkboard near the workstation to pin notes, reminders, or brainstorming ideas. This helps keep important information visible. Install a small whiteboard or corkboard near the workstation to pin notes, reminders, or brainstorming ideas. This helps keep important information visible."
        case .officeTech: return "Set up a dedicated space for charging devices such as laptops, phones, or tablets. Use cable management tools to keep cords organized and tangle-free. Organize tech gadgets like external hard drives, USBs, and headsets in a drawer or storage box to keep them easily accessible yet tidy. Include space for additional tech accessories like keyboards, mice, or printers, keeping them within reach but not cluttering the main workspace. Use cable ties or a cable box to keep all power cords and device chargers organized and out of sight, helping maintain a clean and functional work environment."
        case .officeStorage: return "Use desk drawers to store items like pens, notebooks, and office supplies. Drawer organizers can help separate different categories and prevent clutter. Dedicate a section of the desk storage for important documents, using folders or filing boxes to keep paperwork organized and easily accessible. Keep small office essentials like sticky notes, paperclips, and scissors in a designated drawer or desktop organizer. Allocate space for personal items like headphones, phone chargers, or small notebooks that are used regularly."
        }
    }
    var usageDescription: String {
        switch self {
        case .taskLightingZoneSpaces: return "A place to light up tasks."
        case .breakZoneSpaces: return "A place to take a break."
        case .documentHandling: return "A place to store important documents."
        case .inspirationalZone: return "A place to find inspiration."
        case .collaborationZone: return "My kind of meeting space."
        case .deskTopSetup: return "The desk surface is the main workspace for tasks like writing, typing, or using a computer. It should be kept clear of clutter, with only essential items like a laptop, notebook, or daily planner present. A clean and organized desk surface enhances focus and productivity by providing ample space for working efficiently. The chair is a key component of the workstation, providing ergonomic support for long periods of sitting. It should be adjustable to the user’s height and posture needs, promoting comfort and reducing strain on the back and neck. A well-chosen chair improves work efficiency and helps maintain proper posture during work or study sessions. The monitor setup involves positioning the screen at eye level to reduce neck strain and ensure comfortable viewing. A monitor stand or adjustable arm may be used to achieve the ideal height. Proper monitor placement helps prevent discomfort and improves workflow efficiency during computer-based tasks. Task lighting provides focused light for activities such as reading, writing, or computer work. A desk lamp or adjustable light source ensures adequate illumination, reducing eye strain and improving concentration. Good lighting enhances the overall functionality of the workstation, making it more comfortable for extended periods of work."
        case .officeReference: return "Bookshelves provide storage for reference books, manuals, or binders that are frequently consulted during work or study sessions. Organizing books by subject or importance ensures that the most relevant materials are easily accessible. Well-arranged bookshelves also contribute to the overall aesthetic of the workspace, adding both functionality and style. Document holders, such as vertical file holders or trays, keep important papers and reports organized and within easy reach. These holders are ideal for managing active projects or reference materials that are frequently needed, helping to reduce clutter on the desk surface and improve efficiency. A whiteboard or corkboard serves as a visual tool for brainstorming, planning, or pinning important notes and reminders. It can be mounted on the wall near the workstation to provide a space for jotting down ideas or tracking tasks. Using a whiteboard or corkboard helps keep important information visible and organized, improving productivity. The reference drawer is used to store frequently accessed materials like research papers, guides, or manuals. Organizing these items in a dedicated drawer ensures they are easy to find when needed, while keeping the desk surface clear. A well-organized reference drawer improves efficiency and helps maintain a clutter-free workspace."
        case .officeTech: return "The charging station is a designated area for charging electronic devices like phones, tablets, and laptops. It keeps all charging cables and power sources organized, ensuring that devices can be charged efficiently without cluttering the workspace. A well-organized charging station improves convenience and keeps the desk looking tidy. Gadget storage is used for organizing tech accessories like headphones, USB drives, external hard drives, and cables. Storing these items in a drawer or storage box keeps them easily accessible while maintaining a clean and organized desk. Proper gadget storage prevents tangling and loss of small tech items. The peripheral setup includes additional tech equipment like keyboards, mice, printers, and external monitors. These items should be arranged for easy access and optimal workflow while minimizing clutter on the desk. A well-organized peripheral setup ensures that all devices function smoothly and enhances productivity. Cable management keeps cords and cables neatly organized, preventing them from tangling or cluttering the workspace. Using cable ties, clips, or a cable box helps keep cords out of the way, reducing distractions and creating a cleaner, more professional-looking work area."
        case .officeStorage: return "Drawers offer convenient storage for office supplies, documents, and personal items. Organizing items by category within the drawers helps keep the workspace tidy and ensures that frequently used tools are easily accessible. Efficient drawer storage prevents clutter and improves productivity. The filing system is used to organize important papers, documents, and files in a systematic way, such as using folders, binders, or filing cabinets. Having a well-organized filing system makes it easier to find and retrieve documents when needed, helping to maintain an orderly and efficient workspace.Stationery storage provides a dedicated space for small office supplies like pens, pencils, sticky notes, and paperclips. These items can be stored in desk drawers, trays, or desktop organizers, ensuring they are easily accessible while keeping the desk surface clear. Proper stationery storage helps reduce clutter and improves workflow.Personal items such as phone chargers, glasses, headphones, or a water bottle can be stored in a designated area of the desk or in a nearby drawer. Keeping personal items organized and within reach makes the workspace more comfortable and functional, while also reducing distractions."
        }
    }
    var weight: Double { 2.0 }
    
    var progress: Double {
        return isCompleted ? 100.0 : 0.0
    }
    var isCompleted: Bool {
        switch self {
        case .breakZoneSpaces: return true
        case .documentHandling: return true
        case .inspirationalZone: return true
        case .collaborationZone: return true
        case .deskTopSetup: return true
        case .officeReference: return true
        case .officeTech: return true
        case .officeStorage: return true
        case .taskLightingZoneSpaces: return true
        }
    }
    var subTask: (any SubTaskType)? {
        return nil
    }
    var subTaskTypes: [SubTaskTypeBox] {
        switch self {
        case .breakZoneSpaces: return [ SubTaskTypeBox(OfficeSubTaskType.chillZone)!]
        case .documentHandling: return [ SubTaskTypeBox(OfficeSubTaskType.theMailAndStuff)! ]
        case .inspirationalZone: return [ SubTaskTypeBox(OfficeSubTaskType.inspirationSpace)! ]
        case .collaborationZone: return [ SubTaskTypeBox(OfficeSubTaskType.meetingZone)! ]
        case .deskTopSetup:
            return [
                SubTaskTypeBox(OfficeSubTaskType.setupDesk)!
            ]
        case .officeReference:
            return [
                SubTaskTypeBox(OfficeSubTaskType.officeBooks)!
            ]
        case .officeTech:
            return [
                SubTaskTypeBox(OfficeSubTaskType.officeTechnology)!
            ]
        case .officeStorage:
            return [
                SubTaskTypeBox(OfficeSubTaskType.storageInOffice)!
            ]
        case .taskLightingZoneSpaces:
            return [
                SubTaskTypeBox(OfficeSubTaskType.lightRight)!
            ]
        }
    }
    static var deskTopSetupZoneSpaces: [OfficeSpaceType] {
        return [.deskTopSetup]
    }
    static var officeReferenceZoneSpaces: [OfficeSpaceType] {
        return [.officeReference]
    }
    static var officeTechZoneSpaces: [OfficeSpaceType] {
        return [.officeTech]
    }
    static var officeStorageZoneSpaces: [OfficeSpaceType] {
        return [.officeStorage]
    }
    static var SpaceType: [any SpaceType] {
        return OfficeSpaceType.allCases.map { $0 as any SpaceType }
    }
}
