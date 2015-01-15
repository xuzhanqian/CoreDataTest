//
//  User.h
//  CoreDataTest
//
//  Created by apple on 15-1-9.
//  Copyright (c) 2015年 xuzhanqian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Department;

@interface User : NSManagedObject

@property (nonatomic, retain) NSNumber * age;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * sex;
@property (nonatomic, retain) Department *userrelationship;

@end
