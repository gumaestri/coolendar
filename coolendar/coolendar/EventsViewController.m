//
//  EventsViewController.m
//  coolendar
//
//  Created by Gustavo Andrade Maestri on 4/8/14.
//  Copyright (c) 2014 Aerochimps. All rights reserved.
//

#import "EventsViewController.h"
#import <GooglePlus/GooglePlus.h>

@interface EventsViewController ()

@end

@implementation EventsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)logout:(id)sender {
    [[GPPSignIn sharedInstance] signOut];
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
