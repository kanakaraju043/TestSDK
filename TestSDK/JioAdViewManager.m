//
//  JioAdViewManager.m
//  TestSDK
//
//  Created by KANAKARAJU GANDREDDI on 9/27/17.
//  Copyright © 2017 RelianceJio. All rights reserved.
//

#import "JioAdViewManager.h"
#import "TestView.h"

@implementation JioAdViewManager

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)loadJioAdView{
    
    NSBundle* bundle = [NSBundle bundleWithIdentifier:@"com.jio.TestSDK"];
    NSLog(@"resourceBundle Path %@",bundle.bundlePath);
    
    TestView *testView = [[bundle loadNibNamed:@"TestView" owner:self options:nil] lastObject];
    [self addSubview:testView];
}

@end
