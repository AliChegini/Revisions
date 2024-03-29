//
//  CoreDataStack.swift
//  DiaryApp
//
//  Created by Ehsan on 18/08/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation
import CoreData


class CoreDataStack {
    
    private lazy var persistentContainer: NSPersistentContainer = {
       let container = NSPersistentContainer(name: "DiaryApp")
        container.loadPersistentStores() { (storeDescription, error) in
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




extension NSManagedObjectContext {
    func saveChanges() {
        if self.hasChanges {
            do {
                try save()
            } catch {
                print("Could not save data - \(error)")
            }
        }
    }
}



