//
//  Entry.h
//  Journal-C
//
//  Created by Heli Bavishi on 11/30/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSString * bodyText;
@property (nonatomic, strong) NSDate * timestamp;

- (instancetype) initWithTitle:(NSString *)title
                 bodyText:(NSString *)bodyText
                     timestamp:(NSDate *)timestamp;

@end

NS_ASSUME_NONNULL_END
