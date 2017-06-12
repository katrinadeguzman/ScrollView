
//
//  ViewController.m
//  MyScrollView
//
//  Created by Katrina de Guzman on 2017-06-12.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView* myView = [[UIView alloc]initWithFrame:CGRectMake(0, -100, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:myView];
    
    UIView* redView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [myView addSubview:redView];
    
    UIView* greenView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [myView addSubview:greenView];
    
    UIView* blueView = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [myView addSubview:blueView];
    
    UIView* yellowView = [[UIView alloc]initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [myView addSubview:yellowView];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
