//
//  Constants.h
//  Oxwall Messenger
//
//  Created by Thomas Ochman on 2013-09-24.
//  Copyright (c) 2013 Underplot ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Constants : NSObject

+(void)setConstantValues:(NSString*)site setBaseURL:(NSString *)baseURL;
+(NSString*)getBaseUrl;
+(NSString*)getSiteName;

@end