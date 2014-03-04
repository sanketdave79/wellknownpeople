//
//  SDViewController.m
//  wellknownpeople
//
//  Created by sanket on 20/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import "SDViewController.h"


@interface SDViewController ()

@end

@implementation SDViewController

- (void)viewDidLoad
{
    
    self.settingsButton.layer.cornerRadius = 12.0f;
//    self.settingsButton.layer.borderColor = [[UIColor blackColor] CGColor];
//    self.settingsButton.layer.borderWidth = 1.0f;
    
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.30f green:0.67f blue:0.09f alpha:1.00f];
    
    self.clickButton.layer.cornerRadius = 12.0f;
    self.shakeButton.layer.cornerRadius = 12.0f;
    self.settingsButton.layer.cornerRadius = 12.0f;
     self.infoButton.layer.cornerRadius = 12.0f;
     self.moreappButton.layer.cornerRadius = 12.0f;
    
    leaders = [NSMutableArray array];
    actors = [NSMutableArray array];
    singers = [NSMutableArray array];
    
    
    categoryArray = [NSMutableArray arrayWithObjects:@"leaders",@"singers",@"actors",@"actors" ,nil];
    
    statusArray = [NSMutableArray arrayWithObjects:@"active",@"active", @"active",@"active" ,nil];
    


    namesArray = [NSMutableArray arrayWithObjects:@"0Mahatma Gandhi",@"1Singer name",@"2Actors name",@"Second Actor" ,nil];
  NSLog(@"name %@", namesArray);

    countryArray = [NSMutableArray arrayWithObjects:@"0India",@"1US",@"2NZ",@"zimb", nil];
    
    ageArray = [NSMutableArray arrayWithObjects:@"078",@"178",@"278",@"75",nil];
    
    imageNamesArray = [NSMutableArray arrayWithObjects:@"0gandhi.jpg",@"1gandhi.jpg",@"2gandhi.jpg",@"2gandhi.jpg", nil];
    
    descriptionArray = [NSMutableArray arrayWithObjects:@"0Prominent leader of Indian Nationalism in British ruled India",@"1Singer Description", @"2Actor Description",@"second actor description",  nil];
    
    
    for (int x = 0; x<[categoryArray count]; x++) {
        if ([categoryArray[x] isEqualToString:@"leaders"]) {
            leaders = [NSArray arrayWithObjects:statusArray[x], categoryArray[x],namesArray[x], countryArray[x], ageArray[x], imageNamesArray[x], descriptionArray[x], nil];
            
            [leaders addObject:categoryArray[x]];
            
            
        }
        
        else if ([categoryArray[x] isEqualToString:@"singers"]){
            
            singers = [NSArray arrayWithObjects:statusArray[x],categoryArray[x],namesArray[x], countryArray[x], ageArray[x], imageNamesArray[x], descriptionArray[x], nil];
        }
        
        else if ([categoryArray[x] isEqualToString:@"actors"]){
            
            actors = [NSMutableArray arrayWithObjects:statusArray[x],categoryArray[x],namesArray[x], countryArray[x], ageArray[x], imageNamesArray[x], descriptionArray[x], nil];
        }
        
    }
    
    NSLog(@"leaders : %@", actors);
    
    
    
 
    
    
    
      categories = [NSMutableArray arrayWithObjects:leaders , singers, actors,/*scientists, politicians, architects, artists, businessmen, armygenerals, leaders,*/   nil];
    
  
   chosenCategoriesArray = [[NSMutableArray alloc] init];
    
 
  

    [self displayProfile];

    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSMutableArray *)chosenCategoriesToDisplay
{
    
    
    NSLog(@"Number of  categories are %d ", [categories count]);
   

    for (int i=0; i<[categories count]; i++) {
      
        if ([categories[i][0] isEqualToString:@"active"] ) {
            
            NSLog(@"If category is active %@ ", categories[i][0]);
            
            [chosenCategoriesArray addObject:categories[i]];
            
          
          
            
        }
    }
   
//randomCategoriesArraynumber = arc4random() % [chosenCategoriesArray count];
    
    
    
   // NSLog(@"random number is %d", randomCategoriesArraynumber);
    
      NSLog(@"Number of Chosen categories are %d ", [chosenCategoriesArray count]);
    return chosenCategoriesArray;
}

-(NSMutableArray *)displayProfile
{
    
    chosenCategoriesArray = self.chosenCategoriesToDisplay;
    
    
    NSLog(@"this are categories that are active  %@",chosenCategoriesArray);
//
//    for (int i = 0; i < 100; i++) {
//        randomCategoriesArraynumber = arc4random() % [chosenCategoriesArray count];
//        NSLog(@"random number  %d",randomCategoriesArraynumber);
//
//    }
    
    randomCategoriesArraynumber = arc4random() % [chosenCategoriesArray count];
    
    
    
    
    
    NSLog(@"Randomly chosen category array number  is %d   -----  categories count : %d", randomCategoriesArraynumber, [categories[randomCategoriesArraynumber] count]);
    
    
    
    randomProfileArraynumber = arc4random() % [categories[randomCategoriesArraynumber] count];
    
    
    
    
    
   NSLog(@"this array has to be displayed %@",categories[randomCategoriesArraynumber]);
   NSLog(@"random profile array number is %d", randomProfileArraynumber);
    
    return categories[randomCategoriesArraynumber];
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
