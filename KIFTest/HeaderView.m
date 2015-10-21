#import "HeaderView.h"

@implementation HeaderView

- (void)awakeFromNib
{
  [super awakeFromNib];
  self.button1.selected = TRUE;
}

- (void)buttonPressed:(UIButton *)button
{
  self.button1.selected = FALSE;
  self.button2.selected = FALSE;
  button.selected = TRUE;
  [self.delegate buttonPressed];
}

@end