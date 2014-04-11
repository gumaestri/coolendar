//
//  SystemTag.h
//  coolendar
//
//  Created by Gustavo Andrade Maestri on 4/11/14.
//  Copyright (c) 2014 Aerochimps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Event;

@interface SystemTag : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) Event *event;

@end
