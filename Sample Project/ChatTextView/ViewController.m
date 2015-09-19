//
//  ViewController.m
//  ChatTextView
//
//  Created by Prateek Grover on 06/08/15.
//  Copyright (c) 2015 Prateek Grover. All rights reserved.
//

#import "ViewController.h"
#import "ContentView.h"

@interface ViewController () 

@property (weak, nonatomic) IBOutlet ContentView *contentView;
@property (weak, nonatomic) IBOutlet UITextView *chatTextView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *chatTextViewHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentViewHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentViewBottomConstraint;
@property (weak, nonatomic) IBOutlet UIView *upperView;
@property (strong, nonatomic) ContentView *handler;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.handler = [[ContentView alloc] initWithTextView:self.chatTextView ChatTextViewHeightConstraint:self.chatTextViewHeightConstraint contentView:self.contentView ContentViewHeightConstraint:self.contentViewHeightConstraint andContentViewBottomConstraint:self.contentViewBottomConstraint];
    
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    
    [self.upperView addGestureRecognizer:gestureRecognizer];

    
}

- (void) dismissKeyboard
{
    [self.chatTextView resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
