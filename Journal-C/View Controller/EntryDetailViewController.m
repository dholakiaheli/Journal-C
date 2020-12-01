//
//  EntryDetailViewController.m
//  Journal-C
//
//  Created by Heli Bavishi on 11/30/20.
//

#import "EntryDetailViewController.h"

@interface EntryDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateWith];
}

- (IBAction)saveButtonPressed:(UIBarButtonItem *)sender{
    if (_entry)
    {
        [EntryController.sharedInstance updateEntry:_entry title:_titleTextField.text bodyText:_bodyTextView.text];
    }
    else
    {
        [EntryController.sharedInstance addEntryWithTitle:_titleTextField.text bodyText:_bodyTextView.text];

    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)clearButtonTapped:(UIButton *)sender
{
    _titleTextField.text = @"";
    _bodyTextView.text = @"";
}

-(void)updateWith
{
    if (!self.entry) return;
    self.titleTextField.text = self.entry.title;
    self.bodyTextView.text = self.entry.bodyText;
}

@end
