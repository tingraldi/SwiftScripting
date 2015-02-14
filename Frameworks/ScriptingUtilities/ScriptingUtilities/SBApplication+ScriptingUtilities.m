//
//  SBApplication+ScriptingUtilities.m
//  ScriptingUtilities
//
//  Created by Tony Ingraldi on 2/13/15.
//  Copyright (c) 2015 Majesty Software. All rights reserved.
//

#import "SBApplication+ScriptingUtilities.h"

@implementation SBApplication (ScriptingUtilities)

- (id)objectForScriptingClass:(NSString *)classString withProperties:(NSDictionary *)properties {
    Class _class = [self classForScriptingClass:classString];
    return [[_class alloc] initWithProperties:properties];
}

@end
