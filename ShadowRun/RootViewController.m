//
//  RootViewController.m
//  ShadowRun
//
//  Created by Jonathan Birkholz on 7/30/11.
//  Copyright 2011 Pursuit. All rights reserved.
//

#import "RootViewController.h"
#import "CreateCharacterViewController.h"
#import "CharactersViewController_iPhone.h"

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    NSLog(@"Root view did load");
    [super viewDidLoad];
    
//    CharactersViewController_iPhone *charactersController = [[CharactersViewController_iPhone alloc] initWithNibName:@"CharactersViewController_iPhone" bundle:nil];
//    
//    [self.view addSubview:charactersController.view];
//    [charactersController release];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


-(IBAction) launchModal
{
    NSLog(@"Launch Modal");
    CreateCharacterViewController *createCharacterController = [[CreateCharacterViewController alloc] initWithNibName:@"CreateCharacterViewController" bundle:nil];
    [self presentModalViewController:createCharacterController animated:YES];
    [createCharacterController release];
}


@end
