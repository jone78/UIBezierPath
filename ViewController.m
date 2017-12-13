//
//  ViewController.m
//  ceshi
//
//  Created by 丁 一 on 2017/8/18.
//  Copyright © 2017年 丁 一. All rights reserved.
//

#import "ViewController.h"
#import "FKCurveView.h"

@interface ViewController ()

@property (nonatomic, strong) CAShapeLayer *ShapeLayer2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.    
    
    if (self.ShapeLayer2) {
        self.ShapeLayer2.path    = nil;
        [self.ShapeLayer2 removeFromSuperlayer];
    }
    self.ShapeLayer2             = [CAShapeLayer layer];
    self.ShapeLayer2.frame       = CGRectMake(0, 0, 320, 400);
    self.ShapeLayer2.fillColor   = [UIColor clearColor].CGColor;
    self.ShapeLayer2.strokeColor = [UIColor blueColor].CGColor;
    self.ShapeLayer2.lineWidth   = 1.0;
    self.ShapeLayer2.lineCap     = @"square";
    self.ShapeLayer2.lineJoin    = @"bevel";
    self.ShapeLayer2.lineWidth   = 1.5;
    [self.view.layer addSublayer:self.ShapeLayer2];
    
    
    
    
    CGPoint pointhui0=CGPointMake(0, 200);
    CGPoint pointhui1=CGPointMake(40, 80);
    CGPoint pointhui2=CGPointMake(80, 270);
    CGPoint pointhui3=CGPointMake(120, 350);
    CGPoint pointhui4=CGPointMake(160, 200);
    CGPoint pointhui5=CGPointMake(200, 180);
    CGPoint pointhui6=CGPointMake(240, 240);
    
    
    NSMutableArray *array0=[NSMutableArray new];
    [array0 addObject:[NSValue valueWithCGPoint:pointhui0]];
    [array0 addObject:[NSValue valueWithCGPoint:pointhui1]];
    [array0 addObject:[NSValue valueWithCGPoint:pointhui2]];
    [array0 addObject:[NSValue valueWithCGPoint:pointhui3]];
    [array0 addObject:[NSValue valueWithCGPoint:pointhui4]];
    [array0 addObject:[NSValue valueWithCGPoint:pointhui5]];
    [array0 addObject:[NSValue valueWithCGPoint:pointhui6]];
    
    
    
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth     = 1;
    path.lineCapStyle  = kCGLineCapSquare; //线条拐角
    path.lineJoinStyle = kCGLineCapRound; //终点处理
    
    
    //[path moveToPoint:CGPointMake(0, 200)];
    
    
//    CGFloat dx =20;
//    
//    CGFloat x0 =0+ dx;
//    
//    CGFloat y0 =0+ dx;
//    
//    CGFloat x1 =80+ dx;
//    
//    CGFloat y1 =120+ dx;
//    
//    CGFloat x2 =150+ dx;
//    
//    CGFloat y2 =200+ dx;
//    
//    CGFloat x3 =200+ dx;
//    
//    CGFloat y3 =50+ dx;
    
    CGPoint linpoint0=[[array0 objectAtIndex:0] CGPointValue];
    CGPoint linpoint1=[[array0 objectAtIndex:1] CGPointValue];
    CGPoint linpoint2=[[array0 objectAtIndex:2] CGPointValue];
    CGPoint linpoint3=[[array0 objectAtIndex:3] CGPointValue];
    CGPoint linpoint4=[[array0 objectAtIndex:4] CGPointValue];
    CGPoint linpoint5=[[array0 objectAtIndex:5] CGPointValue];
    CGPoint linpoint6=[[array0 objectAtIndex:6] CGPointValue];

    
    [path moveToPoint:linpoint0];

    [self getControlPointx0:0 andy0:0 x1:linpoint0.x andy1:linpoint0.y x2:linpoint1.x andy2:linpoint1.y x3:linpoint2.x andy3:linpoint2.y path:path];
    
    [self getControlPointx0:linpoint0.x andy0:linpoint0.y x1:linpoint1.x andy1:linpoint1.y x2:linpoint2.x andy2:linpoint2.y x3:linpoint3.x andy3:linpoint3.y path:path];
    
    [self getControlPointx0:linpoint1.x andy0:linpoint1.y x1:linpoint2.x andy1:linpoint2.y x2:linpoint3.x andy2:linpoint3.y x3:linpoint4.x andy3:linpoint4.y path:path];
    
    
