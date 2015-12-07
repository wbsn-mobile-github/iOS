/*

 Video Core
 Copyright (c) 2014 James G. Hurley

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.

 */

//
//  ViewController.swift
//  SampleBroadcaster-Swift
//
//  Created by Josh Lieberman on 4/11/15.
//  Copyright (c) 2015 videocore. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PLVideoPlayerControllerDelegate
{

    @IBOutlet weak var previewView: UIView!
    @IBOutlet weak var btnConnect: UIButton!
    let url = "rtmp://10.230.48.197:1935/live1/room1"
    
    let parameters = [
        PLVideoParameterDisableDeinterlacing : 1.0,
        PLPlayerParameterMinBufferedDuration : 0.0,
        PLPlayerParameterMaxBufferedDuration : 0.0,
        PLPlayerParameterAutoPlayEnable : 1.0
    ]
    
    var videoPlayerController :PLVideoPlayerController!
    
    //var session:VCSimpleSession = VCSimpleSession(videoSize: CGSize(width: 1280, height: 720), frameRate: 30, bitrate: 1000000, useInterfaceOrientation: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        previewView.addSubview(session.previewView)
//        session.previewView.frame = previewView.bounds
//        session.delegate = self
         videoPlayerController = PLVideoPlayerController(contentURL: NSURL(string: url)!, parameters:self.parameters)
        //self.videoPlayerController = PLVideoPlayerController(self.url, parameters:self.parameters)
        videoPlayerController.delegate = self;
        videoPlayerController.playerView.frame = CGRectMake(0, 0, CGRectGetWidth(self.view.bounds) * 0.8, CGRectGetHeight(self.view.bounds) * 0.8);
        videoPlayerController.playerView.center = CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds));
        previewView.addSubview(videoPlayerController.playerView)
        
        //UISlider *slider = [[UISlider alloc] initWithFrame:(CGRect){0, CGRectGetMaxY(self.videoPlayerController.playerView.frame), CGRectGetWidth(self.view.bounds), 30}];
        //[slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchUpOutside];
        //[self.view addSubview:slider];
        //self.slider = slider;
        
//        self.indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
//        self.indicatorView.center = CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds));
//        [self.view addSubview:self.indicatorView];
//        [self.indicatorView hidesWhenStopped];
        
//        id observer1 = [[NSNotificationCenter defaultCenter] addObserverForName:PLAudioSessionCurrentHardwareOutputVolumeDidChangeNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *notif) {
//        NSDictionary *userInfo = notif.userInfo;
//        NSLog(@"Volume %.2f", [userInfo[PLAudioSessionCurrentHardwareOutputVolumeKey] floatValue]);
//        }];
//        
//        id observer2 = [[NSNotificationCenter defaultCenter] addObserverForName:PLAudioSessionRouteDidChangeNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *notif) {
//        NSDictionary *userInfo = notif.userInfo;
//        NSLog(@"Reason %d", [userInfo[PLAudioSessionRouteChangeReasonKey] intValue]);
//        }];
//        
//        self.observers = @[observer1, observer2];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        btnConnect = nil
        previewView = nil
        videoPlayerController.delegate = nil
    }

    @IBAction func btnConnectTouch(sender: AnyObject) {
//        switch session.rtmpSessionState {
//        case .None, .PreviewStarted, .Ended, .Error:
//            session.startRtmpSessionWithURL("rtmp://10.230.48.197/live1/", andStreamKey: "room1")
//        default:
//            session.endRtmpSession()
//            break
//        }
    }
    
    
//    func connectionStatusChanged(sessionState: VCSessionState) {
//        switch session.rtmpSessionState {
//        case .Starting:
//            btnConnect.setTitle("Connecting", forState: .Normal)
//            
//        case .Started:
//            btnConnect.setTitle("Disconnect", forState: .Normal)
//            
//        default:
//            btnConnect.setTitle("Connect", forState: .Normal)
//        }
//    }
}

