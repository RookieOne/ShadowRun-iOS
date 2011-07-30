//
//  SplitViewController.m
//  ShadowRun
//
//  Created by Kevin Lee on 7/30/11.
//  Copyright 2011 Pursuit. All rights reserved.
//

#import "SplitViewController_iPad.h"
#import "CreateCharacterViewController_iPad.h"
#import "CDCharacter.h"

@implementation SplitViewController_iPad

@synthesize leftViewController, rightViewController, swapCharacterButton;

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
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(swapCharacter:) name:kSwapCharacterNotification object:nil];
}

-(void) swapCharacter:(NSNotification *)notification
{
    CDCharacter *character = (CDCharacter *)[notification object];
    NSLog(@"swap character!! %@", character.name);
    [[NSNotificationCenter defaultCenter] postNotificationName:kCharacterSwappedNotification object:character];
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
	return YES;
}
- (IBAction)swapCharacter {
    NSLog(@"You want to swap the character");
    
    CreateCharacterViewController_iPad *createCharacterController = [[CreateCharacterViewController_iPad alloc] initWithNibName:@"CreateCharacterViewController_iPad" bundle:nil];
    createCharacterController.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentModalViewController:createCharacterController animated:YES];
    [createCharacterController release];
}

@end
