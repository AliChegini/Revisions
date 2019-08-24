//
//  Item+CoreDataProperties.swift
//  TodoList
//
//  Created by Ehsan on 23/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        let request = NSFetchRequest<Item>(entityName: "Item")
        request.sortDescriptors = [NSSortDescriptor(key: "text", ascending: true)]
        return request
    }

    @NSManaged public var isCompleted: Bool
    @NSManaged public var text: String?

}
