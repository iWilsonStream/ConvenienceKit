//
//  MLFLabel.m
//  MultifunctionalButton
//
//  Created by 蓝泰致铭 on 16/4/12.
//  Copyright © 2016年 iWilsonStream. All rights reserved.
//

#import "MLFLabel.h"

@implementation MLFLabel

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelOnclick:)]];
    }
    return self;
}

- (void)labelOnclick:(UITapGestureRecognizer *)sender
{
    if(self.action)
    {
        self.action(self);
    }
}

@end

@implementation UILabel(MLFLabel)

+ (MLFLabel *) labelWithFrame:(CGRect)frame
                         text:(NSString *)text
                    textColor:(UIColor *)textColor
              backgroundColor:(UIColor *)backgroundColor
                    alignment:(MLFLabelAlignmentType)alignmentType
                       action:(void (^)(UILabel *))action
{
    MLFLabel * label = [[MLFLabel alloc] initWithFrame:frame];
    label.backgroundColor = backgroundColor;
    label.textColor = textColor;
    label.text = text;
    switch (alignmentType) {
        case MLFLabelAlignmentTypeDefault:
            label.textAlignment = NSTextAlignmentLeft;
            break;
        case MLFLabelAlignmentTypeRight:
            label.textAlignment = NSTextAlignmentRight;
            break;
        case MLFLabelAlignmentTypeCenter:
            label.textAlignment = NSTextAlignmentCenter;
            break;
        default:
            break;
    }
    label.action = action;
    
    return label;
}

@end