//
//  FirstVC.m
//  ObjcScrollView0124
//
//  Created by 劉坤昶 on 2016/1/24.
//  Copyright © 2016年 劉坤昶 Johnny. All rights reserved.
//

#import "FirstVC.h"

@interface FirstVC () <UIScrollViewDelegate>



@property(strong,nonatomic) UIScrollView *scrollView;
@property(strong,nonatomic) UIPageControl *pageControl;


@property(strong,nonatomic) UIImageView *classImage01;
@property(strong,nonatomic) UIImageView *classImage02;
@property(strong,nonatomic) UIImageView *classImage03;
@property(strong,nonatomic) UIImageView *classImage04;
@property(strong,nonatomic) UIImageView *classImage05;

@property(strong,nonatomic) UIButton *startButton;


@end


@implementation FirstVC

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor lightGrayColor];
    
    CGFloat viewWidth,viewHeight;
    viewWidth = self.view.frame.size.width;
    viewHeight = self.view.frame.size.height;
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, viewWidth, viewHeight)];
    self.scrollView.pagingEnabled = YES;
    self.scrollView.bounces = NO;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.delegate = self;
    self.scrollView.contentSize = CGSizeMake(viewWidth*5, viewHeight);
    [self.view addSubview:self.scrollView];
    
    CGFloat scrollViewWidth,scrollViewHeight;
    scrollViewWidth = self.scrollView.frame.size.width;
    scrollViewHeight = self.scrollView.frame.size.height;

    self.classImage01 = [[UIImageView alloc] init];
    self.classImage01.frame = CGRectMake(0, 0,viewWidth, viewHeight);
    self.classImage01.image = [UIImage imageNamed:@"001"];
    [self.scrollView addSubview:self.classImage01];
    
    self.classImage02 = [[UIImageView alloc] init];
    self.classImage02.frame = CGRectMake(scrollViewWidth, 0, viewWidth, viewHeight);
    self.classImage02.image = [UIImage imageNamed:@"002"];
    [self.scrollView addSubview:self.classImage02];
    
    self.classImage03 = [[UIImageView alloc] init];
    self.classImage03.frame = CGRectMake(2*scrollViewWidth, 0, viewWidth, viewHeight);
    self.classImage03.image = [UIImage imageNamed:@"003"];
    [self.scrollView addSubview:self.classImage03];
    
    self.classImage04 = [[UIImageView alloc] init];
    self.classImage04.frame = CGRectMake(3*scrollViewWidth, 0, viewWidth, viewHeight);
    self.classImage04.image = [UIImage imageNamed:@"004"];
    [self.scrollView addSubview:self.classImage04];
    
    self.classImage05 = [[UIImageView alloc] init];
    self.classImage05.frame = CGRectMake(4*scrollViewWidth, 0, viewWidth, viewHeight);
    self.classImage05.image = [UIImage imageNamed:@"005"];
    [self.scrollView addSubview:self.classImage05];
    
    self.startButton = [[UIButton alloc] init];
    self.startButton.frame = CGRectMake(0, 0, 300, 50);
    self.startButton.center =
    CGPointMake(self.scrollView.contentSize.width-self.view.frame.size.width/2, scrollViewHeight-50);
    self.startButton.backgroundColor = [UIColor redColor];
    [self.startButton setTintColor:[UIColor whiteColor]];
    [self.startButton setTitle:@"開始使用" forState:UIControlStateNormal];
    [self.startButton addTarget:self action:@selector(goToMainTVC:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.scrollView addSubview: self.startButton];
    
    self.pageControl = [[UIPageControl alloc] init];
    self.pageControl.frame = CGRectMake(0, 0, 50, 10);
    self.pageControl.center = CGPointMake(viewWidth/2, viewHeight-100);
    self.pageControl.numberOfPages = 5;
    self.pageControl.currentPage = 0;
    [self.view addSubview:self.pageControl];

}

-(void)goToMainTVC:(UIButton*)startButton
{
    NSLog(@"點了就進入主頁面");
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSInteger page = self.scrollView.contentOffset.x / self.scrollView.frame.size.width;
    
    self.pageControl.currentPage = page;
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
