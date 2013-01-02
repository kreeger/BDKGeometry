CGRect CGRectAdjustSize(CGRect rect, CGSize size);
CGRect CGRectAdjustOrigin(CGRect rect, CGPoint origin);
CGRect CGRectAdjustWidth(CGRect rect, CGFloat width);
CGRect CGRectAdjustHeight(CGRect rect, CGFloat height);
CGRect CGRectAdjustYOrigin(CGRect rect, CGFloat yOrigin);
CGRect CGRectAdjustXOrigin(CGRect rect, CGFloat xOrigin);
CGRect CGRectCenterRectInRect(CGRect subRect, CGRect masterRect);
CGRect CGRectCenterRectInRectHorizontally(CGRect subRect, CGRect masterRect);
CGRect CGRectCenterRectInRectVertically(CGRect subRect, CGRect masterRect);
CGRect CGRectInsetByPercent(CGRect rect, CGFloat xPercent, CGFloat yPercent);
void CGRectIntegralSizeToFit(UIView *view);
CGSize CGSizeByDoubling(CGSize size);
CGRect CGRectByDoublingSize(CGRect rect);
