//
//  LIExceptionHandler.m
//  AlgoRun
//
//  Created by Judau on 2022/02/19.
//

#import <Foundation/Foundation.h>

@interface LIExceptionHandler : NSObject
+ (BOOL)catchExceptionWithTryBlock:(__attribute__((noescape)) void(^ __nonnull)(void))tryBlock
                             error:(NSError *__nullable __autoreleasing *__nullable)error;
@end

@implementation LIExceptionHandler

+ (BOOL)catchExceptionWithTryBlock:(__attribute__((noescape)) void(^ __nonnull)(void))tryBlock
                             error:(NSError *__nullable __autoreleasing *__nullable)error
{
    @try {
        tryBlock();
        return YES;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:exception.name code:-9 userInfo:exception.userInfo];
        return NO;
    }
}

@end
