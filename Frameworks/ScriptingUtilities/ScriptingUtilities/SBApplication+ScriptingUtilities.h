//
//  SBApplication+ScriptingUtilities.h
//  ScriptingUtilities
//
//  Created by Tony Ingraldi on 2/13/15.
//  Copyright (c) 2015 Majesty Software. All rights reserved.
//

#import <ScriptingBridge/ScriptingBridge.h>

@interface SBApplication (ScriptingUtilities)

- (id)objectForScriptingClass:(NSString *)classString withProperties:(NSDictionary *)properties;

@end