//    [self getControlPointx0:linpoint2.x andy0:linpoint2.y x1:linpoint3.x andy1:linpoint3.y x2:linpoint4.x andy2:linpoint4.y x3:linpoint5.x andy3:linpoint5.y path:path];
//    
//    [self getControlPointx0:linpoint3.x andy0:linpoint3.y x1:linpoint4.x andy1:linpoint4.y x2:linpoint5.x andy2:linpoint5.y x3:linpoint6.x andy3:linpoint6.y path:path];
//    
//    [self getControlPointx0:linpoint4.x andy0:linpoint4.y x1:linpoint5.x andy1:linpoint5.y x2:linpoint6.x andy2:linpoint6.y x3:320 andy3:0 path:path];
    
    [path stroke];

    
    
//    [self getControlPointx0:linpoint0.x andy0:linpoint0.y x1:linpoint1.x andy1:linpoint1.y x2:linpoint2.x andy2:linpoint2.y x3:linpoint3.x andy3:linpoint3.y path:path];
//
//    
//    
//    [self getControlPointx0:0 andy0:0x1:x0 andy1:y0 x2:x1andy2:y1 x3:x2 andy3:y2path:path];
//    
//    [self getControlPointx0:x0andy0:y0x1:x1andy1:y1x2:x2andy2:y2x3:x3andy3:y3path:path];
//    
//    [self getControlPointx0:x1andy0:y1x1:x2andy1:y2x2:x3andy2:y3x3:250andy3:0path:path];

    
    
    
    
    
    
    
    
    
    
    for (int i=0; i<array0.count; i++) {
        CALayer *lind=[CALayer new];
        lind.frame=CGRectMake(0, 0, 10, 10);
        lind.cornerRadius=5;
        lind.masksToBounds=YES;
        lind.backgroundColor=[UIColor redColor].CGColor;
        CGPoint linpoint=[[array0 objectAtIndex:i] CGPointValue];
        lind.position=linpoint;
        [self.ShapeLayer2 addSublayer:lind];
    }

//    for (int i=0; i<lingarry.count; i++) {
//        CALayer *lind=[CALayer new];
//        lind.frame=CGRectMake(0, 0, 10, 10);
//        lind.cornerRadius=5;
//        lind.masksToBounds=YES;
//        lind.backgroundColor=[UIColor blueColor].CGColor;
//        CGPoint linpoint=[[lingarry objectAtIndex:i] CGPointValue];
//        lind.position=linpoint;
//        [self.ShapeLayer2 addSublayer:lind];
//    }
//
//    CGPoint linpoint0=[[lingarry objectAtIndex:0] CGPointValue];
//    CGPoint linpoint1=[[lingarry objectAtIndex:1] CGPointValue];
//    
//    [path addCurveToPoint:CGPointMake(120, 350) controlPoint1:linpoint0 controlPoint2:linpoint1];
//    
//    
//    
//    
//    
//    CGPoint pointhui00=CGPointMake(120, 350);
//    CGPoint pointhui11=CGPointMake(160, 80);
//    CGPoint pointhui22=CGPointMake(200, 270);
//    CGPoint pointhui33=CGPointMake(240, 350);
//    
//    
//    NSMutableArray *array00=[NSMutableArray new];
//    [array00 addObject:[NSValue valueWithCGPoint:pointhui00]];
//    [array00 addObject:[NSValue valueWithCGPoint:pointhui11]];
//    [array00 addObject:[NSValue valueWithCGPoint:pointhui22]];
//    [array00 addObject:[NSValue valueWithCGPoint:pointhui33]];
//    
//    NSMutableArray *lingarry00=[self huoqu:array00 andva:0.6];
//    
//    for (int i=0; i<array00.count; i++) {
//        CALayer *lind=[CALayer new];
//        lind.frame=CGRectMake(0, 0, 10, 10);
//        lind.cornerRadius=5;
//        lind.masksToBounds=YES;
//        lind.backgroundColor=[UIColor redColor].CGColor;
//        CGPoint linpoint=[[array00 objectAtIndex:i] CGPointValue];
//        lind.position=linpoint;
//        [self.ShapeLayer2 addSublayer:lind];
//    }
//    
//    for (int i=0; i<lingarry00.count; i++) {
//        CALayer *lind=[CALayer new];
//        lind.frame=CGRectMake(0, 0, 10, 10);
//        lind.cornerRadius=5;
//        lind.masksToBounds=YES;
//        lind.backgroundColor=[UIColor blueColor].CGColor;
//        CGPoint linpoint=[[lingarry00 objectAtIndex:i] CGPointValue];
//        lind.position=linpoint;
//        [self.ShapeLayer2 addSublayer:lind];
//    }
//    
//    CGPoint linpoint00=[[lingarry00 objectAtIndex:0] CGPointValue];
//    CGPoint linpoint11=[[lingarry00 objectAtIndex:1] CGPointValue];
//    
//    [path addCurveToPoint:CGPointMake(240, 350) controlPoint1:linpoint00 controlPoint2:linpoint11];
//    
//
//    
//    
//    for (int i=0; i<20; i++) {
//        CALayer *lin=[CALayer new];
//        lin.frame=CGRectMake(0, 20*i, 320, 1);
//        lin.backgroundColor=[UIColor grayColor].CGColor;
//        [self.ShapeLayer2 addSublayer:lin];
//        
//        CALayer *linl=[CALayer new];
//        linl.frame=CGRectMake( 20*i,0, 1, 400);
//        linl.backgroundColor=[UIColor grayColor].CGColor;
//        [self.ShapeLayer2 addSublayer:linl];
//    }
//    
//    

    
    
