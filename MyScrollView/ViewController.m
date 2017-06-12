
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
@property UIView* myView;
@property CGFloat y;
@property MyScrollView* scroll;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height +200)];//allowance to make yellow visible
    self.myView = view;
    
    MyScrollView *scroll = [[MyScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:scroll];
    self.scroll = scroll;
    [scroll addSubview:view];
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGesture:)];
    [self.scroll setUserInteractionEnabled:YES];
    [self.scroll addGestureRecognizer:pan];
    
    self.scroll.contentSize = CGSizeMake(view.bounds.size.width, view.bounds.size.height);
    
    UIView* redView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [view addSubview:redView];
    
    UIView* greenView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [view addSubview:greenView];
    
    UIView* blueView = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [view addSubview:blueView];
    
    UIView* yellowView = [[UIView alloc]initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [view addSubview:yellowView];
}

- (IBAction)panGesture:(UIPanGestureRecognizer*)sender
{
    if (sender.state == UIGestureRecognizerStateChanged)
    {
        self.y = self.scroll.bounds.origin.y;
    }
    
    CGPoint translation = [sender translationInView:self.myView];
    
    CGRect scrollBounds = self.scroll.bounds;
    
    scrollBounds.origin.y = self.y - translation.y;

    self.scroll.bounds = scrollBounds;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
