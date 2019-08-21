//
//  CoreDataStack.swift
//  TodoList
//
//  Created by Ehsan on 21/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    private lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "TodoList")
        container.loadPersistentStores() { storeDescription, error in
            if let error = error as NSError? {
                print(error)
            }
        }
        return container
    }()
    
    
    lazy var managedObjectContext: NSManagedObjectContext = {
       let container = self.persistentContainer
        return container.viewContext
    }()
    
}
