//
//  CoolendarService.h
//  coolendar
//
//  Created by Gustavo Andrade Maestri on 4/10/14.
//  Copyright (c) 2014 Aerochimps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoolendarService : NSObject

+ (CoolendarService *)sharedInstance;

- (NSString *) getDates;

- (void) getEventsWithDelegate:(id)delegate;

- (void) addEvent:(NSString *)event withDelegate:(id)delegate;

- (void) removeEvent: (NSString *) event withDelegate:(id)delegate;
- (void) toggleImportant:(NSString *)event withDelegate:(id)delegate;

@end
