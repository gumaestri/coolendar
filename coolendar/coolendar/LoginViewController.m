//
//  LoginViewController.m
//  coolendar
//
//  Created by Gustavo Andrade Maestri on 4/8/14.
//  Copyright (c) 2014 Aerochimps. All rights reserved.
//

#import "LoginViewController.h"
#import <GoogleOpenSource/GoogleOpenSource.h>
#import <GooglePlus/GooglePlus.h>

@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize signInButton;

static NSString * const kClientId = @"738284627367-0seb2nk7q3s8bu7mgne3jbi47ahgskbo.apps.googleusercontent.com";

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
    GPPSignIn *signIn = [GPPSignIn sharedInstance];
    signIn.shouldFetchGooglePlusUser = YES;
    //signIn.shouldFetchGoogleUserEmail = YES;  // Uncomment to get the user's email
    
    // You previously set kClientId in the "Initialize the Google+ client" step
    signIn.clientID = kClientId;
    
    // Uncomment one of these two statements for the scope you chose in the previous step
//    signIn.scopes = @[ kGTLAuthScopePlusLogin ];  // "https://www.googleapis.com/auth/plus.login" scope
    signIn.scopes = @[ @"profile" ];            // "profile" scope
    
    // Optional: declare signIn.actions, see "app activities"
    signIn.delegate = self;
    
    [signIn trySilentAuthentication];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)finishedWithAuth: (GTMOAuth2Authentication *)auth
                   error: (NSError *) error {
    NSLog(@"Received error %@ and auth object %@",error, auth);
    if ([auth canAuthorize]) {
        NSLog(@"prepareForSegue Automatic Login");
        [self performSegueWithIdentifier:@"LoginSegue" sender:nil];
    }
}

- (void)presentSignInViewController:(UIViewController *)viewController {
    // This is an example of how you can implement it if your app is navigation-based.
    [[self navigationController] pushViewController:viewController animated:YES];
}

-(void)refreshInterfaceBasedOnSignIn {
    if ([[GPPSignIn sharedInstance] authentication]) {
        // The user is signed in.
        self.signInButton.hidden = YES;
        [self performSegueWithIdentifier:@"LoginSegue" sender:nil];
    } else {
        self.signInButton.hidden = NO;
        // Perform other actions here
    }
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
     NSLog(@"prepareForSegue %@",[segue destinationViewController]);
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([[GPPSignIn sharedInstance] authentication]) {
        return true;
    } else {
        return false;
    }
}


@end
