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
    //Background color
    self.view.backgroundColor = [UIColor blackColor];
    
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
    if (summary != nil)
    {
        summary.backgroundColor = [UIColor redColor];
        summary.text = @"Summary";
        summary.textAlignment = UITextAlignmentLeft;
        summary.textColor = [UIColor blueColor];
    }
    [self.view addSubview:summary];
    
    summaryText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 130.0f, 320.0f, 250.0f)];
    if (summaryText != nil)
    {
        summaryText.backgroundColor = [UIColor magentaColor];
        summaryText.text = @"This book is the first of a series of books and a TV series on HBO True Blood. It all starts with Sookie Stackhouse from Bon Temps Louisiana. She is 25 years old and a mind reader. Most of the people from her very small town think that she is slow but she tries not to get involved with other people since she can read minds. This all changes when she meets a Vampire named Bill and she can’t read his mind the two hit it off. ";
        summaryText.textAlignment = UITextAlignmentCenter;
        summaryText.textColor = [UIColor greenColor];
        summaryText.numberOfLines = 13;
    }
    [self.view addSubview:summaryText];
    
    //List of Items
    
    //Items for array
    item1 = [[NSString alloc] initWithString:@"Vampires"];
    item2 = [[NSString alloc] initWithString:@"Mind Reader"];
    item3 = [[NSString alloc] initWithString:@"Super Natural"];
    item4 = [[NSString alloc] initWithString:@"New age"];
    item5 = [[NSString alloc] initWithString:@"Violence"];
    //Create Array
    itemArray = [NSArray arrayWithObjects:item1, item2, item3, item4, item5, nil];
    //NSLog(@"%@", [itemArray description]);
    
    //Create Mutible String
    itemText = [[NSMutableString alloc] initWithCapacity:5];
    
    for (int x = 0; x < itemArray.count; x++) {
        [itemText appendString:[itemArray objectAtIndex: x]];
        if (x < itemArray.count -1) {
            [itemText appendString: @", "];
        }
    }    
    
    itemList = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 400.0f, 100.0f, 20.0f)];
    if (itemList != nil)
    {
        itemList.backgroundColor = [UIColor orangeColor];
        itemList.text = @"List of items";
        itemList.textAlignment = UITextAlignmentLeft;
        itemList.textColor = [UIColor whiteColor];
    }
    [self.view addSubview:itemList];
    
    itemListText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 420.0f, 320.0f, 40.0f)];
    if (itemListText != nil)
    {
        itemListText.backgroundColor = [UIColor darkGrayColor];
        itemListText.text = itemText;
        itemListText.textAlignment = UITextAlignmentCenter;
        itemListText.textColor = [UIColor yellowColor];
        itemListText.numberOfLines = 2;
    }
    [self.view addSubview:itemListText];
    
    
    
    
    
    
    
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
