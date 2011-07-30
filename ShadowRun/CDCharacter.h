//
//  CDCharacter.h
//  ShadowRun
//
//  Created by Jonathan Birkholz on 7/30/11.
//  Copyright (c) 2011 Pursuit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class CDAttribute;

@interface CDCharacter : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * alias;
@property (nonatomic, retain) CDAttribute * attributes;

@end
