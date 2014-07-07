//
//  DMViewController.m
//  Test
//
//  Created by Hamdy on 7/7/14.
//  Copyright (c) 2014 Ahmed Hamdy. All rights reserved.
//

#import "DMViewController.h"
#import "UIView+Shake.h"

@interface DMViewController ()

@end

@implementation DMViewController
@synthesize loadingView;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    //[self runSpinAnimationOnView:loadingView duration:1000 rotations:360 repeat:1];
    
//    CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
//    rotationAnimation.toValue = @(M_PI * 2.0);
//    rotationAnimation.duration = 1;
//    rotationAnimation.autoreverses = YES;
//    rotationAnimation.repeatCount = HUGE_VALF;
//    rotationAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    [self.loadingView.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
   
    [self.loadingView shake:-1
				withDelta:5
				 andSpeed:0.1
           shakeDirection: ShakeDirectionHorizontal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) runSpinAnimationOnView:(UIView*)view duration:(CGFloat)duration rotations:(CGFloat)rotations repeat:(float)repeat;
{
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 /* full rotation*/ * rotations * duration ];
    rotationAnimation.duration = duration;
    rotationAnimation.cumulative = YES;
    //rotationAnimation.repeatCount = repeat;
    
    [view.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}
@end
