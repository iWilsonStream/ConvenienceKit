//
//  MLFButton.h
//  MultifunctionalButton
//
//  Created by 蓝泰致铭 on 16/4/12.
//  Copyright © 2016年 iWilsonStream. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MLFButton : UIButton

@property (nonatomic, copy) void (^OnClicked)(UIButton * button);

@end


@interface UIButton(MLFButton)

+ (MLFButton *) buttonWithFrame:(CGRect)frame
                         title:(NSString *)title
                    titleColor:(UIColor *)titleColor
               backgroundColor:(UIColor *)backgroundColor
                     imageName:(NSString *)imageName
                         acton:(void(^)(UIButton * button))action;

@end