/*********************************************************************************
 
 © Copyright 2010, Isaac Greenspan
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 *********************************************************************************/

//
//  IGEscapePassingDatePicker.m
//

#import "IGEscapePassingDatePicker.h"
#import <Carbon/Carbon.h> // just to get kVK_Escape constant, doesn't need Carbon linked in

@implementation IGEscapePassingDatePicker

- (void)keyDown:(NSEvent *)theEvent
{
	if ([theEvent keyCode] == kVK_Escape) {
		[[self nextResponder] keyDown:theEvent];
	} else {
		[super keyDown:theEvent];
	}
}

@end
