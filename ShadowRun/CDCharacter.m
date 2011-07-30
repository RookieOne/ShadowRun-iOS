//
//  CDCharacter.m
//  ShadowRun
//
//  Created by Jonathan Birkholz on 7/30/11.
//  Copyright (c) 2011 Pursuit. All rights reserved.
//

#import "CDCharacter.h"
#import "CDAttribute.h"


@implementation CDCharacter
@dynamic name;
@dynamic alias;
@dynamic attributes;

- (void)addAttributesObject:(CDAttribute *)value {    
    NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value count:1];
    [self willChangeValueForKey:@"attributes" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
    [[self primitiveValueForKey:@"attributes"] addObject:value];
    [self didChangeValueForKey:@"attributes" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
    [changedObjects release];
}

- (void)removeAttributesObject:(CDAttribute *)value {
    NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value count:1];
    [self willChangeValueForKey:@"attributes" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
    [[self primitiveValueForKey:@"attributes"] removeObject:value];
    [self didChangeValueForKey:@"attributes" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
    [changedObjects release];
}

- (void)addAttributes:(NSSet *)value {    
    [self willChangeValueForKey:@"attributes" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value];
    [[self primitiveValueForKey:@"attributes"] unionSet:value];
    [self didChangeValueForKey:@"attributes" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value];
}

- (void)removeAttributes:(NSSet *)value {
    [self willChangeValueForKey:@"attributes" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value];
    [[self primitiveValueForKey:@"attributes"] minusSet:value];
    [self didChangeValueForKey:@"attributes" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value];
}


@end
