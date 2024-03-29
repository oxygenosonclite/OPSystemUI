.class public Lcom/oneplus/faceunlock/OpFacelockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpFacelockController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;,
        Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final FAILED_ATTEMPTS_TO_TIMEOUT:I

.field private static mFaceUnlockNoticeDelay:I


# instance fields
.field private final isLod:Z

.field private mBinding:Z

.field private mBindingSetting:Z

.field private mBouncer:Z

.field private mBoundToService:Z

.field private mBoundToSettingService:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraAnim:Lcom/oneplus/anim/OpCameraAnimateController;

.field private mCameraLaunching:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEnterBouncerAfterScreenOn:Z

.field mFPC:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private mFaceLockActive:Z

.field private mFacelockThread:Landroid/os/HandlerThread;

.field private mFailAttempts:I

.field private mFirst:Z

.field private mFpFailTimeStamp:J

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mIsGoingToSleep:Z

.field private mIsKeyguardShowing:Z

.field private mIsScreenOffUnlock:Z

.field private mIsScreenTurnedOn:Z

.field private mIsScreenTurningOn:Z

.field private mIsSleep:Z

.field private mKeyguardStateCallback:Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightingModeBrightness:I

.field private mLightingModeEnabled:Z

.field private mLightingModeSensorThreshold:I

.field private mLockout:Z

.field private mMotorQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedToPendingStopFacelock:Z

.field private final mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

.field private final mOffAuthenticateRunnable:Ljava/lang/Runnable;

.field private mPendingFacelockWhenBouncer:Z

.field private mPendingLaunchCameraSource:Ljava/lang/String;

.field private mPendingStopFacelock:Z

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field mPowerManager:Landroid/os/IPowerManager;

.field private final mResetScreenOnRunnable:Ljava/lang/Runnable;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRate:I

.field private mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

.field private final mSettingConnection:Landroid/content/ServiceConnection;

.field private mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

.field private mSimSecure:Z

.field mSleepTime:J

