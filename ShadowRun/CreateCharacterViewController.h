//
//  CreateCharacterViewController.h
//  ShadowRun
//
//  Created by Jonathan Birkholz on 7/30/11.
//  Copyright 2011 Pursuit. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CreateCharacterViewController : UIViewController {
    
}

@property (nonatomic, retain) IBOutlet UITextField *nameTextField;

-(IBAction) createCharacter;

@end
