//
//  Expense+CoreDataProperties.swift
//  Expenses
//
//  Created by Jessica Murphey on 7/24/20.
//  Copyright © 2020 Tech Innovator. All rights reserved.
//
//

import Foundation
import CoreData


extension Expense {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Expense> {
        return NSFetchRequest<Expense>(entityName: "Expense")
    }

    @NSManaged public var amount: Double
    @NSManaged public var name: String?
    @NSManaged public var rawDate: Date?

}
