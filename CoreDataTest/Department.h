//
//  Department.h
//  CoreDataTest
//
//  Created by apple on 15-1-9.
//  Copyright (c) 2015年 xuzhanqian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class User;

@interface Department : NSManagedObject

@property (nonatomic, retain) User *departmentrelationship;

@end
