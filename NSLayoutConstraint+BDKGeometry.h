#import <UIKit/UIKit.h>

/** A set of layout convenience methods for NSLayoutConstraint.
 */
@interface NSLayoutConstraint (BDKGeometry)

+ (NSArray *)constraintsAligningCenterOfView:(UIView *)view withSuperview:(UIView *)superview;
+ (instancetype)constraintAligningHorizontalCenterOfView:(UIView *)view withSuperview:(UIView *)superview;
+ (instancetype)constraintAligningVerticalCenterOfView:(UIView *)view withSuperview:(UIView *)superview;

@end
