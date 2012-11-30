//
//  ViewController.m
//  AOC1Project2
//
//  Created by Carmen Johnson on 11/29/12.
//  Copyright (c) 2012 Carmen Johnson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    
    //Code Starts Here
    
    //UIView Here
    UIView *viewcontainer = [[UIView alloc] initWithFrame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [viewcontainer setBackgroundColor:[UIColor blackColor]];
    
    //UILabels format
    UILabel *bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 30.0f)];
    {
        bookTitle.text = @"MOD PODGE ROCKS!";
        bookTitle.textAlignment = NSTextAlignmentCenter;
        bookTitle.backgroundColor = [UIColor blueColor];
        bookTitle.textColor = [UIColor whiteColor];
    }
    
    UILabel *authorTag = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 30.0f, 90.0f, 30.0f)];
    {
        authorTag.text = @"Author: ";
        authorTag.textAlignment = NSTextAlignmentRight;
        authorTag.backgroundColor = [UIColor purpleColor];
        authorTag.textColor = [UIColor blackColor];
    }
    
    UILabel *author = [[UILabel alloc] initWithFrame:CGRectMake(90.0f, 30.0f, 300.0f, 30.0f)];
    {
        author.text = @"AMY ANDERSON";
        author.textAlignment = NSTextAlignmentLeft;
        author.backgroundColor = [UIColor yellowColor];
        author.textColor = [UIColor blackColor];
    }
    
    UILabel *pubTag = [[UILabel alloc] initWithFrame:CGRectMake(0, 60.0f, 90.0f, 30.0f)];
    {
        pubTag.text = @"Publisher: ";
        pubTag.textAlignment = NSTextAlignmentRight;
        pubTag.backgroundColor = [UIColor blueColor];
        pubTag.textColor = [UIColor whiteColor];
    }
    
    UILabel *bookPub = [[UILabel alloc] initWithFrame:CGRectMake(90.0f, 60.0f, 300.0f, 30.0f)];
    {
        bookPub.text = @"LARK CRAFTS";
        bookPub.textAlignment = NSTextAlignmentLeft;
        bookPub.backgroundColor = [UIColor brownColor];
        bookPub.textColor = [UIColor blackColor];
    }
    
    UILabel *bookSummary = [[UILabel alloc] initWithFrame:CGRectMake(0, 90.0f, self.view.frame.size.width, 110.0f)];
    {
        bookSummary.text = @"This book tells you how to Mod Podge, and gives great ideas on different textures to use. It also tells you the supplies you need to make great Mod Podge craft's.";
        bookSummary.textAlignment = NSTextAlignmentLeft;
        bookSummary.backgroundColor = [UIColor purpleColor];
        bookSummary.textColor = [UIColor whiteColor];
        bookSummary.NumberOfLines = 5;
    }
    
    //Arrays and Labels and Loops
    NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithCapacity:5];
    [mutableArray addObject:@"Textured Paper"];
    [mutableArray addObject:@"Glue Sticks"];
    [mutableArray addObject:@"Glue Gun"];
    [mutableArray addObject:@"Exacto Knife"];
    [mutableArray addObject:@"Wooden Letters"];
    
    UILabel *listTag = [[UILabel alloc] initWithFrame:CGRectMake(0, 200.0f, self.view.frame.size.width, 30.0f)];
    {
        listTag.text = @"List of Items:";
        listTag.textAlignment = NSTextAlignmentLeft;
        listTag.backgroundColor = [UIColor greenColor];
        listTag.textColor = [UIColor whiteColor];
    }
    
    UILabel *listOfItems = [[UILabel alloc] initWithFrame:CGRectMake(0, 230.0f, self.view.frame.size.width, 50.0f)];
    
    NSMutableString *mutableString = [NSMutableString string];
    
    for (int i=0; i<5; i++){
        [mutableString appendString:[mutableArray objectAtIndex:i]];
        if (i<4){
            [mutableString appendString:@", "];
        } else {
            [mutableString appendString:@"."];
        }
    }
    
    {
        listOfItems.text = mutableString;
        listOfItems.backgroundColor = [UIColor yellowColor];
        listOfItems.textColor = [UIColor blackColor];
        listOfItems.numberOfLines = 5;
        listOfItems.textAlignment = NSTextAlignmentCenter;
    }
    
    //subview calls
    [self.view addSubview:viewcontainer];
    [self.view addSubview:bookTitle];
    [self.view addSubview:authorTag];
    [self.view addSubview:author];
    [self.view addSubview:pubTag];
    [self.view addSubview:bookPub];
    [self.view addSubview:bookSummary];
    [self.view addSubview:listTag];
    [self.view addSubview:listOfItems];
    
    
    //CODE ENDED    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
