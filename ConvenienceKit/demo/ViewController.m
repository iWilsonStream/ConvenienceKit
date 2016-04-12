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
#import "WPHotspotLabel.h"
#import "NSString+WPAttributedMarkup.h"
#import <CoreText/CoreText.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configure];   //config
    [self buildButton]; //a button with action
    [self buildLabel];  //a label with action
    [self testStringReplaceFunction];
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

- (void) testStringReplaceFunction {
    NSDictionary * style1 = @{NSFontAttributeName:[UIFont fontWithName:@"HelveticaNeue" size:18],
                              /*@"bold":[UIFont fontWithName:@"HelveticaNeue-Bold" size:10.0f],*/
                              NSForegroundColorAttributeName:[UIColor lightGrayColor]};
    
//    NSArray * bodys = @[[UIFont fontWithName:@"HelveticaNeue-Bold" size:18.0f],[UIColor darkGrayColor]];
//    NSArray * us    = @[[UIColor blueColor]/*,@{NSUnderlineStyleAttributeName : @(kCTUnderlineStyleSingle | NSUnderlinePatternSolid)}*/];
    
//    NSDictionary * style2 = @{@"body":bodys,@"u":us,@"thumb":[UIImage imageNamed:@"thumbIcon"]};
    
//    NSDictionary * style3 = @{}
    
    WPHotspotLabel * label1 = [[WPHotspotLabel alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];
    label1.center = CGPointMake(self.view.frame.size.width / 2, 300);
    label1.textAlignment = NSTextAlignmentCenter;
    label1.attributedText = [@"AttributedBoldRedText" attributedStringWithStyleBook:style1];
    [self.view addSubview:label1];
}

@end
