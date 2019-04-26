//
//  EOSModel.h
//  wallet
//
//  Created by G 几点 on 2019/3/15.
//  Copyright © 2019 Lok. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EOSModel : NSObject

@property (nonatomic, strong) NSString *eosBaseStr;
@property (nonatomic, assign) NSInteger errorNum;
+ (instancetype)sharedManager;

+ (void)eosBaseUrl;
@end

NS_ASSUME_NONNULL_END
