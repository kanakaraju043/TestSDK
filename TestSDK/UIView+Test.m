//
//  UIView+Test.m
//  TestSDK
//
//  Created by KANAKARAJU GANDREDDI on 9/27/17.
//  Copyright © 2017 RelianceJio. All rights reserved.
//

#import "UIView+Test.h"
#import "TestView.h"

@implementation UIView (Test)

-(void)renderCampaignView{
    
    NSBundle* bundle = [NSBundle bundleWithIdentifier:@"com.jio.TestSDK"];
    NSLog(@"resourceBundle Path %@",bundle.bundlePath);
    
    TestView *testView = [[bundle loadNibNamed:@"TestView" owner:self options:nil] lastObject];
    [self addSubview:testView];
    [self showAnimate];
}

- (void)showAnimate
{
    self.transform = CGAffineTransformMakeScale(1.3, 1.3);
   // self.alpha = 0;
    [UIView animateWithDuration:1.0 animations:^{
     //   self.alpha = 1;
        self.transform = CGAffineTransformMakeScale(1, 1);
    }];
}
-(void)loadWebView{
    
    
}
@end