//    [path moveToPoint:CGPointMake(0, 100)];
//    
//    
//    
//    [path addQuadCurveToPoint:CGPointMake(100, 50) controlPoint:CGPointMake(50, -50)];
//    [path addQuadCurveToPoint:CGPointMake(200, 50) controlPoint:CGPointMake(150, 150)];
//    [path addQuadCurveToPoint:CGPointMake(300, 200) controlPoint:CGPointMake(250, -50)];
//    [path addQuadCurveToPoint:CGPointMake(400, 100) controlPoint:CGPointMake(350, 400)];
//    [path addQuadCurveToPoint:CGPointMake(500, 150) controlPoint:CGPointMake(450, -150)];
    

//    NSMutableArray *array=[NSMutableArray new];
//    [array addObject:@"20"];
//    [array addObject:@"50"];
//    [array addObject:@"30"];
//    [array addObject:@"10"];
//    [array addObject:@"80"];
//    [array addObject:@"70"];
//    [array addObject:@"100"];
//    
    
//    for (int i=0; i<array.count; i++) {
//        int now_w=[[array objectAtIndex:i] intValue];
//        if (i==0) {
//            [path moveToPoint:CGPointMake(0, now_w)];
//        }else{
//            int last_w=[[array objectAtIndex:i-1] intValue];
//            int fu_w;
//            if (last_w>now_w) {
//                fu_w=(30);
//            }else{
//                fu_w=(-30);
//            }
//            
//            [path addQuadCurveToPoint:CGPointMake(30 * i, now_w) controlPoint:CGPointMake(30 * i -15, fu_w)];
//        }
//        
//    }
    
    
    
    
    
    
    self.ShapeLayer2.path        = path.CGPath;
    self.ShapeLayer2.strokeStart = 0.0;
    self.ShapeLayer2.strokeEnd   = 0.0;
    
    CABasicAnimation *animation  = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.fromValue          = @0;
    animation.toValue            = @1;
    animation.repeatCount        = 1;
    animation.duration           = 2.0f;
    self.ShapeLayer2.strokeEnd   = 1.0;
    [self.ShapeLayer2 addAnimation:animation forKey:nil];
}




-(void) getControlPointx0:(CGFloat)x0 andy0:(CGFloat)y0

                       x1:(CGFloat)x1 andy1:(CGFloat)y1

                       x2:(CGFloat)x2 andy2:(CGFloat)y2

                       x3:(CGFloat)x3 andy3:(CGFloat)y3

                     path:(UIBezierPath*) path

