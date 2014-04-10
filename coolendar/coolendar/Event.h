//
//  Event.h
//  coolendar
//
//  Created by Gustavo Andrade Maestri on 4/10/14.
//  Copyright (c) 2014 Aerochimps. All rights reserved.
//{"":false,"":true,"":false,"":true,"":true,"":false,,"tags":[]}

#import <Foundation/Foundation.h>

@interface Event : NSObject


@property (nonatomic,strong) NSString* id_;
@property (nonatomic,strong) NSString* account;
@property (nonatomic,strong) NSString* type;
@property (nonatomic,strong) NSString* description;
@property (nonatomic,strong) NSString* descriptionFormatted;

@property (nonatomic,strong) NSString* registered;
@property (nonatomic,strong) NSString* updated;
@property (nonatomic,strong) NSString* dueGmtZero;
@property (nonatomic,strong) NSString* dueDayGmtZero;
@property (nonatomic,strong) NSString* dueMonthGmtZero;
@property (nonatomic,strong) NSString* dueYearGmtZero;
@property (nonatomic,strong) NSString* dueHour24GmtZero;
@property (nonatomic,strong) NSString* dueHour12GmtZero;
@property (nonatomic,strong) NSString* dueMinuteGmtZero;
@property (nonatomic,strong) NSString* dueAmPmGmtZero;
@property (nonatomic,strong) NSString* dueWeekDayGmtZero;
@property (nonatomic,strong) NSString* dueTimezoned;
@property (nonatomic,strong) NSString* dueDayTimezoned;
@property (nonatomic,strong) NSString* dueMonthTimezoned;
@property (nonatomic,strong) NSString* dueMonthNameTimezoned;
@property (nonatomic,strong) NSString* dueYearTimezoned;
@property (nonatomic,strong) NSString* dueHour24Timezoned;
@property (nonatomic,strong) NSString* dueHour12Timezoned;
@property (nonatomic,strong) NSString* dueMinuteTimezoned;
@property (nonatomic,strong) NSString* dueAmPmTimezoned;
@property (nonatomic,strong) NSString* dueWeekDayTimezoned;
@property (nonatomic,strong) NSString* dueTimezonedFormattedDate;
@property (nonatomic,strong) NSString* dueTimezonedFormattedTime;

@property (nonatomic,strong) NSArray* systemTags;
@property (nonatomic,strong) NSArray* tags;

@property (nonatomic) BOOL important;
@property (nonatomic) BOOL dueIsPast;
@property (nonatomic) BOOL dueIsFuture;
@property (nonatomic) BOOL dueIsToday;
@property (nonatomic) BOOL dueIsTomorrow;
@property (nonatomic) BOOL dueIsCurrentMonth;
@property (nonatomic) BOOL notified;

@end
