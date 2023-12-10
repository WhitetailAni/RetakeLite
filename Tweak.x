#import <TextInput/TIAutocorrectionList.h>
#import <TextInput/TIKeyboardCandidate.h>
#import <TextInput/TIKeyboardCandidateSingle.h>
#import <TextInput/TIZephyrCandidate.h>
#import <TextInput/TIKeyboardInputManager.h>

#import <TextInputUI/TUICandidateLabel.h>
#import <TextInputUI/TUIPredictionView.h>
#import <TextInputUI/TUISuggestionCandidateCell.h>
#import <TextInputUI/TUITypedStringCandidate.h>
#import <TextInputUI/TUICandidateBaseCell.h>

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZeframHook : NSObject
+ (TIAutocorrectionList *)zephyr;
+ (TIAutocorrectionList *)keyboard;
@end

@implementation ZeframHook
+ (TIAutocorrectionList *)zephyr {

    TIKeyboardCandidate *zephyr = [self candidateSingle];
    
    return [TIAutocorrectionList autocorrectionListWithCandidates:@[zephyr, zephyr, zephyr, zephyr, zephyr] shouldAcceptTopCandidate:YES];
}

+ (TIZephyrCandidate *)zephyrSingle {
    NSString *string = @"zefram";

    TIZephyrCandidate *blimp = [[TIZephyrCandidate alloc] init];
    blimp.continuousPathConversion = YES;
    [blimp setExcessPathRatio:1.9];
    blimp.dynamicUsageCount = 420;
    [blimp setDynamicPenaltyCount:2];
    blimp.label = @"zefram";
    blimp.alternativeText = string;
    blimp.annotationText = string;
    //[blimp setConfidence:2];
    //[blimp setShouldAccept:YES];
    [blimp setIsFromPhraseDictionary:NO];
    //[blimp setWordScore:8];
    //[blimp setGeometryScore:69.0];
    [blimp setCandidate:string];
    
    return blimp;
}

+ (TIKeyboardCandidateSingle *)candidateSingle {
    NSString *string = @"zefram";
    
    TIKeyboardCandidateSingle *aero = [[TIKeyboardCandidateSingle alloc] init];
    aero.alternativeText = string;
    aero.annotationText = string;
    aero.candidate = string;
    
    aero.label = string;
    
    return aero;
}

+ (TIKeyboardCandidate *)kb {
    NSString *string = @"zefram";

    TIKeyboardCandidate *cherry = [[TIKeyboardCandidate alloc] init];
    [cherry setAlternativeText:string];
    [cherry setAnnotationText:string];
    [cherry setLabel:string];
    
    return cherry;
}

+ (TIAutocorrectionList *)keyboard {
    TIKeyboardCandidate *zeppelin = [self kb];
    
    return [[TIAutocorrectionList alloc] initWithCandidates:@[zeppelin, zeppelin, zeppelin, zeppelin, zeppelin]];
}

@end


%hook TIAutocorrectionList

+ (TIAutocorrectionList *)listWithPredictions:(id)arg1 proactiveTriggers:(id)arg2 {
    return [ZeframHook zephyr];
}

+ (TIAutocorrectionList *)listWithPredictions:(id)arg1 emojiList:(id)arg2 proactiveTriggers:(id)arg3 {
    return [ZeframHook zephyr];
}


+ (TIAutocorrectionList *)listWithAutocorrection:(id)arg1 {
    return [ZeframHook zephyr];
}

+ (TIAutocorrectionList *)listWithAutocorrection:(id)arg1 predictions:(id)arg2 {
    return [ZeframHook zephyr];
}

+ (TIAutocorrectionList *)listWithAutocorrection:(id)arg1 predictions:(id)arg2 emojiList:(id)arg3 {
    return [ZeframHook zephyr];
}

+ (TIAutocorrectionList *)listWithAutocorrection:(id)arg1 predictions:(id)arg2 emojiList:(id)arg3 proactiveTriggers:(id)arg4 {
    return [ZeframHook zephyr];
}

%end

