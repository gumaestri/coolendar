//
//  Event.h
//  coolendar
//
//  Created by Gustavo Andrade Maestri on 4/11/14.
//  Copyright (c) 2014 Aerochimps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class SystemTag, Tag;

@interface Event : NSManagedObject

@property (nonatomic, retain) NSString * id_;
@property (nonatomic, retain) NSString * account;
@property (nonatomic, retain) NSString * type;
@property (nonatomic, retain) NSString * description_;
@property (nonatomic, retain) NSString * descriptionFormatted;
@property (nonatomic, retain) NSDate * registered;
@property (nonatomic, retain) NSDate * updated;
@property (nonatomic, retain) NSDate * dueGmtZero;
@property (nonatomic, retain) NSString * dueDayGmtZero;
@property (nonatomic, retain) NSString * dueMonthGmtZero;
@property (nonatomic, retain) NSString * dueYearGmtZero;
@property (nonatomic, retain) NSString * dueHour24GmtZero;
@property (nonatomic, retain) NSString * dueHour12GmtZero;
@property (nonatomic, retain) NSString * dueMinuteGmtZero;
@property (nonatomic, retain) NSString * dueAmPmGmtZero;
@property (nonatomic, retain) NSString * dueWeekDayGmtZero;
@property (nonatomic, retain) NSString * dueTimezoned;
@property (nonatomic, retain) NSString * dueDayTimezoned;
@property (nonatomic, retain) NSString * dueMonthTimezoned;
@property (nonatomic, retain) NSString * dueMonthNameTimezoned;
@property (nonatomic, retain) NSString * dueYearTimezoned;
@property (nonatomic, retain) NSString * dueHour24Timezoned;
@property (nonatomic, retain) NSString * dueHour12Timezoned;
@property (nonatomic, retain) NSString * dueMinuteTimezoned;
@property (nonatomic, retain) NSString * dueAmPmTimezoned;
@property (nonatomic, retain) NSString * dueWeekDayTimezoned;
@property (nonatomic, retain) NSString * dueTimezonedFormattedDate;
@property (nonatomic, retain) NSString * dueTimezonedFormattedTime;
@property (nonatomic, retain) NSNumber * important;
@property (nonatomic, retain) NSNumber * dueIsPast;
@property (nonatomic, retain) NSNumber * dueIsFuture;
@property (nonatomic, retain) NSNumber * dueIsToday;
@property (nonatomic, retain) NSNumber * dueIsTomorrow;
@property (nonatomic, retain) NSNumber * dueIsCurrentMonth;
@property (nonatomic, retain) NSNumber * notified;
@property (nonatomic, retain) Tag *tag;
@property (nonatomic, retain) SystemTag *systemTag;

@end
