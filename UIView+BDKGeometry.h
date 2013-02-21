#import <UIKit/UIKit.h>

/** A set of geometry convenience methods for UIView.
 */
@interface UIView (BDKGeometry)

/** Origin modification helper.
 *  @param origin the origin to use.
 */
- (void)setOrigin:(CGPoint)origin;

/** X-origin modification helper.
 *  @param xOrigin the x-origin to use.
 */
- (void)setXOrigin:(CGFloat)xOrigin;

/** Y-origin modification helper.
 *  @param yOrigin the y-origin to use.
 */
- (void)setYOrigin:(CGFloat)yOrigin;

/** Size modification helper.
 *  @param size the size to use.
 */
- (void)setSize:(CGSize)size;

/** Width modification helper.
 *  @param width the width to use.
 */
- (void)setWidth:(CGFloat)width;

/** Height modification helper.
 *  @param height the height to use.
 */
- (void)setHeight:(CGFloat)height;

/** Positions a view directly beneath another view.
 *  @param view the view to position this view below.
 */
- (void)positionViewBelowView:(UIView *)view;

/** Positions a view directly beneath another view, with padding.
 *  @param view the view to position this view below.
 *  @param padding the padding to put between.
 */
- (void)positionViewBelowView:(UIView *)view padding:(CGFloat)padding;

@end
