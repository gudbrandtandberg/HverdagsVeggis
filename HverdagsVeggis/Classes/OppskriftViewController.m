//
//  OppskriftViewController.m
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/15/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import "OppskriftViewController.h"
#import "HovedOppskriftVC.h"
#import "IngrediensVC.h"
#import "FremgangsmaateVC.h"


// Denne kan og bør gjøres mye raskere med "dummy"-VC'ers i viewCont arrayen
// lag dem heller når de trengs.

@interface OppskriftViewController ()

@end

@implementation OppskriftViewController

- (id) initWithOppskrift:(VeggisOppskrift *)oppskrift  //jeg tror det er her det går galt!
{
	self = [super init];
	_oppskriften = oppskrift;

	return self;
}

    
- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 64, 320, 20)];
    self.pageControl.numberOfPages = 3;
	[self.pageControl setUserInteractionEnabled:NO];
    self.pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:69./255 green:92/255. blue:28/255. alpha:1];

    //Lager den første VC'en
    
	NSMutableArray *initialVC = [[NSMutableArray alloc] initWithObjects:[self viewControllerAtIndex:0], nil];
	
	self.pageVC = [[UIPageViewController alloc] initWithTransitionStyle:
				   UIPageViewControllerTransitionStyleScroll navigationOrientation:
				   UIPageViewControllerNavigationOrientationHorizontal options:nil];
	
	[self.pageVC setViewControllers:initialVC direction:
	 UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
	
	[self.pageVC setDataSource:self];
	[self.pageVC setDelegate:self];
	[self.pageVC.view setFrame:[self.view bounds]];
    [self addChildViewController:self.pageVC];
	[self.view addSubview:self.pageVC.view];
	[self.view addSubview:self.pageControl];
	[self.pageVC didMoveToParentViewController:self];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

- (NSNumber *)indexOfViewController:(UIViewController *)viewController
{
	NSString *vcClass = NSStringFromClass([viewController class]);
	NSNumber *number = [NSNumber alloc];
	
	if ([vcClass isEqualToString:@"HovedOppskriftVC"]){
		return [number initWithInt:0];
	}
	else if ([vcClass isEqualToString:@"IngrediensVC"]){
		
		return [number initWithInt:1];
	}
	else{
		return [number initWithInt:2];
	}
}

-(UIViewController *)viewControllerAtIndex:(NSInteger)index
{
    if (index == 0){
        // HovedViewControlleren:
        
        HovedOppskriftVC *hoved = [[HovedOppskriftVC alloc] initWithNibName:@"HovedOppskriftVC"
                                                    bundle:nil];
        hoved.intro = self.oppskriften.intro;
        hoved.bilde = self.oppskriften.bilde;
        hoved.navn = self.oppskriften.navn;
        return hoved;
    }
    else if (index == 1){
        //IngrediensViewControlleren:
        
        IngrediensVC *ing = [[IngrediensVC alloc] initWithNibName:@"IngrediensVC"
                                              bundle:nil];
        ing.ingredienser = self.oppskriften.ingredienser;
        ing.antPers = [NSNumber numberWithInt:self.oppskriften.antPers];
        ing.startAntall = ing.antPers;
        return ing;
        
    }
    else if (index == 2){
        //FremgangsmåteViewControlleren:
        
        FremgangsmaateVC *fremgang = [[FremgangsmaateVC alloc] initWithNibName:@"FremgangsmaateVC"
                                                       bundle:nil];
        fremgang.maate = self.oppskriften.fremgangsmaate;
        return fremgang;
    }
    return nil;
}

#pragma mark -UIPageControllerDataSource

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController
	   viewControllerAfterViewController:(UIViewController *)viewController
{
	NSUInteger index = [[self indexOfViewController:viewController] integerValue];
    index++;
    
    if (index == 3) {
        return nil;
    }
    
    return [self viewControllerAtIndex:index];
	
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController
	  viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = [[self indexOfViewController:viewController] integerValue];
    
    if (index == 0) {
        return nil;
    }
    
    index--;
    
    return [self viewControllerAtIndex:index];
}

#pragma mark - UIPageViewControllerDelegate //kanskje gjøre noe lurt her?...

- (void)pageViewController:(UIPageViewController *)pageViewController didFinishAnimating:(BOOL)finished previousViewControllers:(NSArray *)previousViewControllers transitionCompleted:(BOOL)completed
{

    if (completed){
        self.pageControl.currentPage = [[self indexOfViewController:[self.pageVC.viewControllers objectAtIndex:0]] integerValue];
        
    }
    
}

@end
