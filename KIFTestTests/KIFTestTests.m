#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

@interface KIFTestTests : KIFTestCase

@end

@implementation KIFTestTests

- (void)setUp
{
  [super setUp];
  
  //Comment this out and observe difference in button selection styles
  [tester acknowledgeSystemAlert];
}

- (void)testExample
{
  [tester tapViewWithAccessibilityLabel:@"Button 2"];
  [tester waitForViewWithAccessibilityLabel:@"test 2"];
  [tester waitForTimeInterval:10];
}

@end