%hook TIZephyrCandidate

-(id)initWithCandidate:(id)arg1 forInput:(id)arg2 wordOriginFeedbackID:(unsigned long long)arg3 {
    return [ZeframHook zephyrSingle];
}

-(id)initWithCandidate:(id)arg1 forInput:(id)arg2 rawInput:(id)arg3 wordOriginFeedbackID:(unsigned long long)arg4  {
    return [ZeframHook zephyrSingle];
}

-(id)initWithCandidate:(id)arg1 forInput:(id)arg2 rawInput:(id)arg3 wordOriginFeedbackID:(unsigned long long)arg4 usageTrackingMask:(unsigned)arg5 sourceMask:(unsigned)arg6 {
    return [ZeframHook zephyrSingle];
}

-(id)initWithCandidate:(id)arg1 forInput:(id)arg2 rawInput:(id)arg3 wordOriginFeedbackID:(unsigned long long)arg4 usageTrackingMask:(unsigned)arg5 sourceMask:(unsigned)arg6 secureContentCandidate:(BOOL)arg7 proactiveTrigger:(id)arg8 proactivePredictedItem:(id)arg9 responseKitCategory:(id)arg10 {
    return [ZeframHook zephyrSingle];
}

-(id)initWithCandidate:(id)arg1 forInput:(id)arg2 rawInput:(id)arg3 wordOriginFeedbackID:(unsigned long long)arg4 usageTrackingMask:(unsigned)arg5 sourceMask:(unsigned)arg6 secureContentCandidate:(BOOL)arg7 proactiveTrigger:(id)arg8 proactivePredictedItem:(id)arg9 {
    return [ZeframHook zephyrSingle];
}

-(id)initWithCandidate:(id)arg1 responseKitCategory:(id)arg2 {
    return [ZeframHook zephyrSingle];
}

-(id)candidateByReplacingWithCandidate:(id)arg1 input:(id)arg2 label:(id)arg3 {
    return [ZeframHook zephyrSingle];
}

%end

%hook TIKeyboardCandidateSingle

+(id)candidateWithUnchangedInput:(id)arg1 {
    return [ZeframHook candidateSingle];
}

+(id)candidateWithCandidate:(id)arg1 forInput:(id)arg2 {
    return [ZeframHook candidateSingle];
}

+(id)candidateWithCandidate:(id)arg1 forInput:(id)arg2 extensionCandidate:(BOOL)arg3 {
    return [ZeframHook candidateSingle];
}

+(id)candidateWithCandidate:(id)arg1 forInput:(id)arg2 customInfoType:(unsigned long long)arg3 {
    return [ZeframHook candidateSingle];
}

+(id)candidateWithCandidate:(id)arg1 forInput:(id)arg2 cursorMovement:(long long)arg3 {
    return [ZeframHook candidateSingle];
}

+(id)secureCandidateForInput:(id)arg1 slotID:(unsigned)arg2 {
    return [ZeframHook candidateSingle];
}

+(id)secureCandidateForInput:(id)arg1 slotID:(unsigned)arg2 customInfoType:(unsigned long long)arg3 {
    return [ZeframHook candidateSingle];
}

+(id)secureCandidateForInput:(id)arg1 slotID:(unsigned)arg2 customInfoType:(unsigned long long)arg3 applicationKey:(id)arg4 applicationBundleId:(id)arg5 altDSID:(id)arg6 {
    return [ZeframHook candidateSingle];
}

-(void)setCandidate:(NSString *)arg1 {
    %orig(@"zefram");
}

-(id)initWithCandidate:(id)arg1 {
    return [ZeframHook candidateSingle];
}

-(id)initWithCandidate:(id)arg1 forInput:(id)arg2 {
    return [ZeframHook candidateSingle];
}

-(id)initWithCandidate:(id)arg1 forInput:(id)arg2 rawInput:(id)arg3 {
    return [ZeframHook candidateSingle];
}

-(id)initWithCandidate:(id)arg1 forInput:(id)arg2 rawInput:(id)arg3 extensionCandidate:(BOOL)arg4 {
    return [ZeframHook candidateSingle];
}

