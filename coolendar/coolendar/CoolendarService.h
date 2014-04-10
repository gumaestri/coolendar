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

- (void) getEvents:(NSMutableDictionary *) token withDelegate:(id)delegate;

- (void) addEvent:(NSMutableDictionary *) token withString:(NSString *)event withDelegate:(id)delegate;

- (void) removeEvent:(NSMutableDictionary *) token withString: (NSString *) event withDelegate:(id)delegate;
- (void) toggleImportant:(NSMutableDictionary *)token withString:(NSString *)event withDelegate:(id)delegate;

@end