{
    
    CGFloat smooth_value =0.6;
    
    CGFloat ctrl1_x;
    
    CGFloat ctrl1_y;
    
    CGFloat ctrl2_x;
    
    CGFloat ctrl2_y;
    
    CGFloat xc1 = (x0 + x1) /2.0;
    
    CGFloat yc1 = (y0 + y1) /2.0;
    
    CGFloat xc2 = (x1 + x2) /2.0;
    
    CGFloat yc2 = (y1 + y2) /2.0;
    
    CGFloat xc3 = (x2 + x3) /2.0;
    
    CGFloat yc3 = (y2 + y3) /2.0;
    
    CGFloat len1 = sqrt((x1-x0) * (x1-x0) + (y1-y0) * (y1-y0));
    
    CGFloat len2 = sqrt((x2-x1) * (x2-x1) + (y2-y1) * (y2-y1));
    
    CGFloat len3 = sqrt((x3-x2) * (x3-x2) + (y3-y2) * (y3-y2));
    
    CGFloat k1 = len1 / (len1 + len2);
    
    CGFloat k2 = len2 / (len2 + len3);
    
    CGFloat xm1 = xc1 + (xc2 - xc1) * k1;
    
    CGFloat ym1 = yc1 + (yc2 - yc1) * k1;
    
    CGFloat xm2 = xc2 + (xc3 - xc2) * k2;
    
    CGFloat ym2 = yc2 + (yc3 - yc2) * k2;
    
    ctrl1_x = xm1 + (xc2 - xm1) * smooth_value + x1 - xm1;
    
    ctrl1_y = ym1 + (yc2 - ym1) * smooth_value + y1 - ym1;
    
    ctrl2_x = xm2 + (xc2 - xm2) * smooth_value + x2 - xm2;
    
    ctrl2_y = ym2 + (yc2 - ym2) * smooth_value + y2 - ym2;
    
    [path addCurveToPoint:CGPointMake(x2, y2) controlPoint1:CGPointMake(ctrl1_x, ctrl1_y)controlPoint2:CGPointMake(ctrl2_x, ctrl2_y)];
    
}





-(NSMutableArray *)huoqu:(NSMutableArray *)arr andva:(CGFloat)smooth_value{
    
    CGPoint point0=[[arr objectAtIndex:0] CGPointValue];
    CGPoint point1=[[arr objectAtIndex:1] CGPointValue];
    CGPoint point2=[[arr objectAtIndex:2] CGPointValue];
    CGPoint point3=[[arr objectAtIndex:3] CGPointValue];
    
    
    CGFloat x0 = point0.x, y0 = point0.y;
    CGFloat x1 = point1.x, y1 = point1.y;
    CGFloat x2 = point2.x, y2 = point2.y;
    CGFloat x3 = point3.x, y3 = point3.y;
    
    
    CGFloat xc1 = (x0 + x1) / 2.0;
    CGFloat yc1 = (y0 + y1) / 2.0;
    CGFloat xc2 = (x1 + x2) / 2.0;
    CGFloat yc2 = (y1 + y2) / 2.0;
    CGFloat xc3 = (x2 + x3) / 2.0;
    CGFloat yc3 = (y2 + y3) / 2.0;
    
    float len1 = sqrt((x1-x0) * (x1-x0) + (y1-y0) * (y1-y0));
    float len2 = sqrt((x2-x1) * (x2-x1) + (y2-y1) * (y2-y1));
    float len3 = sqrt((x3-x2) * (x3-x2) + (y3-y2) * (y3-y2));
    
    
    float k1 = len1 / (len1 + len2);
    float k2 = len2 / (len2 + len3);
    
    float xm1 = xc1 + (xc2 - xc1) * k1;
    float ym1 = yc1 + (yc2 - yc1) * k1;
    
    float xm2 = xc2 + (xc3 - xc2) * k2;
    float ym2 = yc2 + (yc3 - yc2) * k2;
    
    float ctrl1_x = xm1 + (xc2 - xm1) * smooth_value + x1 - xm1;
    float ctrl1_y = ym1 + (yc2 - ym1) * smooth_value + y1 - ym1;
    float ctrl2_x = xm2 + (xc2 - xm2) * smooth_value + x2 - xm2;
    float ctrl2_y = ym2 + (yc2 - ym2) * smooth_value + y2 - ym2;
    
    
    CGPoint pointhui0=CGPointMake(ctrl1_x, ctrl1_y);
    CGPoint pointhui1=CGPointMake(ctrl2_x, ctrl2_y);
    
    
    NSMutableArray *array=[NSMutableArray new];
    [array addObject:[NSValue valueWithCGPoint:pointhui0]];
    [array addObject:[NSValue valueWithCGPoint:pointhui1]];
    
    return array;
}


@end
