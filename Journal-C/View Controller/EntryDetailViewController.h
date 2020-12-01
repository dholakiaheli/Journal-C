//
//  EntryDetailViewController.h
//  Journal-C
//
//  Created by Heli Bavishi on 11/30/20.
//

#import <UIKit/UIKit.h>
#import "Entry.h"
#import "EntryController.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController
@property (strong, nonatomic) Entry *entry;



@end

NS_ASSUME_NONNULL_END
