#import "UIView+BDKGeometry.h"
#import "BDKGeometry.h"

@implementation UIView (BDKGeometry)

- (void)setOrigin:(CGPoint)origin {
    self.frame = CGRectSetOrigin(self.frame, origin);
}

- (void)setXOrigin:(CGFloat)xOrigin {
    self.frame = CGRectSetXOrigin(self.frame, xOrigin);
}

- (void)setYOrigin:(CGFloat)yOrigin {
    self.frame = CGRectSetYOrigin(self.frame, yOrigin);
}

- (void)setSize:(CGSize)size {
    self.frame = CGRectSetSize(self.frame, size);
}

- (void)setWidth:(CGFloat)width {
    self.frame = CGRectSetWidth(self.frame, width);
}

- (void)setHeight:(CGFloat)height {
    self.frame = CGRectSetHeight(self.frame, height);
}

- (void)positionViewBelowView:(UIView *)view {
    [self positionViewBelowView:view padding:0];
}

- (void)positionViewBelowView:(UIView *)view padding:(CGFloat)padding {
    [self setYOrigin:CGRectGetMaxY(view.frame) + padding];
}

- (void)centerInView:(UIView *)view direction:(BDKGeometryCenter)direction {
    switch (direction) {
        case BDKGeometryCenterHorizontally:
            self.frame = CGRectCenterRectInRectHorizontally(self.frame, view.frame);
            break;
        case BDKGeometryCenterVertically:
            self.frame = CGRectCenterRectInRectVertically(self.frame, view.frame);
            break;
        case BDKGeometryCenterBoth:
            self.frame = CGRectCenterRectInRect(self.frame, view.frame);
            break;
        default:
            break;
    }
}

@end
