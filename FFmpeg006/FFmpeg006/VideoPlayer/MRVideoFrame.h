//
//  MRVideoFrame.h
//  FFmpeg006
//
//  Created by Matt Reach on 2018/1/20.
//  Copyright © 2018年 Awesome FFmpeg Study Demo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <libavutil/frame.h>

@interface MRVideoFrame : NSObject

@property (assign, nonatomic) AVFrame *frame;
@property (assign, nonatomic) float duration;
@property (assign, nonatomic) BOOL eof;

@end
