//
//  ShadowRunAppDelegate.h
//  ShadowRun
//
//  Created by Jonathan Birkholz on 7/30/11.
//  Copyright 2011 Pursuit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShadowRunAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

+ (ShadowRunAppDelegate *) getShadowRunAppDelegate;
+ (NSManagedObjectContext *) getManagedObjectContext;

@end
