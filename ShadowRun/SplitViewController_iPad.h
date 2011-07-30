//
//  SplitViewController.h
//  ShadowRun
//
//  Created by Kevin Lee on 7/30/11.
//  Copyright 2011 Pursuit. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SplitViewController_iPad : UIViewController {
    
}

@property (nonatomic, retain) IBOutlet UIViewController *leftViewController;
@property (nonatomic, retain) IBOutlet UIViewController *rightViewController;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *swapCharacterButton;
- (IBAction)swapCharacter;
@end