-(id)initWithUnchangedInput:(id)arg1 {
    return [ZeframHook candidateSingle];
}

-(id)initWithResponseCandidate:(id)arg1 {
    return [ZeframHook candidateSingle];
}

%end

%hook TIKeyboardCandidate

-(id)candidateByReplacingWithCandidate:(id)arg1 input:(id)arg2 {
    return [ZeframHook kb];
}

-(id)candidateByReplacingWithCandidate:(id)arg1 {
    return [ZeframHook kb];
}

-(id)candidatebyReplacingWithCandidate:(id)arg1 input:(id)arg2 rawInput:(id)arg3 {
    return [ZeframHook kb];
}

-(id)ui_supplementalItems {
    id result = %orig;
    
    NSString *return1 = NSStringFromClass([result class]);
    
    NSLog(@"retakelite return type: %@", return1);
    NSLog(@"retakelite return value: %@", result);
    
    return result;
}

-(BOOL)shouldAccept {
    return YES;
}

-(NSString *)candidate {
    return @"zefram";
}

-(NSString *)label {
    return @"zefram";
}

-(BOOL)isAutocorrection {
    return YES;
}

-(BOOL)isAddress {
    return NO;
}

-(unsigned long long)deleteCount {
    return 1;
}

-(BOOL)isResponseKitCandidate {
    return YES;
}

%end

%hook TIKeyboardInputManager

-(id)autocorrectionCandidateForInput:(id)arg1 withCandidate:(id)arg2 insertingSpace:(id)arg3 sharedPrefixLength:(id)arg4 {
    NSLog(@"retakelite TIKeyboardInputManager autocorrectionCandidateForInput");
    
    id result = %orig(arg1, arg2, arg3, arg4);
    
    NSString *return1 = NSStringFromClass([result class]);
    
    NSLog(@"return type: %@", return1);
    NSLog(@"return value: %@", result);
    
    NSString *orig1 = NSStringFromClass([arg1 class]);

    NSLog(@"arg1 Type: %@", orig1);
    NSLog(@"arg1 Value: %@", arg1);
    
    NSString *orig2 = NSStringFromClass([arg2 class]);

    NSLog(@"arg2 Type: %@", orig2);
    NSLog(@"arg2 Value: %@", arg2);
    
    NSString *orig3 = NSStringFromClass([arg3 class]);

    NSLog(@"arg3 Type: %@", orig3);
    NSLog(@"arg3 Value: %@", arg3);
    
    NSString *orig4 = NSStringFromClass([arg4 class]);

    NSLog(@"arg4 Type: %@", orig4);
    NSLog(@"arg4 Value: %@", arg4);
    
    NSString *gatheredInfo = [@"TIKeyboardInputManager, autocorrectionCandidateForInput" stringByAppendingString:[return1 stringByAppendingString:[orig1 stringByAppendingString:[orig2 stringByAppendingString:[orig3 stringByAppendingString:orig4]]]]];
    
    NSLog(@"retakelite: the master log is %@", gatheredInfo);
    
    return result;
}

-(id)completionCandidates:(id)arg1 {
    NSLog(@"retakelite TIKeyboardInputManager completionCandidates");
    
    id result = %orig(arg1);
    
    NSString *return1 = NSStringFromClass([result class]);
    
    NSLog(@"return type: %@", return1);
    NSLog(@"return value: %@", result);
    
    NSString *orig1 = NSStringFromClass([arg1 class]);

    NSLog(@"arg1 Type: %@", orig1);
    NSLog(@"arg1 Value: %@", arg1);

    NSString *gatheredInfo = [@"TIKeyboardInputManager, autocorrectionCandidateForInput" stringByAppendingString:[return1 stringByAppendingString:orig1]];
    
    NSLog(@"retakelite: the master log is %@", gatheredInfo);
    
    return result;
}

