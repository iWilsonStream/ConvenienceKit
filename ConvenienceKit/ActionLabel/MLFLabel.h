//
//  MLFLabel.h
//  MultifunctionalButton
//
//  Created by 蓝泰致铭 on 16/4/12.
//  Copyright © 2016年 iWilsonStream. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MLFLabel : UILabel

@property (nonatomic, copy) void (^action)(UILabel * label);

@end

typedef NS_ENUM(NSUInteger, MLFLabelAlignmentType) {
    MLFLabelAlignmentTypeDefault,
    MLFLabelAlignmentTypeCenter,
    MLFLabelAlignmentTypeRight,
};

@interface UILabel(MLFLabel)

+ (MLFLabel *)labelWithFrame:(CGRect)frame
                        text:(NSString *)text
                   textColor:(UIColor *)textColor
             backgroundColor:(UIColor *)backgroundColor
                   alignment:(MLFLabelAlignmentType)alignmentType
                      action:(void(^)(UILabel * label))action;

@end