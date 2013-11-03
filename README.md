iOS-ChatTableView-CTTableView-Sample-SourceCode
===============================================

iOS Chat TableView Sample


This is iMessage Style Source Code of iPhone.

Use
===

1. CTTableView Init

2. CTTableView Set Delegate

```
  // CTTableView *chatTableView 


  chatTableView.delegateCustom = self;
```

3. CTTableView Required Method

```
- (NSArray *)getData
{
  CTTableModel *data = [[CTTableModel alloc] init];

  data.cUserName = @"devjin0617";
  data.cContent = @"Hello World! This is iOS ChatTableView SourceCode";
  data.isUserName = YES;
  data.cUserImage = [UIImage imagenamed:@"userImg.png"];
  
  NSMutableArray *returnData = [[NSMutableArray alloc] init]; 
  [returnData addObject:data];
  
  return returnData;
}
```

  return data is CTTableModel Array

```
@interface CTDataModel : NSObject
@property(nonatomic, copy) NSString *cUserName;         // User Name
@property(nonatomic, copy) NSString *cContent;          // Chat Text
@property(nonatomic, strong) UIImage *cUserImage;       // User Image
@property(nonatomic, assign) BOOL isUserName;           // YES : me , NO : friend

@end
```

4. CTTableView Start

```
- (void)viewDidLoad
{
  [super viewDidLoad];

  chatTableView.delegateCustom = self;
  
  [chatTableView initTableView];  // Chat TableView Start Method.
}
```

LICENSE
=======

LICENSE file.

