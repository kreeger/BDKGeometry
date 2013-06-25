#import "NSLayoutConstraint+BDKGeometry.h"

@implementation NSLayoutConstraint (BDKGeometry)

+ (NSArray *)constraintsAligningCenterOfView:(UIView *)view withSuperview:(UIView *)superview {
    return @[[self constraintAligningHorizontalCenterOfView:view withSuperview:superview],
             [self constraintAligningVerticalCenterOfView:view withSuperview:superview]];
}

+ (instancetype)constraintAligningHorizontalCenterOfView:(UIView *)view withSuperview:(UIView *)superview {
    return [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterX
                                        relatedBy:NSLayoutRelationEqual
                                           toItem:superview attribute:NSLayoutAttributeCenterX
                                       multiplier:1 constant:0];
}

+ (instancetype)constraintAligningVerticalCenterOfView:(UIView *)view withSuperview:(UIView *)superview {
    return [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterY
                                        relatedBy:NSLayoutRelationEqual
                                           toItem:superview attribute:NSLayoutAttributeCenterY
                                       multiplier:1 constant:0];
}

@end
