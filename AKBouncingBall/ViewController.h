//
//  ViewController.h
//  AKBouncingBall
//
//  Created by Xiaonan Wang on 6/22/15.
//  Copyright (c) 2015 Xiaonan Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>
#import "AKBouncingBallDemo.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) SKView * skView;
@property (nonatomic, strong) AKBouncingBallDemo *myScene;

@end

