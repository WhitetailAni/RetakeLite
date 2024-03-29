/*
* This header is generated by classdump-dyld 1.0
* on Monday, March 13, 2023 at 1:36:29 AM Eastern European Standard Time
* Operating System: Version 16.3 (Build 20D47)
* Image Source: /System/Library/PrivateFrameworks/TextInputUI.framework/TextInputUI
* classdump-dyld is licensed under GPLv3, Copyright © 2013-2016 by Elias Limneos.
*/

#import <TextInputUI/TextInputUI-Structs.h>
#import <UIKitCore/UIView.h>
#import <TextInputUI/TUIAssistantButtonBarViewDelegate.h>
#import <TextInputUI/TUISystemInputAssistantPageViewDelegate.h>

@protocol TUISystemInputAssistantViewDelegate, TUISystemInputAssistantStyle, _UIButtonBarAppearanceDelegate;
@class UIKBRenderConfig, UIKBVisualEffectView, TUIAssistantButtonBarView, TUISystemInputAssistantLayout, UIView, UITextInputAssistantItem, TUISystemInputAssistantPageView, TUISystemInputAssistantLayoutStandard, TUIPredictionView, TUICandidateView, NSString;

@interface TUISystemInputAssistantView : UIView <TUIAssistantButtonBarViewDelegate, TUISystemInputAssistantPageViewDelegate> {

	BOOL _buttonBarItemsExpanded;
	BOOL _needsValidation;
	int _needsValidationGuard;
	BOOL _backgroundVisible;
	BOOL _centerViewHidden;
	BOOL _scrollEnabled;
	BOOL _showsExpandableButtonBarItems;
	BOOL _hidesExpandableButton;
	BOOL _showsButtonBarItemsInline;
	BOOL _isTransitioning;
	UIKBRenderConfig* _renderConfig;
	UIKBVisualEffectView* _backdropView;
	TUIAssistantButtonBarView* _leftButtonBar;
	TUIAssistantButtonBarView* _rightButtonBar;
	id<TUISystemInputAssistantViewDelegate> _delegate;
	TUISystemInputAssistantLayout* _layout;
	id<TUISystemInputAssistantStyle> _style;
	UIView* _centerView;
	UIView* _secondaryView;
	double _centerViewWidth;
	UITextInputAssistantItem* _inputAssistantItem;
	UITextInputAssistantItem* _systemInputAssistantItem;
	TUIAssistantButtonBarView* _unifiedButtonBar;
	TUISystemInputAssistantPageView* _centerPageView;
	TUISystemInputAssistantLayoutStandard* _defaultLayout;
	id<_UIButtonBarAppearanceDelegate> _appearanceDelegate;
	UIEdgeInsets _overrideSafeAreaInsets;

}

