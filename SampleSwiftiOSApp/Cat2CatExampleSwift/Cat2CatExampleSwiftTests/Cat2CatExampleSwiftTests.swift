//
//  Cat2CatExampleSwiftTests.swift
//  Cat2CatExampleSwiftTests
//
//  Created by Isaac Greenspan on 10/29/14.
//  Copyright (c) 2014 Vokal. All rights reserved.
//

import UIKit
import XCTest

class Cat2CatExampleSwiftTests: XCTestCase {
    
    /// Tests the assumption that a .launchimage *does* return an image when using imageNamed:
    func testLaunchImagesDoReturnImages() {
        XCTAssertNotNil(UIImage(named:"LaunchImage"), "Launch image is nil!")
    }
    
    /// Tests that the image data retrieved from the two different methods is identical.
    func testMethodImageAndImageNamedAreEqual() {
        guard let imageNamed = UIImage(named:"US Capitol") else {
            XCTFail("Named image did not unwrap!")
            return
        }
        
        let methodRetreived = UIImage.ac_US_Capitol()
        
        let imageNamedData = imageNamed.pngData()
        let methodReterivedData = methodRetreived.pngData()
        
        //Compare the data of the two images. Note that comparing the images directly doesn't work since
        //that tests whether they're the same instance, not whether they have identical data.
        XCTAssertEqual(imageNamedData, methodReterivedData, "Capitol images are not equal!")
    }
    
    /// Tests that our pipe-seperation of items from seperate catalogs is working by making sure at least one image from each catalog has made it in.
    func testAtLeastOneImageFromEachCatalogWorks() {
        XCTAssertNotNil(UIImage.ac_No_C(), "No C Image was nil!")
        XCTAssertNotNil(UIImage.ac_Golden_Gate_Bridge(), "Golden Gate Bridge image was nil!")
    }
    
    /// Tests that all images from the Photos Asset Catalog are working.
    func testAllImagesFromPhotosWork() {
        XCTAssertNotNil(UIImage.ac_Golden_Gate_Bridge(), "Golden Gate Bridge image was nil!")
        XCTAssertNotNil(UIImage.ac_US_Capitol(), "US Capitol image was nil!")
        XCTAssertNotNil(UIImage.ac_Venice_Beach(), "Venice Beach image was nil!")
        XCTAssertNotNil(UIImage.ac_Wrigley_Field(), "Wrigley Field image was nil!")
    }
    
    /// Tests that all images from the Icons Asset Catalog are working.
    func testThatAllImagesFromIconsWork() {
        XCTAssertNotNil(UIImage.ac_No_C(), "No C image was nil!")
        XCTAssertNotNil(UIImage.ac_SidewaysC(), "Sideways C was nil!")
        XCTAssertNotNil(UIImage.ac_PD_in_circle(), "PD in circle was nil!")
        XCTAssertNotNil(UIImage.ac_PD_Dark_Circle(), "PD in dark circle was nil")
    }
    
}
