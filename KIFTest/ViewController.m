#import "ViewController.h"
#import "Cell.h"
#import "HeaderView.h"

@interface ViewController () <UICollectionViewDataSource,
                              UICollectionViewDelegateFlowLayout,
                              HeaderViewDelegate>

@property (nonatomic, copy) NSArray *data;

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  self.data = @[@"test 1",
                @"test 2",
                @"test 3",
                @"test 4",
                @"test 5",
                @"test 6"];
  UINib *nib = [UINib nibWithNibName:@"HeaderView"
                              bundle:nil];
  [self.collectionView registerNib:nib
        forSupplementaryViewOfKind:UICollectionElementKindSectionHeader
               withReuseIdentifier:@"Header"];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section
{
  return self.data.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
  Cell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell"
                                                         forIndexPath:indexPath];
  cell.label.text = self.data[indexPath.row];
  return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView
           viewForSupplementaryElementOfKind:(NSString *)kind
                                 atIndexPath:(NSIndexPath *)indexPath
{
  HeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader
                                                              withReuseIdentifier:@"Header"
                                                                     forIndexPath:indexPath];
  headerView.delegate = self;
  return headerView;
}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
  return CGSizeMake(self.view.frame.size.width, 50);
}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
referenceSizeForHeaderInSection:(NSInteger)section
{
  return CGSizeMake(self.view.frame.size.width, 50);
}

- (void)buttonPressed
{
  [self.collectionView reloadData];
}

@end