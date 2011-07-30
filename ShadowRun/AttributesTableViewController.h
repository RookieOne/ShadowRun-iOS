//
//  AttributesTableViewController.h
//  ShadowRun
//
//  Created by Kevin Lee on 7/30/11.
//  Copyright 2011 Pursuit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDCharacter.h"
#import "CDAttribute.h"

@interface AttributesTableViewController : UITableViewController {
    
}

@property (nonatomic, retain) CDCharacter *character;
@property (nonatomic, retain) NSMutableArray *attributes;

@end
