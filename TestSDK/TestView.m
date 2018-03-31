//
//  TestView.m
//  TestSDK
//
//  Created by KANAKARAJU GANDREDDI on 9/26/17.
//  Copyright © 2017 RelianceJio. All rights reserved.
//

#import "TestView.h"

@implementation TestView
- (IBAction)closeButtonAction:(id)sender {
    [self removeAnimate];
    //[self removeFromSuperview];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)removeAnimate
{
    [UIView animateWithDuration:.25 animations:^{
        self.transform = CGAffineTransformMakeScale(1.3, 1.3);
        self.alpha = 1.0;
    } completion:^(BOOL finished) {
        if (finished) {
           // self.backgroundColor=[[UIColor whiteColor] colorWithAlphaComponent:1.0];
            
            [self removeFromSuperview];
        }
    }];
}

@end
