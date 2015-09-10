//
//  ViewController.m
//  AdStirInterstitialAdSample
//
//  Created by Dolice on 2015/09/10.
//  Copyright © 2015年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSString *const ADSTIR_MEDIA_ID       = @"";
int       const ADSTIR_INTERS_SPOT_ID = 1;

#pragma mark -

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // AdStirインタースティシャル広告読み込み
    [self loadAdStirInterstitialAd];
}

#pragma mark - AdStir Interstitial Ad

// AdStirインタースティシャル広告読み込み
- (void)loadAdStirInterstitialAd
{
    adStirInterstitial = [[AdstirInterstitial alloc] init];
    adStirInterstitial.media = ADSTIR_MEDIA_ID;
    adStirInterstitial.spot = ADSTIR_INTERS_SPOT_ID;
    [adStirInterstitial load];
}

// AdStirインタースティシャル広告がロードされた時に呼ばれる
- (void)adstirInterstitialDidReceiveSetting:(AdstirInterstitial *)inter
{
    NSLog(@"adstirInterstitialDidReceiveSetting");
}

// AdStirインタースティシャル広告の読み込み失敗時に呼ばれる
- (void)adstirInterstitialDidFailedToReceiveSetting:(AdstirInterstitial *)inter
{
    NSLog(@"adstirInterstitialDidFailedToReceiveSetting");
}

@end
