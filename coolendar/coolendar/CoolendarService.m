//
//  CoolendarService.m/Users/gumaestri/Projetos/CERTI/digitro_intelletotum_mobile/intelletotum/intelletotum/ConnectionStateManager.m
//  coolendar
//
//  Created by Gustavo Andrade Maestri on 4/10/14.
//  Copyright (c) 2014 Aerochimps. All rights reserved.
//

#import "CoolendarService.h"
#import <GoogleOpenSource/GoogleOpenSource.h>
#import <GooglePlus/GooglePlus.h>

@implementation CoolendarService

static CoolendarService *sharedInstance = nil;

+ (CoolendarService *)sharedInstance{
    static dispatch_once_t pred = 0;
    dispatch_once(&pred, ^{
        sharedInstance = [[CoolendarService alloc] init];
    });
    return sharedInstance;
}

- (NSMutableURLRequest *)createRequest: (NSString *)method withURL: (NSString *) urlString{
    NSURL* url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    [request setHTTPMethod:method];
    GTMOAuth2Authentication *auth = [[GPPSignIn sharedInstance] authentication];
    [auth authorizeRequest:request];
    return request;
}

- (NSString *)getDates{
    
    NSHTTPURLResponse* response;
    NSError* error;
    NSMutableURLRequest *request = [self createRequest:@"GET" withURL:@"http://www.coolendar.com/api/calendar/clock"];
	
    NSData* loadData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
	
	return [[NSString alloc]
             initWithBytes:[loadData bytes] length:[loadData length] encoding:NSUTF8StringEncoding];
	
}

- (void)getEventsWithDelegate:(id)delegate{
    NSMutableURLRequest *request = [self createRequest:@"GET" withURL:@"http://www.coolendar.com/api/entry"];
    
	[NSURLConnection connectionWithRequest:request delegate:delegate];
}

- (void)addEvent:(NSString *)event withDelegate:(id)delegate{
     NSMutableURLRequest *request = [self createRequest:@"PUT" withURL:[[NSString stringWithFormat:@"http://www.coolendar.com/api/entry?s=%@", event] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    [NSURLConnection connectionWithRequest:request delegate:delegate];
}

- (void)removeEvent:(NSString *)event withDelegate:(id)delegate{
    
    NSMutableURLRequest *request = [self createRequest:@"DELETE" withURL:[[NSString stringWithFormat:@"http://www.coolendar.com/api/entry/%@", event] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    [NSURLConnection connectionWithRequest:request delegate:delegate];
}

- (void)toggleImportant:(NSString *)event withDelegate:(id)delegate{
    NSMutableURLRequest *request = [self createRequest:@"GET" withURL:[[NSString stringWithFormat:@"http://www.coolendar.com/star?id=%@", event] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    [NSURLConnection connectionWithRequest:request delegate:delegate];
}


@end
