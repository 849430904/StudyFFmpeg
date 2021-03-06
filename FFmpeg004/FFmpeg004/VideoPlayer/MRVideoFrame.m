//
//  MRVideoFrame.m
//  FFmpeg004
//
//  Created by Matt Reach on 2018/1/29.
//  Copyright © 2018年 Awesome FFmpeg Study Demo. All rights reserved.
//

#import "MRVideoFrame.h"

@implementation MRVideoFrame

- (void)setSampleBuffer:(CMSampleBufferRef)sampleBuffer
{
    if (sampleBuffer != _sampleBuffer) {
        if (_sampleBuffer) {
            CFRelease(sampleBuffer);
        }
        CFRetain(sampleBuffer);
        _sampleBuffer = sampleBuffer;
    }
}

- (void)setFrame:(AVFrame *)frame
{
    if (frame != _frame) {
        if (_frame) {
            av_frame_unref(_frame);
        }else{
            _frame = av_frame_alloc();
        }
        if (frame) {
            av_frame_ref(_frame, frame);
        }
    }
}

- (void)dealloc
{
    if (_sampleBuffer) {
        CFRelease(_sampleBuffer);
    }
    
    if (_frame) {
        av_frame_free(&_frame);
    }
}

@end