@property (nonatomic,readonly) TUIPredictionView * predictionView; 
@property (nonatomic,readonly) TUICandidateView * candidateView; 
@property (nonatomic,readonly) CGRect containerFrame; 
@property (nonatomic,retain) UIKBVisualEffectView * backdropView;                                  //@synthesize backdropView=_backdropView - In the implementation block
@property (nonatomic,retain) TUIAssistantButtonBarView * unifiedButtonBar;                         //@synthesize unifiedButtonBar=_unifiedButtonBar - In the implementation block
@property (nonatomic,retain) TUISystemInputAssistantPageView * centerPageView;                     //@synthesize centerPageView=_centerPageView - In the implementation block
@property (nonatomic,retain) TUISystemInputAssistantLayoutStandard * defaultLayout;                //@synthesize defaultLayout=_defaultLayout - In the implementation block
@property (nonatomic,retain) id<_UIButtonBarAppearanceDelegate> appearanceDelegate;                //@synthesize appearanceDelegate=_appearanceDelegate - In the implementation block
@property (nonatomic,retain) UIKBRenderConfig * renderConfig;                                      //@synthesize renderConfig=_renderConfig - In the implementation block
@property (nonatomic,retain) TUIAssistantButtonBarView * leftButtonBar;                            //@synthesize leftButtonBar=_leftButtonBar - In the implementation block
@property (nonatomic,retain) TUIAssistantButtonBarView * rightButtonBar;                           //@synthesize rightButtonBar=_rightButtonBar - In the implementation block
@property (assign,nonatomic,__weak) id<TUISystemInputAssistantViewDelegate> delegate;              //@synthesize delegate=_delegate - In the implementation block
@property (nonatomic,retain) TUISystemInputAssistantLayout * layout;                               //@synthesize layout=_layout - In the implementation block
@property (nonatomic,retain) id<TUISystemInputAssistantStyle> style;                               //@synthesize style=_style - In the implementation block
@property (assign,nonatomic) BOOL backgroundVisible;                                               //@synthesize backgroundVisible=_backgroundVisible - In the implementation block
@property (assign,nonatomic) UIEdgeInsets overrideSafeAreaInsets;                                  //@synthesize overrideSafeAreaInsets=_overrideSafeAreaInsets - In the implementation block
@property (nonatomic,retain) UIView * centerView;                                                  //@synthesize centerView=_centerView - In the implementation block
@property (nonatomic,retain) UIView * secondaryView;                                               //@synthesize secondaryView=_secondaryView - In the implementation block
@property (assign,nonatomic) BOOL centerViewHidden;                                                //@synthesize centerViewHidden=_centerViewHidden - In the implementation block
@property (assign,nonatomic) BOOL scrollEnabled;                                                   //@synthesize scrollEnabled=_scrollEnabled - In the implementation block
@property (nonatomic,readonly) BOOL showsCenterView; 
@property (assign,nonatomic) double centerViewWidth;                                               //@synthesize centerViewWidth=_centerViewWidth - In the implementation block
@property (assign,nonatomic) BOOL showsExpandableButtonBarItems;                                   //@synthesize showsExpandableButtonBarItems=_showsExpandableButtonBarItems - In the implementation block
@property (assign,nonatomic) BOOL hidesExpandableButton;                                           //@synthesize hidesExpandableButton=_hidesExpandableButton - In the implementation block
@property (assign,nonatomic) BOOL showsButtonBarItemsInline;                                       //@synthesize showsButtonBarItemsInline=_showsButtonBarItemsInline - In the implementation block
@property (nonatomic,retain) UITextInputAssistantItem * inputAssistantItem;                        //@synthesize inputAssistantItem=_inputAssistantItem - In the implementation block
@property (nonatomic,readonly) BOOL isInputAssistantItemHidden; 
@property (nonatomic,retain) UITextInputAssistantItem * systemInputAssistantItem;                  //@synthesize systemInputAssistantItem=_systemInputAssistantItem - In the implementation block
@property (nonatomic,readonly) BOOL isTransitioning;                                               //@synthesize isTransitioning=_isTransitioning - In the implementation block
@property (readonly) unsigned long long hash; 
@property (readonly) Class superclass; 
@property (copy,readonly) NSString * description; 
@property (copy,readonly) NSString * debugDescription; 
-(void)layoutSubviews;
-(void)setNeedsValidation;
-(UIView *)centerView;
-(void)_setRenderConfig:(id)arg1 ;
-(BOOL)hidesExpandableButton;
-(UIEdgeInsets)safeAreaInsets;
-(BOOL)shouldSkipValidation;
-(TUISystemInputAssistantLayout *)layout;
-(void)setCenterPageView:(TUISystemInputAssistantPageView *)arg1 ;
-(void)setSystemInputAssistantItem:(UITextInputAssistantItem *)arg1 ;
-(BOOL)_swiftPlaygroundsWorkaroundEnabled;
-(void)setHidesExpandableButton:(BOOL)arg1 ;
-(UIEdgeInsets)overrideSafeAreaInsets;
-(void)setScrollEnabled:(BOOL)arg1 ;
-(void)assistantPageView:(id)arg1 didSwitchToSecondaryViewVisible:(BOOL)arg2 ;
-(BOOL)showsCenterView;
-(BOOL)centerViewHidden;
-(BOOL)showsExpandableButtonBarItems;
-(void)setDelegate:(id<TUISystemInputAssistantViewDelegate>)arg1 ;
-(void)transitionToLayout:(id)arg1 withStyle:(id)arg2 start:(/*^block*/id)arg3 ;
-(BOOL)pointInside:(CGPoint)arg1 withEvent:(id)arg2 ;
-(id)_currentLayoutViewSet;
-(id<_UIButtonBarAppearanceDelegate>)appearanceDelegate;
-(void)setRenderConfig:(UIKBRenderConfig *)arg1 ;
-(void)setLayout:(TUISystemInputAssistantLayout *)arg1 ;
-(BOOL)scrollEnabled;
-(id<TUISystemInputAssistantStyle>)style;
-(TUISystemInputAssistantPageView *)centerPageView;
-(TUIAssistantButtonBarView *)unifiedButtonBar;
-(void)setCenterViewWidth:(double)arg1 ;
-(void)_exchangeCenterViewIfNecessaryForCompatibility;
-(id)initWithFrame:(CGRect)arg1 ;
-(BOOL)validateIfNeeded;
-(void)setShowsExpandableButtonBarItems:(BOOL)arg1 ;
-(UIKBRenderConfig *)renderConfig;
-(TUIAssistantButtonBarView *)leftButtonBar;
-(void)setStyle:(id<TUISystemInputAssistantStyle>)arg1 ;
-(TUISystemInputAssistantLayoutStandard *)defaultLayout;
-(void)setInputAssistantItem:(UITextInputAssistantItem *)arg1 ;
-(void)setAppearanceDelegate:(id<_UIButtonBarAppearanceDelegate>)arg1 ;
-(void)_updateBarButtonGroupsIfNeeded;
-(void)setDefaultLayout:(TUISystemInputAssistantLayoutStandard *)arg1 ;
-(void)_updateStyle;
-(UITextInputAssistantItem *)inputAssistantItem;
-(UIView *)secondaryView;
-(id<TUISystemInputAssistantViewDelegate>)delegate;
-(void)setSecondaryView:(UIView *)arg1 ;
-(void)assistantButtonBarView:(id)arg1 wantsToShowCollapsedItemGroup:(id)arg2 fromButton:(id)arg3 ;
-(void)_updateVisualProvider;
-(void)setRightButtonBar:(TUIAssistantButtonBarView *)arg1 ;
-(void)setBackgroundVisible:(BOOL)arg1 ;
-(void)setShowsButtonBarItemsInline:(BOOL)arg1 ;
-(BOOL)isInputAssistantItemHidden;
-(id)_hostedCenterView;
-(UIKBVisualEffectView *)backdropView;
-(void)setBackdropView:(UIKBVisualEffectView *)arg1 ;
-(BOOL)_areButtonBarItemsVisible;
-(double)centerViewWidth;
-(BOOL)_shouldHostCenterViewOutsidePageView;
-(void)setCenterView:(UIView *)arg1 ;
-(TUICandidateView *)candidateView;
-(void)_updateExpandableButtonBarItems;
-(void)setCenterViewHidden:(BOOL)arg1 ;
-(id)_createUnifiedButtonBarIfNecessary;
-(TUIPredictionView *)predictionView;
-(void)setOverrideSafeAreaInsets:(UIEdgeInsets)arg1 ;
-(void)setUnifiedButtonBar:(TUIAssistantButtonBarView *)arg1 ;
-(void)_setButtonBarItemsExpanded:(BOOL)arg1 animationType:(unsigned long long)arg2 ;
-(void)_updateBarButtonGroups;
-(void)_didTapExpandButton:(id)arg1 ;
-(void)setButtonBarItemsExpanded:(BOOL)arg1 animated:(BOOL)arg2 ;
-(BOOL)showsButtonBarItemsInline;
-(TUIAssistantButtonBarView *)rightButtonBar;
-(UITextInputAssistantItem *)systemInputAssistantItem;
-(BOOL)isTransitioning;
-(BOOL)backgroundVisible;
-(CGRect)containerFrame;
-(void)setLeftButtonBar:(TUIAssistantButtonBarView *)arg1 ;
@end

