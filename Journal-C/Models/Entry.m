//
//  Entry.m
//  Journal-C
//
//  Created by Heli Bavishi on 11/30/20.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText timestamp:(NSDate *)timestamp
{
    self = [super init];
    if (self)
    {
        _title = title;
        _bodyText = bodyText;
        _timestamp = timestamp;
    }
    return self;
}

@end
