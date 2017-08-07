#import <UIKit/UIKit.h>
@interface UIImage (Color)

//给我一种颜色，一个尺寸，我给你返回一个UIImage:不透明
+(UIImage *)imageFromContextWithColor:(UIColor *)color;

+(UIImage *)imageFromContextWithColor:(UIColor *)color size:(CGSize)size;

- (UIImage *) imageWithTintColor:(UIColor *)tintColor;

- (UIImage *) imageWithGradientTintColor:(UIColor *)tintColor;


@end
