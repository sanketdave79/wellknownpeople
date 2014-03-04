//
//  SDViewController.h
//  wellknownpeople
//
//  Created by sanket on 20/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SDViewController : UIViewController {
    NSString *stringTest;
    
    NSMutableArray *statusArray, *categoryArray, *infoArray,*namesArray, *countryArray, *ageArray, *imageNamesArray, *descriptionArray, *chosenCategoriesArray;
    
    NSMutableArray *categories;
    
    NSMutableArray *sportsmen, *singers, *actors, *scientists, *politicians, *architects, *artists, *businessmen, *armygenerals, *leaders;
    

    int randomCategoriesArraynumber ;
    int randomProfileArraynumber ;
    
    int index;
    
}

- (NSMutableArray *)chosenCategoriesToDisplay;

- (NSMutableArray *)displayProfile;




@property (weak, nonatomic) IBOutlet UIButton *clickButton;


@property (weak, nonatomic) IBOutlet UIButton *shakeButton;

@property (weak, nonatomic) IBOutlet UIButton *settingsButton;

@property (weak, nonatomic) IBOutlet UIButton *infoButton;

@property (weak, nonatomic) IBOutlet UIButton *moreappButton;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *countryLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;

@end
