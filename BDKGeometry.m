/*
 *  BDKGeometry.m
 *  Written by Ben Kreeger.
 */

CGRect CGRectSetSize(CGRect rect, CGSize size) {
    rect.size = size;
    return rect;
}

CGRect CGRectAdjustSize(CGRect rect, CGSize size) { return CGRectSetSize(rect, size); }

CGRect CGRectSetOrigin(CGRect rect, CGPoint origin) {
    rect.origin = origin;
    return rect;
}

CGRect CGRectAdjustOrigin(CGRect rect, CGPoint origin) { return CGRectSetOrigin(rect, origin); }

CGRect CGRectSetWidth(CGRect rect, CGFloat width) {
    rect.size.width = width;
    return rect;
}

CGRect CGRectAdjustWidth(CGRect rect, CGFloat width) { return CGRectSetWidth(rect, width); }

CGRect CGRectSetHeight(CGRect rect, CGFloat height) {
    rect.size.height = height;
    return rect;
}

CGRect CGRectAdjustHeight(CGRect rect, CGFloat height) { return CGRectSetHeight(rect, height); }

CGRect CGRectSetYOrigin(CGRect rect, CGFloat yOrigin) {
    rect.origin.y = yOrigin;
    return rect;
}

CGRect CGRectAdjustYOrigin(CGRect rect, CGFloat yOrigin) { return CGRectSetYOrigin(rect, yOrigin); }

CGRect CGRectSetXOrigin(CGRect rect, CGFloat xOrigin) {
    rect.origin.x = xOrigin;
    return rect;
}

CGRect CGRectAdjustXOrigin(CGRect rect, CGFloat xOrigin) { return CGRectSetXOrigin(rect, xOrigin); }

CGRect CGRectCenterRectInRect(CGRect subRect, CGRect masterRect) {
    CGPoint origin = CGPointMake((masterRect.size.width - subRect.size.width) / 2.0f,
                                 (masterRect.size.height - subRect.size.height) / 2.0f);
    return CGRectIntegral(CGRectSetOrigin(subRect, origin));
}

CGRect CGRectCenterRectInRectHorizontally(CGRect subRect, CGRect masterRect) {
    CGPoint origin = CGPointMake((CGRectGetWidth(masterRect) - CGRectGetWidth(subRect)) / 2.0f, subRect.origin.y);
    return CGRectIntegral(CGRectSetOrigin(subRect, origin));
}

CGRect CGRectCenterRectInRectVertically(CGRect subRect, CGRect masterRect) {
    CGPoint origin = CGPointMake(subRect.origin.x, (CGRectGetHeight(masterRect) - CGRectGetHeight(subRect)) / 2.0f);
    return CGRectIntegral(CGRectSetOrigin(subRect, origin));
}

CGRect CGRectInsetByPercent(CGRect rect, CGFloat xPercent, CGFloat yPercent) {
    CGRect oldRect = rect;
    rect = CGRectSetSize(rect, CGSizeMake(rect.size.width * xPercent, rect.size.height * yPercent));
    return CGRectCenterRectInRect(rect, oldRect);
}

void CGRectIntegralSizeToFit(UIView *view) {
    [view sizeToFit];
    view.frame = CGRectIntegral(view.frame);
}

CGSize CGSizeByDoubling(CGSize size) {
    return CGSizeMake(size.width * 2.0f, size.height * 2.0f);
}

CGRect CGRectByDoublingSize(CGRect rect) {
    return CGRectSetSize(rect, CGSizeByDoubling(rect.size));
}
