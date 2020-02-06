//
//  AppDelegate.m
//  NSSpeechRecognizer_test
//
//  Created by Gregory Casamento on 2/4/20.
//  Copyright © 2020 Open Logic. All rights reserved.
//

#import "AppDelegate.h"
#import <AppKit/AppKit.h>

@interface AppDelegate ()
{
    NSSpeechRecognizer *speechRecognizer;
}

@property (retain) IBOutlet NSWindow *window;
@property (retain) IBOutlet NSButton *start;
@property (retain) IBOutlet NSButton *stop;
@property (retain) IBOutlet NSTextField *out;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    speechRecognizer = [[NSSpeechRecognizer alloc] init];
    NSLog(@"speechRecognizer = %@", speechRecognizer);
    speechRecognizer.delegate = self;
    speechRecognizer.commands = [NSArray arrayWithObjects:@"hello",
                                         @"test", nil];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification
{
    // Insert code here to tear down your application
}

- (IBAction) start:(id)sender
{
    [speechRecognizer startListening];
}

- (IBAction) stop:(id)sender
{
    [speechRecognizer stopListening];
}

- (void) speechRecognizer:(NSSpeechRecognizer *)sender didRecognizeCommand:(NSString *)command
{
    NSLog(@"########################## %@", command);
    [self.out setStringValue: command];
}
@end
