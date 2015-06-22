//
//  AKBouncingBallDemo.m
//  AKBouncingBall
//
//  Created by Xiaonan Wang on 6/22/15.
//  Copyright (c) 2015 Xiaonan Wang. All rights reserved.
//

#import "AKBouncingBallDemo.h"

@implementation AKBouncingBallDemo

-(id)initWithSize:(CGSize)size{
    if (self = [super initWithSize:size]) {
        [self setBackgroundColor:[UIColor whiteColor]];
        SKPhysicsBody *boder = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        self.physicsBody = boder;
        self.physicsWorld.gravity = CGVectorMake(0, -10.0f);
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKShapeNode *ball = [[SKShapeNode alloc]init];
    CGMutablePathRef circlePath = CGPathCreateMutable();
    CGPathAddArc(circlePath, NULL, 0.5, 0.5, 50, 0, M_PI * 2, YES);
    
    ball = [[SKShapeNode alloc] init];
    ball.path = circlePath;
    ball.position = location;
    ball.lineWidth = 1.0;
    int a = arc4random_uniform(7);
    switch (a) {
        case 0:
            ball.fillColor = [SKColor purpleColor];
            ball.strokeColor = [SKColor purpleColor];
            break;
        case 1:
            ball.fillColor = [SKColor redColor];
            ball.strokeColor = [SKColor redColor];
            break;
        case 2:
            ball.fillColor = [SKColor blueColor];
            ball.strokeColor = [SKColor blueColor];
            break;
        case 3:
            ball.fillColor = [SKColor greenColor];
            ball.strokeColor = [SKColor greenColor];
            break;
        case 4:
            ball.fillColor = [SKColor yellowColor];
            ball.strokeColor = [SKColor yellowColor];
            break;
        case 5:
            ball.fillColor = [SKColor orangeColor];
            ball.strokeColor = [SKColor orangeColor];
            break;
        case 6:
            ball.fillColor = [SKColor brownColor];
            ball.strokeColor = [SKColor brownColor];
        default:
            break;
    }
    
    ball.physicsBody = [SKPhysicsBody bodyWithPolygonFromPath:ball.path];
    ball.physicsBody.friction = 0.0f;
    ball.physicsBody.restitution = 0.8f;
    ball.physicsBody.linearDamping = 0.0f;
    ball.physicsBody.allowsRotation = YES;
    ball.physicsBody.dynamic = YES;
    [self addChild:ball];
}

@end
