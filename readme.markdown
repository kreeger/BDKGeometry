# BDKGeometry

A set of helper functions I've been using in various XCode projects, abstracted for great good!

## Getting started

Really all you should do is check out [the header file][0], but here's a list of the methods available.

``` objective-c
CGRect CGRectSetSize(CGRect rect, CGSize size);
CGRect CGRectSetOrigin(CGRect rect, CGPoint origin);
CGRect CGRectSetWidth(CGRect rect, CGFloat width);
CGRect CGRectSetHeight(CGRect rect, CGFloat height);
CGRect CGRectSetYOrigin(CGRect rect, CGFloat yOrigin);
CGRect CGRectSetXOrigin(CGRect rect, CGFloat xOrigin);
CGRect CGRectCenterRectInRect(CGRect subRect, CGRect masterRect);
CGRect CGRectCenterRectInRectHorizontally(CGRect subRect, CGRect masterRect);
CGRect CGRectCenterRectInRectVertically(CGRect subRect, CGRect masterRect);
CGRect CGRectInsetByPercent(CGRect rect, CGFloat xPercent, CGFloat yPercent);
void CGRectIntegralSizeToFit(UIView *view);
CGSize CGSizeByDoubling(CGSize size);
CGRect CGRectByDoublingSize(CGRect rect);
```

## Installation

Use [CocoaPods][1], you dingus!

``` ruby
# Podfile
platform :ios, '5.0'

pod 'BDKGeometry', '~> 1.1.0'
```

[0]:     https://github.com/kreeger/BDKGeometry/blob/master/BDKGeometry.h
