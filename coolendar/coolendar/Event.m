//
//  Event.m
//  coolendar
//
//  Created by Gustavo Andrade Maestri on 4/11/14.
//  Copyright (c) 2014 Aerochimps. All rights reserved.
//

#import "Event.h"
#import "SystemTag.h"
#import "Tag.h"


@implementation Event

@dynamic id_;
@dynamic account;
@dynamic type;
@dynamic description_;
@dynamic descriptionFormatted;
@dynamic registered;
@dynamic updated;
@dynamic dueGmtZero;
@dynamic dueDayGmtZero;
@dynamic dueMonthGmtZero;
@dynamic dueYearGmtZero;
@dynamic dueHour24GmtZero;
@dynamic dueHour12GmtZero;
@dynamic dueMinuteGmtZero;
@dynamic dueAmPmGmtZero;
@dynamic dueWeekDayGmtZero;
@dynamic dueTimezoned;
@dynamic dueDayTimezoned;
@dynamic dueMonthTimezoned;
@dynamic dueMonthNameTimezoned;
@dynamic dueYearTimezoned;
@dynamic dueHour24Timezoned;
@dynamic dueHour12Timezoned;
@dynamic dueMinuteTimezoned;
@dynamic dueAmPmTimezoned;
@dynamic dueWeekDayTimezoned;
@dynamic dueTimezonedFormattedDate;
@dynamic dueTimezonedFormattedTime;
@dynamic important;
@dynamic dueIsPast;
@dynamic dueIsFuture;
@dynamic dueIsToday;
@dynamic dueIsTomorrow;
@dynamic dueIsCurrentMonth;
@dynamic notified;
@dynamic tag;
@dynamic systemTag;

@end
