//
//  ViewController.h
//  AdStirInterstitialAdSample
//
//  Created by Dolice on 2015/09/10.
//  Copyright © 2015年 Dolice. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AdstirAds/AdstirAds.h>

@interface ViewController : UIViewController <AdstirInterstitialDelegate> {
    AdstirInterstitial *adStirInterstitial;
}

@end

