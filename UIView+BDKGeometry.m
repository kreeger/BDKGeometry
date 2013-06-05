#import "UIView+BDKGeometry.h"
#import "BDKGeometry.h"

@implementation UIView (BDKGeometry)

@dynamic frameOrigin, frameXOrigin, frameYOrigin, frameSize, frameWidth, frameHeight;
@dynamic boundsOrigin, boundsXOrigin, boundsYOrigin, boundsSize, boundsWidth, boundsHeight;

#pragma mark - Frame methods

- (void)setFrameOrigin:(CGPoint)frameOrigin {
    self.frame = CGRectSetOrigin(self.frame, frameOrigin);
}

- (CGPoint)frameOrigin {
    return self.frame.origin;
}

- (void)setFrameXOrigin:(CGFloat)frameXOrigin {
    self.frame = CGRectSetXOrigin(self.frame, frameXOrigin);
}

- (CGFloat)frameXOrigin {
    return self.frame.origin.x;
}

- (void)setFrameYOrigin:(CGFloat)frameYOrigin {
    self.frame = CGRectSetYOrigin(self.frame, frameYOrigin);
}

- (CGFloat)frameYOrigin {
    return self.frame.origin.y;
}

- (void)setFrameSize:(CGSize)frameSize {
    self.frame = CGRectSetSize(self.frame, frameSize);
}

- (CGSize)frameSize {
    return self.frame.size;
}

- (void)setFrameWidth:(CGFloat)frameWidth {
    self.frame = CGRectSetWidth(self.frame, frameWidth);
}

- (CGFloat)frameWidth {
    return self.frame.size.width;
}

- (void)setFrameHeight:(CGFloat)frameHeight {
    self.frame = CGRectSetHeight(self.frame, frameHeight);
}

- (CGFloat)frameHeight {
    return self.frame.size.height;
}

#pragma mark - Bounds methods

- (void)setBoundsOrigin:(CGPoint)boundsOrigin {
    self.bounds = CGRectSetOrigin(self.bounds, boundsOrigin);
}

- (CGPoint)boundsOrigin {
    return self.bounds.origin;
}

- (void)setBoundsXOrigin:(CGFloat)boundsXOrigin {
    self.bounds = CGRectSetXOrigin(self.bounds, boundsXOrigin);
}

- (CGFloat)boundsXOrigin {
    return self.bounds.origin.x;
}

- (void)setBoundsYOrigin:(CGFloat)boundsYOrigin {
    self.bounds = CGRectSetYOrigin(self.bounds, boundsYOrigin);
}

- (CGFloat)boundsYOrigin {
    return self.bounds.origin.y;
}

- (void)setBoundsSize:(CGSize)boundsSize {
    self.bounds = CGRectSetSize(self.bounds, boundsSize);
}

- (CGSize)boundsSize {
    return self.bounds.size;
}

- (void)setBoundsWidth:(CGFloat)boundsWidth {
    self.bounds = CGRectSetWidth(self.bounds, boundsWidth);
}

- (CGFloat)boundsWidth {
    return self.bounds.size.width;
}

- (void)setBoundsHeight:(CGFloat)boundsHeight {
    self.bounds = CGRectSetHeight(self.bounds, boundsHeight);
}

- (CGFloat)boundsHeight {
    return self.bounds.size.height;
}

- (void)positionViewBelowView:(UIView *)view {
    [self positionViewBelowView:view padding:0];
}

- (void)positionViewBelowView:(UIView *)view padding:(CGFloat)padding {
    self.frameYOrigin = CGRectGetMaxY(view.frame) + padding;
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

#pragma mark - Deprecated methods

- (void)setOrigin:(CGPoint)origin { self.frameOrigin = origin; }
- (void)setXOrigin:(CGFloat)xOrigin { self.frameXOrigin = xOrigin; }
- (void)setYOrigin:(CGFloat)yOrigin { self.frameYOrigin = yOrigin; }
- (void)setSize:(CGSize)size { self.frameSize = size; }
- (void)setWidth:(CGFloat)width { self.frameWidth = width; }
- (void)setHeight:(CGFloat)height { self.frameHeight = height; }

@end
