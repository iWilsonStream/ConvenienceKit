//
//  MLFButton.m
//  MultifunctionalButton
//
//  Created by 蓝泰致铭 on 16/4/12.
//  Copyright © 2016年 iWilsonStream. All rights reserved.
//

#import "MLFButton.h"

@implementation MLFButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addTarget:self action:@selector(buttonOnClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)buttonOnClicked:(UIButton *)sender {
    if(self.OnClicked) {
        self.OnClicked(self);
    }
}

@end

@implementation UIButton(MLFButton)

+ (MLFButton *) buttonWithFrame:(CGRect)frame
                         title:(NSString *)title
                    titleColor:(UIColor  *)titleColor
               backgroundColor:(UIColor  *)backgroundColor
                     imageName:(NSString *)imageName
                         acton:(void (^)(UIButton *))action {
    
    MLFButton * button = [MLFButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setBackgroundColor:backgroundColor];
    [button setTitle:title forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    button.OnClicked = action;
    
    return button;
}

@end
