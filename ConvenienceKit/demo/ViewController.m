//
//  ViewController.m
//  MultifunctionalButton
//
//  Created by 蓝泰致铭 on 16/4/12.
//  Copyright © 2016年 iWilsonStream. All rights reserved.
//

#import "ViewController.h"
#import "MLFButton.h"
#import "MLFLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configure];   //config
    [self buildButton]; //a button with action
    [self buildLabel];  //a label with action
}

- (void) configure {
    self.title = @"Convenience Utils";
}

- (void) buildButton {
    
    
    CGRect rect = CGRectMake(0, 0, 100, 50);
    UIColor * titleColor = [UIColor lightGrayColor];
    UIColor * backgroundColor = [UIColor clearColor];
    NSString * title = @"MLFButton";
    NSString * imageName = @"";
    
    MLFButton * button = [MLFButton buttonWithFrame:rect
                                              title:title
                                         titleColor:titleColor
                                    backgroundColor:backgroundColor
                                          imageName:imageName
                                              acton:^(UIButton *button) {
                                              
        NSLog(@"Hello, MLFButton");
    }];
    button.center = CGPointMake(self.view.frame.size.width / 2, 200);
    [self.view addSubview:button];
}

- (void) buildLabel {
    CGRect rect = CGRectMake(0, 0, 100, 50);
    UIColor * textColor = [UIColor lightGrayColor];
    UIColor * backgroundColor = [UIColor clearColor];
    NSString * text = @"MLFLabel";
    
    MLFLabel * label = [MLFLabel labelWithFrame:rect text:text textColor:textColor backgroundColor:backgroundColor alignment:MLFLabelAlignmentTypeCenter action:^(UILabel *label) {
        NSLog(@"Hello, MLFLabel");
    }];
    label.center = CGPointMake(self.view.frame.size.width / 2, 250);
    [self.view addSubview:label];
}

@end
