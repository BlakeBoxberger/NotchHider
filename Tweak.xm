@interface _UIStatusBarForegroundView : UIView
@end

@interface CCUIStatusBar : UIView
@end

%hook _UIStatusBarForegroundView

- (instancetype)initWithFrame:(CGRect)arg1 {
	%orig;
	[self setBackgroundColor:UIColor.blackColor];
	return self;
}

- (UIColor *)backgroundColor {
	return UIColor.blackColor;
}

- (void)setBackgroundColor:(UIColor *)arg1 {
	%orig(UIColor.blackColor);
}

%end

%hook _UIStatusBar

- (NSInteger)style {
	return 1;
}

- (void)setStyle:(NSInteger)arg1 {
	%orig(1);
}

%end

%hook CCUIStatusBar

- (instancetype)initWithFrame:(CGRect)arg1 {
	%orig;
	[self setHidden:YES];
	return self;
}

%end
