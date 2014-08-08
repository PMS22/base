/*
 * Copyright (C) 2014 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.internal.telecomm;

import android.telecomm.CallCameraCapabilities;
import android.telecomm.VideoCallProfile;

/**
 * Internal definition of a callback interface, used for an InCallUi to respond to video telephony
 * changes.
 *
 * @see android.telecomm.InCallService.VideoCall.Listener
 *
 * {@hide}
 */
oneway interface IVideoCallCallback {
    void receiveSessionModifyRequest(in VideoCallProfile videoCallProfile);

    void receiveSessionModifyResponse(int status, in VideoCallProfile requestedProfile,
        in VideoCallProfile responseProfile);

    void handleCallSessionEvent(int event);

    void changePeerDimensions(int width, int height);

    void changeCallDataUsage(int dataUsage);

    void changeCameraCapabilities(in CallCameraCapabilities callCameraCapabilities);
}
