/*
 *  BDKGeometry.m
 *  Written by Ben Kreeger.
 */

CGRect CGRectAdjustSize(CGRect rect, CGSize size) {
    rect.size = size;
    return rect;
}

CGRect CGRectAdjustOrigin(CGRect rect, CGPoint origin) {
    rect.origin = origin;
    return rect;
}

CGRect CGRectAdjustWidth(CGRect rect, CGFloat width) {
    rect.size.width = width;
    return rect;
}

CGRect CGRectAdjustHeight(CGRect rect, CGFloat height) {
    rect.size.height = height;
    return rect;
}

CGRect CGRectAdjustYOrigin(CGRect rect, CGFloat yOrigin) {
    rect.origin.y = yOrigin;
    return rect;
}

CGRect CGRectAdjustXOrigin(CGRect rect, CGFloat xOrigin) {
    rect.origin.x = xOrigin;
    return rect;
}

CGRect CGRectCenterRectInRect(CGRect subRect, CGRect masterRect) {
    CGPoint origin = CGPointMake((masterRect.size.width - subRect.size.width) / 2.0f,
                                 (masterRect.size.height - subRect.size.height) / 2.0f);
    return CGRectIntegral(CGRectAdjustOrigin(subRect, origin));
}

CGRect CGRectCenterRectInRectHorizontally(CGRect subRect, CGRect masterRect) {
    CGPoint origin = CGPointMake((masterRect.size.width - subRect.size.width) / 2.0f, subRect.origin.y);
    return CGRectIntegral(CGRectAdjustOrigin(subRect, origin));
}

CGRect CGRectCenterRectInRectVertically(CGRect subRect, CGRect masterRect) {
    CGPoint origin = CGPointMake(subRect.origin.x, (masterRect.size.height - subRect.size.height) / 2.0f);
    return CGRectIntegral(CGRectAdjustOrigin(subRect, origin));
}

CGRect CGRectInsetByPercent(CGRect rect, CGFloat xPercent, CGFloat yPercent) {
    return CGRectIntegral(CGRectInset(rect, rect.size.width * xPercent, rect.size.height * yPercent));
}

void CGRectIntegralSizeToFit(UIView *view) {
    [view sizeToFit]; 
    view.frame = CGRectIntegral(view.frame);
}

CGSize CGSizeByDoubling(CGSize size) {
    return CGSizeMake(size.width * 2.0f, size.height * 2.0f); 
}

CGRect CGRectByDoublingSize(CGRect rect) {
    return CGRectAdjustSize(rect, CGSizeByDoubling(rect.size));
}
