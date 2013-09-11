//
//  DUViewController.m
//  Oxwall Messenger
//
//  Created by Thomas Ochman on 2013-09-11.
//  Copyright (c) 2013 Underplot ltd. All rights reserved.
//

#import "DUViewController.h"

@interface DUViewController ()

@end

@implementation DUViewController
@synthesize username;
@synthesize realname;
@synthesize sex;
@synthesize membersince;
@synthesize presentation;
@synthesize avatarURL;
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
    [self loadStandardUser];
    [self setLProfileLabels];
    // Title
    self.title = realname;
    [self.navigationItem setHidesBackButton:YES];
    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadStandardUser {
    NSUserDefaults *standardUserDefaults  = [NSUserDefaults standardUserDefaults];
    
    username = [standardUserDefaults stringForKey:@"username"];
    realname = [standardUserDefaults stringForKey:@"realname"];
    sex = [standardUserDefaults stringForKey:@"sex"];
    membersince = [standardUserDefaults stringForKey:@"membersince"];
    presentation = [standardUserDefaults stringForKey:@"presentation"];
    avatarURL = [standardUserDefaults URLForKey:@"avatarURL"];
    
    //NSURL *imageUrlString = avatarURL;
    //NSData *imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:imageUrlString]];
    //avatar.image = [[UIImage alloc] initWithData:imageData];
   
    
    
  
    
}

-(void)setLProfileLabels
{

    usernameLabel.text = realname;
    sexLabel.text = sex;
    membersinceLabel.text = membersince;
    presentationTextview.text = presentation;
    avatar.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:avatarURL]];

}

- (IBAction)checkConversations:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Not implemented" message:@"Got to get that code..." delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alert show];
}

- (IBAction)logOut:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"start" sender:self];
}
@end