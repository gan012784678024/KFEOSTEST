//
//  EOSModel.m
//  wallet
//
//  Created by G 几点 on 2019/3/15.
//  Copyright © 2019 Lok. All rights reserved.
//

#import "EOSModel.h"

@implementation EOSModel

+ (instancetype)sharedManager {
    static EOSModel *manager = nil;
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

+ (void)eosBaseUrl{

}

- (NSString *)eosBaseStr{
    if (!_eosBaseStr) {
        _eosBaseStr = @"http://api.eosbeijing.one/v1";
        
    }
    return _eosBaseStr;
}

- (void)setErrorNum:(NSInteger)errorNum{
    _errorNum = errorNum;
    if (_errorNum == 10) {
        [EOSModel eosBaseUrl];
    }
}
@end
