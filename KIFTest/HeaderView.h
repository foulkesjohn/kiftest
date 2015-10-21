@import UIKit;

@protocol HeaderViewDelegate <NSObject>

- (void)buttonPressed;

@end

@interface HeaderView : UICollectionReusableView

@property (nonatomic, weak) IBOutlet UIButton *button1;
@property (nonatomic, weak) IBOutlet UIButton *button2;
@property (nonatomic, weak) id<HeaderViewDelegate> delegate;

- (IBAction)buttonPressed:(UIButton *)button;

@end