//
//  CharactersViewController_iPhone.h
//  ShadowRun
//
//  Created by Jonathan Birkholz on 7/30/11.
//  Copyright 2011 Pursuit. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CharactersViewController_iPhone : UITableViewController {
    
}

@property (nonatomic, retain) NSArray *characters;
@property (nonatomic, retain) NSManagedObjectContext *context;

@end
