//
//  UIViewController+Test.m
//  TestSDK
//
//  Created by KANAKARAJU GANDREDDI on 9/26/17.
//  Copyright © 2017 RelianceJio. All rights reserved.
//

#import "UIViewController+Test.h"
#import "TestView.h"

@implementation UIViewController (Test)

-(void)loadCampaignView{
    
    NSLog(@"loadCampaignView inside SDK");
    
  //  NSBundle *resourceBundle = [NSBundle bundleWithPath:@"/Users/reliance/Desktop/POC/TestSDK/TestSDK/"];
    
 //   NSBundle* bundle = [NSBundle bundleForClass:[self class]];

    NSBundle* bundle = [NSBundle bundleWithIdentifier:@"com.jio.TestSDK"];
    NSLog(@"resourceBundle Path %@",bundle.bundlePath);

    TestView *testView = [[bundle loadNibNamed:@"TestView" owner:self options:nil] lastObject];
    [self.view addSubview:testView];
}

@end