.field private mStartFacelockWhenScreenOn:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    .line 87
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isWeakFaceUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    sput v0, Lcom/oneplus/faceunlock/OpFacelockController;->FAILED_ATTEMPTS_TO_TIMEOUT:I

    const/16 v0, 0xbb8

    .line 180
    sput v0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceUnlockNoticeDelay:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 6

    .line 196
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 p5, 0x0

    .line 107
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    .line 108
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBouncer:Z

    .line 109
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurningOn:Z

    .line 110
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFirst:Z

    .line 112
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBinding:Z

    .line 113
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBindingSetting:Z

    .line 114
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    .line 115
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    .line 116
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToSettingService:Z

    .line 117
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mCameraLaunching:Z

    .line 118
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    .line 119
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsGoingToSleep:Z

    .line 121
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    .line 125
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    .line 126
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    const/4 v1, 0x0

    .line 127
    iput-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    .line 130
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    .line 133
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    new-array v2, v0, [I

    const/16 v3, 0xa2

    aput v3, v2, p5

    .line 143
    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->isLod:Z

    const/4 v3, 0x5

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, p5

    .line 146
    :goto_0
    iput v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeSensorThreshold:I

    const/16 v2, 0x12c

    .line 148
    iput v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeBrightness:I

    .line 149
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeEnabled:Z

    .line 161
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    const-wide/16 v4, 0x0

    .line 165
    iput-wide v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSleepTime:J

    .line 170
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    .line 175
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mEnterBouncerAfterScreenOn:Z

    .line 178
    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSimSecure:Z

    .line 187
    iput-wide v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFpFailTimeStamp:J

    .line 321
    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$1;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/OpFacelockController$1;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 504
    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$3;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/OpFacelockController$3;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    .line 1512
    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$9;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/OpFacelockController$9;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    .line 1715
    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$12;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/OpFacelockController$12;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mConnection:Landroid/content/ServiceConnection;

    .line 1735
    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$13;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/OpFacelockController$13;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    .line 1756
    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$14;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/OpFacelockController$14;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    .line 1907
    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$15;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/OpFacelockController$15;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    const-string v2, "OpFacelockController"

    const-string v4, "new facelock"

    .line 197
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    .line 199
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 200
    invoke-virtual {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 202
    iput-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 203
    iput-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 205
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    .line 206
    iput-object p4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 209
    new-instance p3, Landroid/os/HandlerThread;

    const-string p4, "FacelockThread"

    invoke-direct {p3, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    .line 210
    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    .line 211
    new-instance p3, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;

    iget-object p4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p0, p4}, Lcom/oneplus/faceunlock/OpFacelockController$FacelockHandler;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    .line 212
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    .line 213
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 216
    new-instance p3, Landroid/hardware/SystemSensorManager;

    iget-object p4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p3, p4, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 217
    invoke-virtual {p3, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightSensor:Landroid/hardware/Sensor;

    .line 218
    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x10e0016

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSensorRate:I

    const-string p3, "power"

    .line 220
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object p4

    iput-object p4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    .line 222
    iget-object p4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    new-array p4, v0, [I

    const/16 v0, 0xeb

    aput v0, p4, p5

    .line 225
    invoke-static {p4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p3, 0xc8

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result p3

    :goto_1
    iput p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeBrightness:I

    .line 229
    iput-object p6, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 233
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string p4, "com.oneplus.faceunlock.action.FACE_SETTING_CHANGED"

    .line 234
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object p4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p4, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    const-string p3, "vibrator"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mVibrator:Landroid/os/Vibrator;

    .line 240
    new-instance p1, Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;

    invoke-direct {p1, p0, v1}, Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;Lcom/oneplus/faceunlock/OpFacelockController$1;)V

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardStateCallback:Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;

    .line 241
    invoke-virtual {p2, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    .line 244
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    const-string p2, "fingerprint"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 248
    new-instance p1, Lcom/oneplus/anim/OpCameraAnimateController;

    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/oneplus/anim/OpCameraAnimateController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mCameraAnim:Lcom/oneplus/anim/OpCameraAnimateController;

    .line 249
    invoke-virtual {p1}, Lcom/oneplus/anim/OpCameraAnimateController;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->playFacelockIndicationTextAnim()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleResetLockout()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleSkipBouncer()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleResetFacelockPending()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->updateIsFaceAdded()V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->enterBouncer()V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleFaceUnlockNotice()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/oneplus/faceunlock/OpFacelockController;IZZ)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/faceunlock/OpFacelockController;->updateKeyguardAlpha(IZZ)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSimSecure:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSimSecure:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelock()V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/faceunlock/OpFacelockController;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/oneplus/faceunlock/OpFacelockController;->launchCamera(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->resetFPTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsGoingToSleep:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/oneplus/faceunlock/OpFacelockController;Lcom/oneplus/faceunlock/internal/IOPFacelockService;)Lcom/oneplus/faceunlock/internal/IOPFacelockService;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBinding:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/oneplus/faceunlock/OpFacelockController;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToSettingService:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBindingSetting:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    return p0
.end method

.method static synthetic access$4002(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBouncer:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    return p0
.end method

.method static synthetic access$4300(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/oneplus/faceunlock/OpFacelockController;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeEnabled:Z

    return p0
.end method

.method static synthetic access$4500(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Vibrator;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/oneplus/faceunlock/OpFacelockController;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    return p0
.end method

.method static synthetic access$4700(Lcom/oneplus/faceunlock/OpFacelockController;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeSensorThreshold:I

    return p0
.end method

.method static synthetic access$4800(Lcom/oneplus/faceunlock/OpFacelockController;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/oneplus/faceunlock/OpFacelockController;->updateFacelockLightMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleStartFacelock()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/faceunlock/OpFacelockController;IZ)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleStopFacelock()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->unlockKeyguard()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleRecognizeFail()V

    return-void
.end method

.method private bindFacelock()V
    .locals 6

    .line 1588
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBinding:Z

    if-eqz v0, :cond_0

    return-void

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v0

    const-string v1, "OpFacelockController"

    if-nez v0, :cond_1

    const-string p0, "no face added"

    .line 1593
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1597
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1598
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.faceunlock"

    const-string v4, "com.oneplus.faceunlock.FaceUnlockService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1602
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Binding ok"

    .line 1604
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iput-boolean v5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBinding:Z

    goto :goto_0

    :cond_2
    const-string p0, "Binding fail"

    .line 1607
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindFacelock fail, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private bindFacelockSetting()V
    .locals 6

    .line 1615
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBindingSetting:Z

    const-string v1, "OpFacelockController"

    if-eqz v0, :cond_0

    const-string p0, "return Binding"

    .line 1616
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1620
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1621
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.faceunlock"

    const-string v4, "com.oneplus.faceunlock.FaceSettingService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1625
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Binding setting ok"

    .line 1627
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iput-boolean v5, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBindingSetting:Z

    goto :goto_0

    :cond_1
    const-string p0, "Binding setting fail"

    .line 1630
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind setting fail, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private downMotorBySystemApp()I
    .locals 0

    const/16 p0, -0x3e7

    return p0
.end method

.method private enterBouncer()V
    .locals 2

    const-string v0, "OpFacelockController"

    const-string v1, "handle enter Bouncer"

    .line 589
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 590
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mEnterBouncerAfterScreenOn:Z

    .line 592
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/OpFacelockController$5;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/OpFacelockController$5;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleFaceUnlockNotice()V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBouncer:Z

    if-nez v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-nez v0, :cond_0

    return-void

    .line 485
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isShowingText()Z

    move-result v0

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNotice, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFacelockController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/OpFacelockController$2;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/OpFacelockController$2;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private handleRecognizeFail()V
    .locals 4

    .line 548
    iget v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    .line 552
    sget v2, Lcom/oneplus/faceunlock/OpFacelockController;->FAILED_ATTEMPTS_TO_TIMEOUT:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    move v0, v1

    .line 558
    :goto_0
    iget v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    .line 559
    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v2, :cond_2

    .line 561
    sget-boolean v2, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "OpFacelockController"

    const-string v3, "enter Bouncer"

    .line 562
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->enterBouncer()V

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 571
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->playFacelockIndicationTextAnim()V

    .line 573
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    .line 574
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleStopFacelock()V

    return-void
.end method

.method private handleResetFacelockPending()V
    .locals 2

    const/4 v0, 0x0

    .line 1374
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    .line 1375
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleResetFacelockPending, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    if-eqz v0, :cond_1

    .line 1379
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleStopFacelock()V

    :cond_1
    return-void
.end method

.method private handleResetLockout()V
    .locals 2

    const/4 v0, 0x0

    .line 529
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    .line 530
    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 533
    invoke-direct {p0, v1, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleSkipBouncer()V
    .locals 2

    .line 537
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFacelockController"

    const-string v1, "handleSkipBouncer"

    .line 538
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 540
    iput v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    .line 541
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const/4 v1, 0x2

    .line 543
    invoke-direct {p0, v1, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    .line 544
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->handleStopFacelock()V

    return-void
.end method

.method private handleStartFacelock()V
    .locals 6

    .line 1257
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1259
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isCameraErrorState()Z

    move-result v0

    .line 1261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle startFacelock, active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pendingStop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", live wp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v3, 0x0

    .line 1262
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowingLiveWallpaper(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cameraError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", showing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pending:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", intOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurningOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFacelockController"

    .line 1261
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    if-nez v1, :cond_0

    const-string p0, "OpFacelockController"

    const-string v0, "not start Facelock"

    .line 1267
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const-string p0, "OpFacelockController"

    const-string v0, "not start when camera error"

    .line 1273
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1277
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    if-eqz v0, :cond_2

    const-string p0, "OpFacelockController"

    const-string v0, "pending in bouncer"

    .line 1278
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1284
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    .line 1285
    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    .line 1286
    invoke-direct {p0, v1, v3}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    return-void

    .line 1291
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1292
    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    const-string p0, "OpFacelockController"

    const-string v0, "pending start to screen on"

    .line 1293
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1298
    :cond_4
    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1299
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->upMotorBySystemApp()I

    move-result v0

    const/16 v4, -0x3e7

    if-ne v0, v4, :cond_6

    .line 1301
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    if-nez v0, :cond_5

    .line 1302
    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mEnterBouncerAfterScreenOn:Z

    goto :goto_0

    .line 1304
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->enterBouncer()V

    :goto_0
    const/16 v0, 0xa

    .line 1307
    invoke-direct {p0, v0, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    const-string v0, "OpFacelockController"

    const-string v1, "not start motor for up limited"

    .line 1308
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void

    .line 1315
    :cond_6
    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 1317
    invoke-direct {p0, v1, v3}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    .line 1319
    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    .line 1321
    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    .line 1325
    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1326
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurningOn:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1327
    invoke-virtual {v0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1328
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1329
    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    .line 1330
    invoke-direct {p0, v3, v2, v3}, Lcom/oneplus/faceunlock/OpFacelockController;->updateKeyguardAlpha(IZZ)V

    .line 1331
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1332
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x258

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1337
    :cond_7
    monitor-enter p0

    const/4 v0, 0x4

    .line 1339
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    iget-object v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    invoke-interface {v1, v4}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->registerCallback(Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    .line 1340
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v1}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->prepare()V

    .line 1341
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v1, v3}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->startFaceUnlock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1357
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1358
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1361
    invoke-direct {p0, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->registerLightSensor(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "OpFacelockController"

    .line 1349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startFacelock mService null, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    .line 1352
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1353
    monitor-exit p0

    return-void

    :catch_1
    move-exception v1

    const-string v2, "OpFacelockController"

    .line 1343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startFacelock fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    .line 1346
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1347
    monitor-exit p0

    return-void

    .line 1355
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private handleStopFacelock()V
    .locals 4

    .line 1391
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    if-nez v0, :cond_0

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not stop facelock, active:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpFacelockController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1397
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1398
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    .line 1399
    sget-boolean p0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "OpFacelockController"

    const-string v0, "pending stop facelock"

    .line 1400
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 1404
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle stopFacelock, pending camera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 1407
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    .line 1410
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    .line 1412
    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelockLightMode()V

    .line 1415
    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1416
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->downMotorBySystemApp()I

    .line 1420
    :cond_3
    monitor-enter p0

    .line 1422
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    invoke-interface {v1, v2}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->unregisterCallback(Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    .line 1423
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v1, v0}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->stopFaceUnlock(I)V

    .line 1424
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v0}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "OpFacelockController"

    .line 1428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopFacelock mService null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "OpFacelockController"

    .line 1426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopFacelock fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1432
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1435
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$7;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/faceunlock/OpFacelockController$7;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 1441
    iput-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    :cond_4
    return-void

    .line 1430
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private isWakingUpReasonSupported(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "com.android.systemui:CAMERA_GESTURE_CIRCLE"

    .line 607
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 610
    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isFaceUnlockSupportPassiveWakeup()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "wakeUp"

    .line 612
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockWaitingTap()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBouncer:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "android.policy:POWER"

    .line 615
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "android.policy:DOUBLE_TAP"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method private launchCamera(Ljava/lang/String;)V
    .locals 0

    .line 1977
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    .line 1978
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private playFacelockIndicationTextAnim()V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/OpFacelockController$4;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/OpFacelockController$4;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private registerLightSensor(Z)V
    .locals 3

    .line 1929
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockLightingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1935
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightSensor:Landroid/hardware/Sensor;

    iget v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSensorRate:I

    mul-int/lit16 v2, v2, 0x3e8

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 1938
    :cond_1
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_0
    return-void
.end method

.method private resetFPTimeout()V
    .locals 2

    .line 2041
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2044
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/BiometricManager;

    if-eqz p0, :cond_0

    .line 2046
    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/BiometricManager;->resetLockout([B)V

    :cond_0
    return-void
.end method

.method private stopFacelock()V
    .locals 3

    .line 1385
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1386
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1387
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private unbindFacelockSetting()V
    .locals 6

    const-string v0, "OpFacelockController"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1639
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindFacelockSetting, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToSettingService:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToSettingService:Z

    if-eqz v3, :cond_0

    .line 1641
    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1642
    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBindingSetting:Z

    .line 1643
    iput-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    .line 1644
    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToSettingService:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unbind face setting fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :cond_0
    :goto_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbind facelock, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-eqz v3, :cond_1

    .line 1653
    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1654
    iput-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    .line 1655
    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBinding:Z

    .line 1656
    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbind facelock fail, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private unlockKeyguard()V
    .locals 6

    .line 1521
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowingLiveWallpaper(Z)Z

    move-result v0

    .line 1522
    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v2

    .line 1523
    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    .line 1525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unlockKeyguard, bouncer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", live wp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", interactive = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", offUnlock:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpFacelockController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iput v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    .line 1528
    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    const/4 v3, 0x1

    .line 1531
    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->setRecentUnlockBiometricFace(Z)V

    .line 1534
    iget-object v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->hideFODDim()V

    .line 1535
    iget-object v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onFacelockUnlocking(Z)V

    .line 1536
    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    .line 1538
    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/oneplus/faceunlock/OpFacelockController$10;

    invoke-direct {v4, p0, v0, v2}, Lcom/oneplus/faceunlock/OpFacelockController$10;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;ZZ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1572
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1573
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v2, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    .line 1577
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    .line 1578
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelock()V

    return-void
.end method

.method private upMotorBySystemApp()I
    .locals 0

    const/16 p0, -0x3e7

    return p0
.end method

.method private updateFacelockLightMode(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1945
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    iget v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeBrightness:I

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->overrideScreenBrightnessRangeMinimum(I)V

    goto :goto_0

    .line 1947
    :cond_0
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v1, v0}, Landroid/os/IPowerManager;->overrideScreenBrightnessRangeMinimum(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1950
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFacelockLightMode, overrideScreenBrightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFacelockController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeEnabled:Z

    if-eqz p1, :cond_1

    .line 1954
    iget-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-eqz p1, :cond_1

    .line 1955
    invoke-direct {p0, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->registerLightSensor(Z)V

    :cond_1
    return-void
.end method

.method private updateIsFaceAdded()V
    .locals 6

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIsFaceAdded, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 1177
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->bindFacelockSetting()V

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 1183
    :try_start_0
    invoke-interface {v0, v2}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->checkState(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIsFaceAdded fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1188
    :goto_0
    iget-object v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1191
    :goto_1
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFaceAdded:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", pre:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_2
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1196
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1197
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getBouncer()Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1199
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 1200
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getBouncer()Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->updateBouncerPromptReason()V

    const-string v0, "face is added and not allowed, update Prompt reason"

    .line 1201
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_3
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_4

    .line 1210
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->bindFacelock()V

    .line 1211
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_5

    .line 1212
    invoke-virtual {p0, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLock(Z)Z

    goto :goto_2

    .line 1215
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelock()V

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    .line 1220
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->unbindFacelockSetting()V

    .line 1222
    :cond_6
    iput-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFirst:Z

    return-void
.end method

.method private updateKeyguardAlpha(IZZ)V
    .locals 12

    .line 1449
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowingLiveWallpaper(Z)Z

    move-result v0

    .line 1450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update alpha:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", live wp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "OpFacelockController"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 1456
    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1457
    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v3, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v2, v9, v3, v9}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    .line 1463
    :cond_0
    iget-object v10, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v11, Lcom/oneplus/faceunlock/OpFacelockController$8;

    move-object v2, v11

    move-object v3, p0

    move v4, v0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/faceunlock/OpFacelockController$8;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;ZIZZ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-ne p1, v9, :cond_6

    .line 1486
    iput-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    if-eqz p2, :cond_6

    .line 1489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSleepTime:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x1388

    cmp-long p1, p1, v2

    if-lez p1, :cond_1

    const/16 p1, 0xa

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    :goto_0
    if-nez v0, :cond_2

    const/16 p1, 0x12c

    .line 1495
    :cond_2
    sget-boolean p2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_3

    .line 1496
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateKeyguardAlpha: delay= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_3
    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1500
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p2

    if-nez p2, :cond_5

    if-eqz p3, :cond_4

    goto :goto_1

    .line 1505
    :cond_4
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget p1, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {p0, v1, p1}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    goto :goto_2

    .line 1502
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    int-to-long v0, p1

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_2
    return-void
.end method

.method private updateNotifyMessage(IZ)V
    .locals 3

    .line 1664
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFacelockNotifyMsgId(I)I

    move-result v0

    .line 1666
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/OpFacelockController$11;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/oneplus/faceunlock/OpFacelockController$11;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;IZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateRecognizedState(IZ)V
    .locals 1

    .line 517
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    if-eqz v0, :cond_0

    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    .line 522
    invoke-direct {p0, p1, p2}, Lcom/oneplus/faceunlock/OpFacelockController;->updateNotifyMessage(IZ)V

    .line 523
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockDisabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 524
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public canLaunchFacelock()Z
    .locals 3

    .line 1154
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mCameraLaunching:Z

    const/4 v1, 0x0

    const-string v2, "OpFacelockController"

    if-eqz v0, :cond_0

    const-string p0, "not start when camera launching"

    .line 1155
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1158
    sget-boolean p0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "not allow to facelock"

    .line 1159
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    .line 1162
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->isFacelockTimeout()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "timeout, not allow to facelock"

    .line 1163
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "  OpFacelockController: \n"

    .line 2004
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2005
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mFailAttempts: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2006
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLockout: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2007
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBinding: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBinding:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2008
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCameraLaunching: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mCameraLaunching:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2009
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBoundToService: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2010
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBoundToSettingService: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToSettingService:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2011
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mFaceLockActive: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2012
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mService: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2013
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mFirst: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFirst:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2014
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  isFacelockEnabled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2015
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  isAutoFacelockEnabled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2016
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  isFacelockLightingEnabled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockLightingEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2017
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  FacelockRunningType: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2018
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  isFacelockTimeout: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->isFacelockTimeout()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2019
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  isFacelockAllowed: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockAllowed()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2020
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsKeyguardShowing: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2021
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBouncer: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBouncer:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2022
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsScreenTurnedOn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2023
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mNeedToPendingStopFacelock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2024
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPendingStopFacelock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2025
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPendingLaunchCameraSource: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2026
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsScreenOffUnlock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2027
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mStartFacelockWhenScreenOn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2028
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsSleep: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2029
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLightingModeEnabled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2030
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLightingModeSensorThreshold: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeSensorThreshold:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2031
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLightingModeBrightness: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeBrightness:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2032
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  FAILED_ATTEMPTS_TO_TIMEOUT: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/oneplus/faceunlock/OpFacelockController;->FAILED_ATTEMPTS_TO_TIMEOUT:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2033
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mMotorQueue: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2034
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  passive: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isFaceUnlockSupportPassiveWakeup()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public getFpFailTimeStamp()J
    .locals 2

    .line 2060
    iget-wide v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFpFailTimeStamp:J

    return-wide v0
.end method

.method public isFacelockRunning()Z
    .locals 0

    .line 1170
    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    return p0
.end method

.method public isFacelockTimeout()Z
    .locals 1

    .line 1583
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    .line 1584
    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    if-nez p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isScreenOffUnlock()Z
    .locals 0

    .line 1984
    iget-boolean p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    return p0
.end method

.method public notifyCameraLaunching(ZLjava/lang/String;Z)Z
    .locals 3

    .line 1227
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportDoubleTapAlexa()Z

    move-result v0

    const-string v1, "OpFacelockController"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1229
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isDoubleTapCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "return notifyCameraLaunching"

    .line 1230
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1237
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_1

    .line 1238
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mCameraLaunching:Z

    .line 1243
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyCameraLaunching, source:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", facelockActive:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", keyguard:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isDoubleTap:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1248
    iput-object p2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    const/4 p1, 0x1

    move v2, p1

    .line 1251
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelock()V

    :cond_3
    return v2
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 2055
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 2056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFpFailTimeStamp:J

    return-void
.end method

.method public onClearFailedFacelockAttempts()V
    .locals 2

    .line 1066
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClearFailedFacelockAttempts, failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lockout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 1069
    iput v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFailAttempts:I

    .line 1070
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    .line 1071
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mMotorQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 2

    .line 919
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceProvisioned, bound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-nez v0, :cond_1

    .line 923
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->bindFacelock()V

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 926
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 1

    .line 821
    sget-boolean p0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 822
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDreamingStateChanged, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpFacelockController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onFacelockEnableChanged(Z)V
    .locals 2

    .line 2066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onFacelockEnableChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2069
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    :cond_0
    return-void
.end method

.method public onFacelockLightingChanged(Z)V
    .locals 1

    .line 705
    sget-boolean p0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 706
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLightChanged "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpFacelockController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2

    .line 799
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishedGoingToSleep, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFacelockController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 803
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsGoingToSleep:Z

    .line 807
    iget v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeBrightness:I

    const-string v1, "persist.sys.facelock.bright"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeBrightness:I

    const-string v0, "persist.sys.facelock.lsensor"

    .line 808
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_1

    .line 810
    iput p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLightingModeSensorThreshold:I

    :cond_1
    const/4 p0, 0x6

    const-string p1, "persist.sys.facelock.uptimes"

    .line 814
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    const/16 p0, 0x4650

    const-string p1, "persist.sys.facelock.updura"

    .line 815
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3

    .line 1011
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    const-string v1, "OpFacelockController"

    if-eqz v0, :cond_0

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardBouncerChanged , bouncer:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", show:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", skip:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1013
    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->canSkipBouncerByFacelock()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", unlocking:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1014
    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bouncerRec:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1015
    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", active: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", interactive: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1017
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1018
    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1012
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBouncer:Z

    .line 1022
    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1024
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1027
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1028
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1029
    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLockInBouncer()Z

    goto :goto_0

    .line 1030
    :cond_1
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result p1

    if-nez p1, :cond_2

    .line 1031
    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLockInBouncer()Z

    :cond_2
    :goto_0
    return-void

    .line 1035
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    const/4 v2, 0x0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 1036
    invoke-virtual {p0, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLock(Z)Z

    return-void

    .line 1038
    :cond_4
    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1039
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isFaceUnlockSupportPassiveWakeup()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1040
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockWaitingTap()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1041
    invoke-virtual {p0, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLock(Z)Z

    goto :goto_1

    .line 1044
    :cond_5
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceLockActive:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    .line 1046
    invoke-direct {p0, v0, v2}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    .line 1051
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    .line 1052
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->canSkipBouncerByFacelock()Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x8

    .line 1054
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->startWakeAndUnlockForFace(I)V

    goto :goto_2

    .line 1056
    :cond_7
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "just keyguardDone"

    .line 1057
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    :cond_8
    :goto_2
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 5

    .line 944
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardVisibilityChanged, show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", first:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFirst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 951
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-nez v0, :cond_2

    .line 952
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->bindFacelock()V

    .line 954
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFirst:Z

    const/16 v1, 0xc

    if-eqz v0, :cond_3

    .line 955
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 956
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    .line 962
    iget-boolean v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 964
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isFaceUnlockSupportPassiveWakeup()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 965
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 966
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 967
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 970
    :cond_4
    invoke-direct {p0, v1, v3}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    goto :goto_0

    .line 975
    :cond_5
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 977
    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 979
    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mCameraLaunching:Z

    .line 980
    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mNeedToPendingStopFacelock:Z

    .line 981
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 982
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 984
    :cond_6
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsKeyguardShowing:Z

    if-nez p1, :cond_7

    .line 987
    iput-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    :cond_7
    return-void
.end method

.method public onPasswordLockout()V
    .locals 2

    .line 1089
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFacelockController"

    const-string v1, "onPasswordLockout"

    .line 1090
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelock()V

    return-void
.end method

.method public onPreStartedGoingToSleep()V
    .locals 2

    .line 759
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFacelockController"

    const-string v1, "onPreStartedGoingToSleep"

    .line 760
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 762
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    return-void
.end method

.method public onPreStartedWakingUp()V
    .locals 4

    const-string v0, "OpFacelockController"

    .line 626
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getWakingUpReason()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWakingUpReason,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.policy:POWER"

    .line 631
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreStartedWakingUp, bound:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pending:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bouncerRec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 632
    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", fp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 633
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 631
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 635
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    .line 636
    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 640
    :cond_0
    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 641
    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 642
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-void

    .line 646
    :cond_2
    invoke-direct {p0, v1}, Lcom/oneplus/faceunlock/OpFacelockController;->isWakingUpReasonSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0xc

    .line 647
    invoke-direct {p0, v1, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    return-void

    .line 651
    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    .line 652
    invoke-direct {p0, v1, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->updateRecognizedState(IZ)V

    .line 655
    :cond_4
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 656
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 657
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 750
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFacelockController"

    const-string v1, "onScreenTurnedOff"

    .line 751
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 753
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    .line 754
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurningOn:Z

    .line 755
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mEnterBouncerAfterScreenOn:Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 720
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenTurnedOn, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mEnterBouncerAfterScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 724
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurnedOn:Z

    .line 726
    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mEnterBouncerAfterScreenOn:Z

    if-eqz v1, :cond_1

    .line 727
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->enterBouncer()V

    .line 732
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 733
    iput-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 734
    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 739
    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    .line 740
    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-eqz v1, :cond_3

    .line 741
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 742
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 743
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    .line 712
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFacelockController"

    const-string v1, "onScreenTurningOn"

    .line 713
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 715
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenTurningOn:Z

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 3

    .line 767
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartedGoingToSleep, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bound:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFacelockController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 771
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsGoingToSleep:Z

    const/4 v0, 0x0

    .line 775
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 777
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mCameraLaunching:Z

    .line 778
    iput-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    .line 780
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 782
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 784
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 786
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    .line 789
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mSleepTime:J

    .line 793
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsScreenOffUnlock:Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 4

    const-string v0, "OpFacelockController"

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getWakingUpReason()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWakingUpReason,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.policy:POWER"

    .line 670
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartedWakingUp, bound:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", lockout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mLockout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bouncerRec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 671
    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", fp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 672
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 673
    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bouncer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBouncer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", notice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 675
    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFacelockNoticeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 670
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 676
    iput-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIsSleep:Z

    .line 678
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 682
    :cond_0
    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 683
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 684
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFacelockNoticeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 688
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    sget v0, Lcom/oneplus/faceunlock/OpFacelockController;->mFaceUnlockNoticeDelay:I

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void

    .line 694
    :cond_3
    invoke-direct {p0, v1}, Lcom/oneplus/faceunlock/OpFacelockController;->isWakingUpReasonSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 698
    :cond_4
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 699
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 700
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 1

    .line 933
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 934
    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 935
    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "OpFacelockController"

    const-string v0, "onStrongAuthStateChanged to stop"

    .line 936
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelock()V

    :cond_1
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    .line 1076
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFacelockController"

    const-string v1, "onSystemReady"

    .line 1077
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->bindFacelock()V

    .line 1083
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->bindFacelockSetting()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 907
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelock()V

    goto :goto_0

    :cond_0
    const-string p1, "OpFacelockController"

    const-string v0, "user switch to owner"

    .line 909
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 911
    invoke-virtual {p0, p1}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLock(Z)Z

    :goto_0
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    .line 1971
    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-void
.end method

.method public stopFacelockLightMode()V
    .locals 1

    const/4 v0, 0x0

    .line 1960
    invoke-direct {p0, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->registerLightSensor(Z)V

    .line 1961
    invoke-direct {p0, v0}, Lcom/oneplus/faceunlock/OpFacelockController;->updateFacelockLightMode(Z)V

    return-void
.end method

.method public tryToStartFaceLock(Z)Z
    .locals 2

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryToStartFaceLock, bound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", motor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return v1

    .line 1105
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 1109
    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1110
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1111
    iget-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1113
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return v0
.end method

.method public tryToStartFaceLockAfterScreenOn()V
    .locals 4

    .line 1119
    sget-boolean v0, Lcom/oneplus/faceunlock/OpFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryToStartFaceLockAfterScreenOn,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFacelockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1124
    iput-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mStartFacelockWhenScreenOn:Z

    goto :goto_0

    .line 1128
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    if-nez v0, :cond_2

    return-void

    .line 1133
    :cond_2
    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 1137
    :cond_3
    iput-boolean v1, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mPendingFacelockWhenBouncer:Z

    .line 1138
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/OpFacelockController$6;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/OpFacelockController$6;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public tryToStartFaceLockInBouncer()Z
    .locals 3

    .line 993
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startInBouncer, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", skip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFacelockController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->canLaunchFacelock()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1000
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mBoundToService:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1002
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1004
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
