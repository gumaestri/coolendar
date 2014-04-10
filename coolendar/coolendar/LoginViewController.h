//
//  LoginViewController.h
//  coolendar
//
//  Created by Gustavo Andrade Maestri on 4/8/14.
//  Copyright (c) 2014 Aerochimps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GooglePlus/GooglePlus.h>

@class GPPSignInButton;

@interface LoginViewController : UIViewController<GPPSignInDelegate>


@property (retain, nonatomic) IBOutlet GPPSignInButton *signInButton;

@end
