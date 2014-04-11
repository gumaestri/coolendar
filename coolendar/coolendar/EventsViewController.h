//
//  EventsViewController.h
//  coolendar
//
//  Created by Gustavo Andrade Maestri on 4/8/14.
//  Copyright (c) 2014 Aerochimps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface EventsViewController : UIViewController<NSFetchedResultsControllerDelegate>{
    
    IBOutlet UITableView *eventsTableView;
    IBOutlet UITextField *eventTextField;
    IBOutlet UIButton *helpButton;
    IBOutlet UIBarButtonItem *logoutButton;
}
- (IBAction)logout:(id)sender;

- (void)createEvent:(NSString *)eventText;

@end
