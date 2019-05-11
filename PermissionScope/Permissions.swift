//
//  Permissions.swift
//  PermissionScope
//
//  Created by Nick O'Neill on 8/25/15.
//  Copyright © 2015 That Thing in Swift. All rights reserved.
//

import Foundation
import Photos
import UserNotifications
import AddressBook
import Contacts
import EventKit

/**
*  Protocol for permission configurations.
*/
@objc public protocol Permission {
    /// Permission type
    var type: PermissionType { get }
}

@objc public class NotificationsPermission: NSObject, Permission {
    public let type: PermissionType = .notifications
    public let notificationCategories: Set<UNNotificationCategory>?

    public init(notificationCategories: Set<UNNotificationCategory>? = nil) {
        self.notificationCategories = notificationCategories
    }
}

public typealias requestPermissionUnknownResult = () -> Void
public typealias requestPermissionShowAlert     = (PermissionType) -> Void

@objc public class CameraPermission: NSObject, Permission {
    public let type: PermissionType = .camera
}

@objc public class PhotosPermission: NSObject, Permission {
    public let type: PermissionType = .photos
}

@objc public class ContactsPermission: NSObject, Permission {
    public let type: PermissionType = .contacts
}

@objc public class EventsPermission: NSObject, Permission {
    public let type: PermissionType = .events
}

@objc public class RemindersPermission: NSObject, Permission {
    public let type: PermissionType = .reminders
}
