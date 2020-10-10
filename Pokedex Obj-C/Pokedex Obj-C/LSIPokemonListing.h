//
//  LSIPokemonListing.h
//  Pokedex Obj-C
//
//  Created by Waseem Idelbi on 10/10/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIPokemonListing : NSObject

@property (nonatomic, nonnull) NSString *name;
@property (nonatomic, nonnull) NSURL *url;

- (instancetype)initWithName:(NSString *)name url:(NSURL *)url;

@end

NS_ASSUME_NONNULL_END
