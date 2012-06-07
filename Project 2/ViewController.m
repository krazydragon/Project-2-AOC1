//
//  ViewController.m
//  Project 2
//
//  Created by Ronaldo Barnes on 6/7/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //Book Title   
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 20.0f)];
    if (bookTitle != nil)
    {
        bookTitle.backgroundColor = [UIColor greenColor];
        bookTitle.text = @"Dead Until Dark";
        bookTitle.textAlignment = UITextAlignmentCenter;
        bookTitle.textColor = [UIColor redColor];
    }
    
    [self.view addSubview:bookTitle];
    //Author info
    author = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 100.0f, 20.0f)];
    if (author != nil)
    {
        author.backgroundColor = [UIColor whiteColor];
        author.text = @"Author:";
        author.textAlignment = UITextAlignmentRight;
        author.textColor = [UIColor brownColor];
    }
    [self.view addSubview:author];
    
    authorName = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 50.0f, 320.0f, 20.0f)];
    if (authorName != nil)
    {
        authorName.backgroundColor = [UIColor yellowColor];
        authorName.text = @"Charlaine Harris";
        authorName.textAlignment = UITextAlignmentLeft;
        authorName.textColor = [UIColor magentaColor];
    }
    [self.view addSubview:authorName];
    
    //Published info
    published = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 80.0f, 100.0f, 20.0f)];
    if (published != nil)
    {
        published.backgroundColor = [UIColor purpleColor];
        published.text = @"Published:";
        published.textAlignment = UITextAlignmentRight;
        published.textColor = [UIColor orangeColor];
    }
    [self.view addSubview:published];
    
    publishedDate = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 80.0f, 320.0f, 20.0f)];
    if (publishedDate != nil)
    {
        publishedDate.backgroundColor = [UIColor blueColor];
        publishedDate.text = @"May 2001";
        publishedDate.textAlignment = UITextAlignmentLeft;
        publishedDate.textColor = [UIColor darkGrayColor];
    }
    [self.view addSubview:publishedDate];
    //Summary
    
    summary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 110.0f, 100.0f, 20.0f)];
    if (publishedDate != nil)
    {
        summary.backgroundColor = [UIColor redColor];
        summary.text = @"Summary";
        summary.textAlignment = UITextAlignmentLeft;
        summary.textColor = [UIColor blueColor];
    }
    [self.view addSubview:summary];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
