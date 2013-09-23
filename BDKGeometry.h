/*
 *  BDKGeometry.h
 *  Written by Ben Kreeger.
 */

#import <UIKit/UIKit.h>
#import "UIView+BDKGeometry.h"

/** Gives a rect a new size.
 *  @param rect the rect on which to operate.
 *  @param size a new CGSize to assign to `rect`.
 *  @return a new rect with the given size.
 */
CGRect CGRectSetSize(CGRect rect, CGSize size);
CGRect CGRectAdjustSize(CGRect rect, CGSize size) __attribute__((deprecated));

/** Gives a rect a new origin.
 *  @param rect the rect on which to operate.
 *  @param origin a new origin CGPoint to assign to `rect`.
 *  @return a new rect with the given origin.
 */
CGRect CGRectSetOrigin(CGRect rect, CGPoint origin);
CGRect CGRectAdjustOrigin(CGRect rect, CGPoint origin) __attribute__((deprecated));

/** Gives a rect's size a new width.
 *  @param rect the rect on which to operate.
 *  @param width a new width CGFloat to assign to `rect`.
 *  @return a new rect with the given width.
 */
CGRect CGRectSetWidth(CGRect rect, CGFloat width);
CGRect CGRectAdjustWidth(CGRect rect, CGFloat width) __attribute__((deprecated));

/** Gives a rect a new height.
 *  @param rect the rect on which to operate.
 *  @param size a new height CGFloat to assign to `rect`.
 *  @return a new rect with the given height.
 */
CGRect CGRectSetHeight(CGRect rect, CGFloat height);
CGRect CGRectAdjustHeight(CGRect rect, CGFloat height) __attribute__((deprecated));

/** Gives a rect a new y-origin.
 *  @param rect the rect on which to operate.
 *  @param size a new y-origin CGFloat to assign to `rect`.
 *  @return a new rect with the given y-origin.
 */
CGRect CGRectSetYOrigin(CGRect rect, CGFloat yOrigin);
CGRect CGRectAdjustYOrigin(CGRect rect, CGFloat yOrigin) __attribute__((deprecated));

/** Gives a rect a new x-origin.
 *  @param rect the rect on which to operate.
 *  @param size a new x-origin CGFloat to assign to `rect`.
 *  @return a new rect with the given x-origin.
 */
CGRect CGRectSetXOrigin(CGRect rect, CGFloat xOrigin);
CGRect CGRectAdjustXOrigin(CGRect rect, CGFloat xOrigin) __attribute__((deprecated));

/** Centers a child (sub) rect inside of a parent (master) rect, using both width and height.
 *  @param subRect the child rect, which will be altered and returned.
 *  @param masterRect the parent rect in which to center `subRect`.
 *  @return the modified `subRect`.
 */
CGRect CGRectCenterRectInRect(CGRect subRect, CGRect masterRect);

/** Centers a child (sub) rect inside of a parent (master) rect horizontally (only modifies x-origin).
 *  @param subRect the child rect, which will be altered and returned.
 *  @param masterRect the parent rect in which to center `subRect` horizontally.
 *  @return the modified `subRect`.
 */
CGRect CGRectCenterRectInRectHorizontally(CGRect subRect, CGRect masterRect);

/** Centers a child (sub) rect inside of a parent (master) rect vertically (only modifies y-origin).
 *  @param subRect the child rect, which will be altered and returned.
 *  @param masterRect the parent rect in which to center `subRect` vertically.
 *  @return the modified `subRect`.
 */
CGRect CGRectCenterRectInRectVertically(CGRect subRect, CGRect masterRect);

/** Calls `CGRectInset` on a given rect, and multiplies inset by the percentage given for both width and height.
 *  @param rect the rect which will be altered and returned.
 *  @param xPercent the percentage by which to multiply the `rect`'s width.
 *  @param yPercent the percentage by which to multiply the `rect`'s height.
 *  @return the modified `rect`.
 */
CGRect CGRectInsetByPercent(CGRect rect, CGFloat xPercent, CGFloat yPercent);

/** Uses `CGRectDivide` and disposes the remainder.
 *  @param rect the rect which will be altered and returned.
 *  @param amount the amount to trim off.
 *  @param edge the edge to trim from.
 *  @return the modified `rect`.
 */
CGRect CGRectSubtract(CGRect rect, CGFloat amount, CGRectEdge edge);

/** Modifies a given view's frame by calling `-[UIView sizeToFit]` on itself, and then ensuring it's integral by
 *  calling `CGRectIntegral` on the view's new frame.
 *  @param view the view on which to operate.
 */
void CGRectIntegralSizeToFit(UIView *view);

/** Doubles the size of a given size by multiplying width and height by a factor of 2.
 *  @param size the size to double.
 *  @return a new doubled size.
 */
CGSize CGSizeByDoubling(CGSize size);

/** Doubles the size of a given rect by multiplying width and height by a factor of 2, keeping the same origin.
 *  @param rect the rect whose size to double.
 *  @return a new doubled-size rect.
 */
CGRect CGRectByDoublingSize(CGRect rect);

/** Generates a rect for drawing 1-pixel lines.
 *  @param rect The rect to inset by a half pixel.
 *  @return A new rect.
 */
CGRect CGRectFor1PxStroke(CGRect rect);

