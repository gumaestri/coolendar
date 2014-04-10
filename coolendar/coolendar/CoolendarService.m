//
//  CoolendarService.m/Users/gumaestri/Projetos/CERTI/digitro_intelletotum_mobile/intelletotum/intelletotum/ConnectionStateManager.m
//  coolendar
//
//  Created by Gustavo Andrade Maestri on 4/10/14.
//  Copyright (c) 2014 Aerochimps. All rights reserved.
//

#import "CoolendarService.h"
#import <GooglePlus/GooglePlus.h>

@implementation CoolendarService

+ (CoolendarService *)sharedInstance{
    static dispatch_once_t pred = 0;
    static CoolendarService *sharedInstance = nil;
    dispatch_once(&pred, ^{
        sharedInstance = [[CoolendarService alloc] init];
    });
    return sharedInstance;
}

- (NSString *)getDates{
    NSURL* url = [NSURL URLWithString:@"http://www.coolendar.com/api/calendar/clock"];
    
    NSHTTPURLResponse* response;
    NSError* error;
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
	
    [request setHTTPMethod:@"GET"];
    
//    GTMOAuth2Authentication *auth = [[GPPSignIn sharedInstance] authentication];
//    [auth authorizeRequest:request];
	
    NSData* loadData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
	
	return [[NSString alloc]
             initWithBytes:[loadData bytes] length:[loadData length] encoding:NSUTF8StringEncoding];
	
}

- (void)getEvents:(NSMutableDictionary *)token withDelegate:(id)delegate{
    
}

- (void)addEvent:(NSMutableDictionary *)token withString:(NSString *)event withDelegate:(id)delegate{
    
}

- (void)removeEvent:(NSMutableDictionary *)token withString:(NSString *)event withDelegate:(id)delegate{
    
}

- (void)toggleImportant:(NSMutableDictionary *)token withString:(NSString *)event withDelegate:(id)delegate{
    
}


@end
