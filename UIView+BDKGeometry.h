#import <UIKit/UIKit.h>

typedef enum {
    BDKGeometryCenterHorizontally = 0,
    BDKGeometryCenterVertically,
    BDKGeometryCenterBoth,
} BDKGeometryCenter;

/** A set of geometry convenience methods for UIView.
 */
@interface UIView (BDKGeometry)

@property (nonatomic) CGPoint frameOrigin;
@property (nonatomic) CGFloat frameXOrigin;
@property (nonatomic) CGFloat frameYOrigin;
@property (nonatomic) CGSize frameSize;
@property (nonatomic) CGFloat frameWidth;
@property (nonatomic) CGFloat frameHeight;
@property (nonatomic) CGPoint boundsOrigin;
@property (nonatomic) CGFloat boundsXOrigin;
@property (nonatomic) CGFloat boundsYOrigin;
@property (nonatomic) CGSize boundsSize;
@property (nonatomic) CGFloat boundsWidth;
@property (nonatomic) CGFloat boundsHeight;

/** Origin modification helper.
 *  @param origin the origin to use.
 */
- (void)setOrigin:(CGPoint)origin __attribute__((deprecated));

/** X-origin modification helper.
 *  @param xOrigin the x-origin to use.
 */
- (void)setXOrigin:(CGFloat)xOrigin __attribute__((deprecated));

/** Y-origin modification helper.
 *  @param yOrigin the y-origin to use.
 */
- (void)setYOrigin:(CGFloat)yOrigin __attribute__((deprecated));

/** Size modification helper.
 *  @param size the size to use.
 */
- (void)setSize:(CGSize)size __attribute__((deprecated));

/** Width modification helper.
 *  @param width the width to use.
 */
- (void)setWidth:(CGFloat)width __attribute__((deprecated));

/** Height modification helper.
 *  @param height the height to use.
 */
- (void)setHeight:(CGFloat)height __attribute__((deprecated));

/** Positions a view directly beneath another view.
 *  @param view the view to position this view below.
 */
- (void)positionViewBelowView:(UIView *)view;

/** Positions a view directly beneath another view, with padding.
 *  @param view the view to position this view below.
 *  @param padding the padding to put between.
 */
- (void)positionViewBelowView:(UIView *)view padding:(CGFloat)padding;

/** Centers this view in another view.
 *  @param view the view in which to center the current view.
 *  @param direction whether to center vertically, horizontally, or both.
 */
- (void)centerInView:(UIView *)view direction:(BDKGeometryCenter)direction;

@end