+(id)autocorrectionListWithCandidateCount:(id)arg1 {
    NSLog(@"retakelite TIKeyboardInputManager completionCandidates");
    
    id result = %orig(arg1);
    
    NSString *return1 = NSStringFromClass([result class]);
    
    NSLog(@"return type: %@", return1);
    NSLog(@"return value: %@", result);
    
    NSString *orig1 = NSStringFromClass([arg1 class]);

    NSLog(@"arg1 Type: %@", orig1);
    NSLog(@"arg1 Value: %@", arg1);

    NSString *gatheredInfo = [@"TIKeyboardInputManager, autocorrectionCandidateForInput" stringByAppendingString:[return1 stringByAppendingString:orig1]];
    
    NSLog(@"retakelite: the master log is %@", gatheredInfo);
    
    return result;
}

-(id)generateAutocorrectionsWithKeyboardState:(id)arg1 candidateRange:(id)arg2 candidateHandler:(id)arg3 {
    NSLog(@"retakelite TIKeyboardInputManager generateAutocorrectionsWithKeyboardState");
    
    id result = %orig(arg1, arg2, arg3);
    
    NSString *return1 = NSStringFromClass([result class]);
    
    NSLog(@"return type: %@", return1);
    NSLog(@"return value: %@", result);
    
    NSString *orig1 = NSStringFromClass([arg1 class]);

    NSLog(@"arg1 Type: %@", orig1);
    NSLog(@"arg1 Value: %@", arg1);
    
    NSString *orig2 = NSStringFromClass([arg2 class]);

    NSLog(@"arg2 Type: %@", orig2);
    NSLog(@"arg2 Value: %@", arg2);
    
    NSString *orig3 = NSStringFromClass([arg3 class]);

    NSLog(@"arg3 Type: %@", orig3);
    NSLog(@"arg3 Value: %@", arg3);
    
    NSString *gatheredInfo = [@"TIKeyboardInputManager, autocorrectionCandidateForInput" stringByAppendingString:[return1 stringByAppendingString:[orig1 stringByAppendingString:[orig2 stringByAppendingString:orig3]]]];
    
    NSLog(@"retakelite: the master log is %@", gatheredInfo);
    
    return result;
}

%end

%hook TUITypedStringCandidate

-(void)setDisplayLabel:(NSString *)arg1 {
    %orig(@"zefram");
}

-(NSString *)displayLabel {
    return @"zefram";
}

+(id)typedStringCandidateWithLocale:(id)arg1 typedString:(id)arg2 rawTypedString:(id)arg3 {
    TUITypedStringCandidate *commandLineInterface = [[TUITypedStringCandidate alloc] init];
    commandLineInterface.displayLabel = @"zefram";
    return commandLineInterface;
}

-(id)label {
    id result = %orig;
    
    NSString *return1 = NSStringFromClass([result class]);
    
    NSLog(@"retakelite TUITypedStringCandidate label");
    NSLog(@"return type: %@", return1);
    NSLog(@"return value: %@", result);
    
    return result;
}

%end

%hook TUISuggestionCandidateCell

-(TIKeyboardCandidate *)candidate {
    return [ZeframHook kb];
}

-(void)setCandidate:(TIKeyboardCandidate *)arg1 {
    %orig([ZeframHook kb]);
}

-(void)setTextLabel:(UILabel *)arg1 {
    UILabel *arg2 = arg1;
    arg2.text = @"zefram";
    
    %orig(arg2);
}

-(UILabel *)textLabel {
    UILabel *label = [[UILabel alloc] init];
    
    label.text = @"zefram";
    
    return label;
}

%end

%hook TUIPredictionView
    
-(void)setAutocorrectionList:(id)arg1 animated:(BOOL)arg2 {
    %orig([ZeframHook zephyr], YES);
}
    
%end

%hook TUICandidateLabel

-(void)setTextColor:(UIColor *)arg1 {
    %orig([UIColor cyanColor]);
}

-(NSString *)text {
    return @"zefram";
}

-(void)setText:(NSString *)arg1 {
    return %orig(@"zefram");
}

-(UIColor *)textColor {
    return [UIColor cyanColor];
}

%end
