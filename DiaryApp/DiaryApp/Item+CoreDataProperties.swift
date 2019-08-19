//
//  Item+CoreDataProperties.swift
//  DiaryApp
//
//  Created by Ehsan on 19/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var text: String?

}
