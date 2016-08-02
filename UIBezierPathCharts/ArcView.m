//
//  ArcView.m
//  UIBezierPathCharts
//
//  Created by Vamsi Kallepalli on 7/27/16.
//  Copyright © 2016 Vamsi Kallepalli. All rights reserved.
//

#import "ArcView.h"

@implementation ArcView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
    
        UIBezierPath *path = [UIBezierPath bezierPath];
        CGRect bounds = [self bounds];
        //CGPoint center = CGPointMake(bounds.size.width / 2.0, bounds.size.height / 2.0);
        
        CGPoint point = CGPointMake(10, bounds.size.height);
        //CGFloat radius = (screenWidth/2)-27;
    CGFloat radius =100;
        //CGFloat startAngle = -((float)M_PI / 2.0);
        
        //CGFloat endAngle = ((5 / 100.0) * 7 * (float)M_PI) + startAngle;
        
        
        
        [path moveToPoint:point];
        point.x += radius;
        [path addArcWithCenter:point radius:radius startAngle:M_PI endAngle:M_PI * 2.0 clockwise:YES];
        point.x += radius;
        [path addLineToPoint:point];
        
        
        path.lineWidth = 18.0;
        
        [[UIColor colorWithRed:85.0/255.0f green:106.0/255.0f blue:111.0f/255.0f alpha:1.0f] setStroke];
        [[UIColor clearColor] setFill];
        
        
        CAShapeLayer *baseArc = [CAShapeLayer layer];
        baseArc.path = path.CGPath;
        baseArc.strokeColor = [[UIColor colorWithRed:85.0/255.0f green:106.0/255.0f blue:111.0f/255.0f alpha:1.0f] CGColor];
        baseArc.fillColor = [UIColor clearColor].CGColor;
        baseArc.lineWidth   = path.lineWidth;
        baseArc.lineCap = kCALineCapRound;
        
        [self.layer addSublayer:baseArc];
        
        CAShapeLayer *arc = [CAShapeLayer layer];
        arc.path = path.CGPath;
        arc.strokeColor = [[UIColor colorWithRed:221.0/255.0f green:225.0/255.0f blue:226.0f/255.0f alpha:1.0f] CGColor];
        arc.fillColor = [UIColor clearColor].CGColor;
        arc.lineWidth   = path.lineWidth;
        arc.lineCap = kCALineCapRound;
        
        CABasicAnimation *pathAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        pathAnimation.duration = 2.0;
        pathAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
        pathAnimation.toValue = [NSNumber numberWithFloat:0.8f];
        pathAnimation.removedOnCompletion = NO;
        pathAnimation.fillMode = kCAFillModeForwards;
        [arc addAnimation:pathAnimation forKey:@"strokeEndAnimation"];
        
        [self.layer addSublayer:arc];
}

@end
