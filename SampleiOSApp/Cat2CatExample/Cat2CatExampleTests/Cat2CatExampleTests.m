//
//  Cat2CatExampleTests.m
//  Cat2CatExampleTests
//
//  Created by Ellen Shapiro (Vokal) on 1/10/14.
//  Copyright (c) 2014 Vokal. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UIImage+AssetCatalog.h"

@interface Cat2CatExampleTests : XCTestCase

@end

@implementation Cat2CatExampleTests

/**
 *  Tests the assumption that a .launchimage *does* return an image when using imageNamed:
 */
- (void)testLaunchImagesDoReturnImages
{
    XCTAssertNotNil([UIImage imageNamed:@"LaunchImage"], @"Launch image is nil!");
}

/**
 *  Tests that the image data retrieved from the two different methods is identical.
 */
- (void)testMethodImageAndImageNamedAreEqual
{
    UIImage *imageNamed = [UIImage imageNamed:@"US Capitol"];
    UIImage *methodRetreived = [UIImage ac_US_Capitol];
    
    NSData *imageNamedData = UIImagePNGRepresentation(imageNamed);
    NSData *methodReterivedData = UIImagePNGRepresentation(methodRetreived);
    
    //Compare the data of the two images. Note that comparing the images directly doesn't work since
    //that tests whether they're the same instance, not whether they have identical data.
    XCTAssertTrue([imageNamedData isEqualToData:methodReterivedData], @"Capitol images are not equal!");
}

/**
 * Tests that our pipe-seperation of items from seperate catalogs is working by making sure at least
 * one image from each catalog has made it in.
 */
- (void)testAtLeastOneImageFromEachCatalogWorks
{
    XCTAssertNotNil([UIImage ac_No_C], @"No C Image was nil!");
    XCTAssertNotNil([UIImage ac_Golden_Gate_Bridge], @"Golden Gate Bridge image was nil!");
}

/**
 * Tests that all images from the Photos Asset Catalog are working.
 */
- (void)testAllImagesFromPhotosWork
{
    XCTAssertNotNil([UIImage ac_Golden_Gate_Bridge], @"Golden Gate Bridge image was nil!");
    XCTAssertNotNil([UIImage ac_US_Capitol], @"US Capitol image was nil!");
    XCTAssertNotNil([UIImage ac_Venice_Beach], @"Venice Beach image was nil!");
    XCTAssertNotNil([UIImage ac_Wrigley_Field], @"Wrigley Field image was nil!");
}

/**
 *  Tests that all images from the Icons Asset Catalog are working.
 */
- (void)testThatAllImagesFromIconsWork
{
    XCTAssertNotNil([UIImage ac_No_C], @"No C image was nil!");
    XCTAssertNotNil([UIImage ac_SidewaysC], @"Sideways C was nil!");
    XCTAssertNotNil([UIImage ac_PD_in_circle], @"PD in circle was nil!");
    XCTAssertNotNil([UIImage ac_PD_Dark_Circle], @"PD in dark circle was nil");
}

@end
