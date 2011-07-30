//
//  CDAttribute.h
//  ShadowRun
//
//  Created by Jonathan Birkholz on 7/30/11.
//  Copyright (c) 2011 Pursuit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class CDCharacter;

@interface CDAttribute : NSManagedObject {
@private
}
@property (nonatomic, retain) NSNumber * value;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) CDCharacter * character;

@end
