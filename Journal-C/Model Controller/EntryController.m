//
//  EntryController.m
//  Journal-C
//
//  Created by Heli Bavishi on 11/30/20.
//

#import "EntryController.h"

@implementation EntryController

+ (EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
    });
    return sharedInstance;
}

-(instancetype) init
{
    self = [super init];
    if (self)
    {
        _entries = [NSMutableArray new];
    }
    return self;
}


- (void)addEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    Entry * entry = [[Entry alloc]initWithTitle:title bodyText:bodyText timestamp:[NSDate date]];
    [_entries addObject:entry];
}

- (void)removeEntry:(Entry *)entry
{
    NSInteger * index = [_entries indexOfObject:entry];
    [_entries removeObjectAtIndex:index];
}

- (void)updateEntry:(Entry *)entry title:(NSString *)title bodyText:(NSString *)bodyText
{
    entry.title = title;
    entry.bodyText = bodyText;
}


@end
