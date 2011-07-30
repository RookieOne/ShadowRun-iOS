//
//  CreateCharacterViewController_iPad.m
//  ShadowRun
//
//  Created by Jonathan Birkholz on 7/30/11.
//  Copyright 2011 Pursuit. All rights reserved.
//

#import "CreateCharacterViewController_iPad.h"
#import "ShadowRunAppDelegate.h"
#import "CDCharacter.h"
#import "CDAttribute.h"

@implementation CreateCharacterViewController_iPad

@synthesize nameTextField;

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

-(IBAction) createCharacter
{
    NSLog(@"create character");
    
    ShadowRunAppDelegate *appDelegate = (ShadowRunAppDelegate *)[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    CDCharacter *character = [NSEntityDescription
                                  insertNewObjectForEntityForName:@"Character" 
                                  inManagedObjectContext:context];
    character.name = self.nameTextField.text;
    
    NSMutableArray *attributeNames = [NSMutableArray arrayWithObjects:@"Body", @"Agility", @"Reaction", @"Strength", @"Charisma", @"Intuition", @"Logic", @"Willpower", @"Edge", @"Essence", @"Initiative", @"Magic/Resonance", nil];

    for (NSString *attributeName in attributeNames) {
        CDAttribute *attribute = [NSEntityDescription
                                  insertNewObjectForEntityForName:@"Attribute" 
                                  inManagedObjectContext:context];
        attribute.name = attributeName;
        attribute.value = [NSNumber numberWithInt:1];
        [character addAttributesObject:attribute];
    }
    
    NSError *error;
    if (![context save:&error]) {
        NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
    }
    
    [self dismissModalViewControllerAnimated:YES];
    
}

@end
