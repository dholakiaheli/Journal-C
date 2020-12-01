//
//  EntryController.h
//  Journal-C
//
//  Created by Heli Bavishi on 11/30/20.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

+ (instancetype)sharedInstance;

@property (nonatomic, strong) NSMutableArray * entries;

- (void)addEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText;
- (void)removeEntry:(Entry *)entry;
- (void)updateEntry:(Entry *)entry title:(NSString *)title bodyText:(NSString *)bodyText;


@end

NS_ASSUME_NONNULL_END
