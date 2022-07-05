.class public Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "OpKeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field public static final IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

.field protected static final IS_SUPPORT_CUSTOM_FINGERPRINT:Z

.field public static final IS_SUPPORT_FACE_UNLOCK:Z

.field private static final IS_SUPPORT_FINGERPRINT_POCKET:Z

.field public static final IS_SUPPORT_MOTOR_CAMERA:Z


# instance fields
.field private FOD_UI_DEBUG:Ljava/lang/String;

.field protected mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

.field private mAodFpAuthTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAodFpAuthenticatedTime:J

.field private mAutoFacelockEnabled:Z

.field private mBSPTotalTime:J

.field private mBootCompleted:Z

.field private mBouncerRecognizeEnabled:Z

.field protected mCameraLaunched:Z

.field private mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

.field private final mContext:Landroid/content/Context;

.field private mCurDisplayPoweStatus:I

.field protected mDuringAcquired:Z

.field private mFacelockEnabled:Z

.field private mFacelockLightingEnabled:Z

.field private mFacelockRunningType:I

.field private mFacelockSettingsObserver:Landroid/database/ContentObserver;

.field private mFacelockSuccessTimes:I

.field private mFacelockUnlocking:Z

.field private mFailedAttempts:Landroid/util/SparseIntArray;

.field private mFakeLocking:Z

.field private mFingerprintAlreadyAuthenticated:Z

.field protected mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

.field protected mFodBurnInProtectionHelper:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

.field private mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

.field private mFodOnAodStateObserver:Landroid/database/ContentObserver;

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGoingToSleepReason:I

.field private mImeShow:Z

.field protected mIsEmergencyPanelExpand:Z

.field private mIsFaceAdded:Z

.field protected mIsInBrickMode:Z

.field private mIsKeyguardDone:Z

.field private mIsLowLightEnv:Z

.field private mIsUserUnlocked:Z

.field private mKeyguardShowing:Z

.field private mLaunchingCamera:Z

.field private mLaunchingLeftAffordance:Z

.field private mLidOpen:Z

.field protected mLockoutState:Z

.field private mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

.field protected mPendingSubInfoChange:Z

.field mPocketListener:Landroid/hardware/SensorEventListener;

.field private mPocketSensor:Landroid/hardware/Sensor;

.field private mPocketSensorEnabled:Z

.field private mPocketState:I

.field protected mPowerManager:Landroid/os/PowerManager;

.field private mPreventModeActive:Z

.field private mQSExpanded:Z

.field private mResetAttempsTimeInMillis:J

.field private mScreenTurningOn:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShowFodOnAodEnabled:Z

.field private mShutdownDialogShow:Z

.field private mShutingDown:Z

.field protected mSimUnlockSlot0:Z

.field protected mSimUnlockSlot1:Z

.field private mSkipBouncerByFacelock:Z

.field private mTimeTickListener:Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;

.field private mWakingUpReason:Ljava/lang/String;

.field private mWakingUpTime:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 119
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x23

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 164
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

    new-array v1, v0, [I

    const/16 v2, 0x22

    aput v2, v1, v3

    .line 217
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FACE_UNLOCK:Z

    new-array v1, v0, [I

    const/16 v2, 0x3d

    aput v2, v1, v3

    .line 260
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    const/16 v2, 0x74

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    new-array v0, v0, [I

    const/16 v1, 0x5b

    aput v1, v0, v3

    .line 263
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    .line 265
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sys.prop.fod_ui_test"

    .line 125
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->FOD_UI_DEBUG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 160
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 163
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    const/4 v1, 0x0

    .line 168
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    .line 169
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    .line 170
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 171
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 174
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutdownDialogShow:Z

    .line 179
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    .line 181
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    .line 186
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    .line 192
    iput v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 197
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    const/4 v2, 0x0

    .line 200
    iput-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    .line 203
    iput-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    const-wide/16 v3, 0x0

    .line 208
    iput-wide v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mResetAttempsTimeInMillis:J

    .line 219
    iput v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    .line 220
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    .line 221
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    .line 222
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    .line 223
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    .line 225
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    .line 226
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    .line 229
    iput v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    .line 267
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutingDown:Z

    const/4 v5, -0x1

    .line 269
    iput v5, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mGoingToSleepReason:I

    .line 290
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    .line 291
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    .line 292
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    .line 305
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsInBrickMode:Z

    .line 314
    iput-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    .line 323
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShowFodOnAodEnabled:Z

    .line 332
    iput-wide v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBSPTotalTime:J

    .line 333
    iput-wide v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodFpAuthenticatedTime:J

    .line 336
    iput-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    .line 343
    iput v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCurDisplayPoweStatus:I

    .line 347
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsEmergencyPanelExpand:Z

    .line 350
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBootCompleted:Z

    .line 483
    invoke-static {}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->getInstance()Lcom/oneplus/keyguard/clock/OpClockCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    .line 484
    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$2;

    invoke-direct {v0, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$2;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mTimeTickListener:Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;

    .line 808
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    .line 1073
    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$3;

    invoke-direct {v0, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$3;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketListener:Landroid/hardware/SensorEventListener;

    .line 435
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 437
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fingerprint"

    .line 438
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_0
    const-string v0, "power"

    .line 440
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    .line 443
    sget-boolean p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_1

    .line 444
    sget-object p1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {p1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    .line 450
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->startClockCtrl()V

    .line 454
    new-instance p1, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    .line 456
    sget-boolean p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_2

    .line 457
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->watchForFodOnAodSettings()V

    .line 460
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleFingerprintTimeout()V

    return-void
.end method

.method static synthetic access$1002(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShowFodOnAodEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Landroid/hardware/Sensor;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    return p0
.end method

.method static synthetic access$1500(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;IZ)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFPStateBySensor(IZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFacelockSettings()V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handlePreventModeChanged(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    return p0
.end method

.method static synthetic access$2400(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFacelockTrustState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleLidSwitchChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleAlwaysOnChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleEnvironmentLightChanged(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleDisplayPowerStatusChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleFinishedWakingUp()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Ljava/lang/String;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleOnVideoChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method private checkDozeSettings()V
    .locals 4

    .line 2347
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isSupportAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2348
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_always_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 2350
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    return-void
.end method

.method private clearFailedFacelockAttempts()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1804
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1805
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 1807
    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onClearFailedFacelockAttempts()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1810
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    return-void
.end method

.method private clearFingerprintFailedUnlockAttempts()V
    .locals 1

    .line 1424
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method private getBatteryStatus()Lcom/android/settingslib/fuelgauge/BatteryStatus;
    .locals 2

    .line 2249
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mBatteryStatus"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;

    return-object p0
.end method

.method private getCallbacks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation

    .line 2131
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mCallbacks"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method private getCurrentUser()I
    .locals 2

    .line 2203
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "sCurrentUser"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;
    .locals 2

    .line 2121
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mHandler"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    return-object p0
.end method

.method private getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 2

    .line 2209
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mLockPatternUtils"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method private getServiceStates()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation

    .line 2288
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mServiceStates"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method private getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    .locals 2

    .line 2214
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mStrongAuthTracker"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    return-object p0
.end method

.method private getUpdateBiometricListeningStateRunnable()Ljava/lang/Runnable;
    .locals 2

    .line 2126
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mUpdateBiometricListeningState"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method private getUserCanSkipBouncer(I)Z
    .locals 5

    .line 2271
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getUserCanSkipBouncer"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private handleAlwaysOnChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 2401
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2402
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2404
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onAlwaysOnEnableChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleBootCompleted()V
    .locals 2

    .line 2587
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2588
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBootCompleted:Z

    const/4 v0, 0x0

    .line 2589
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2590
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_1

    .line 2592
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onBootCompleted()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleDisplayPowerStatusChanged(I)V
    .locals 2

    const/4 v0, 0x0

    .line 2503
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2504
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2506
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onDisplayPowerStatusChanged(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleEnvironmentLightChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 2438
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2439
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2441
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onEnvironmentLightChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleFingerprintTimeout()V
    .locals 2

    .line 1433
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "handleFingerprintTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 1435
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1436
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_1

    .line 1438
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFingerprintTimeout()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleFinishedWakingUp()V
    .locals 3

    .line 2522
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2524
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 2526
    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFinishedWakingUp()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleLidSwitchChanged(Z)V
    .locals 1

    .line 1192
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    if-eq p1, v0, :cond_0

    .line 1193
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFPStateBySensor(IZ)V

    :cond_0
    return-void
.end method

.method private handleOnVideoChanged(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 2605
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2606
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2608
    invoke-virtual {v1, p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onVideoChanged(Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handlePreventModeChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1276
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1277
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1279
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onPreventModeChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1284
    :cond_1
    sget-boolean p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    if-eqz p1, :cond_2

    .line 1285
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_2
    return-void
.end method

.method private handleSimStateChange(III)V
    .locals 7

    .line 2281
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "handleSimStateChange"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2283
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private handleSimSubscriptionInfoChanged()V
    .locals 3

    .line 2276
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleSimSubscriptionInfoChanged"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isBouncer()Z
    .locals 2

    .line 2234
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mBouncer"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isDeviceInteractive()Z
    .locals 2

    .line 2141
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mDeviceInteractive"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .line 2259
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isDeviceProvisioned"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isDreaming()Z
    .locals 2

    .line 2146
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mIsDreaming"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isFingerprintDetectionRunning()Z
    .locals 3

    .line 2219
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isFingerprintDetectionRunning"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1963
    :cond_0
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 1964
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 1965
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private isKeyguardGoingAway()Z
    .locals 2

    .line 2197
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mKeyguardGoingAway"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isKeyguardIsVisible()Z
    .locals 2

    .line 2254
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mKeyguardIsVisible"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isKeyguardOccluded()Z
    .locals 2

    .line 2152
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "mKeyguardOccluded"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isKeyguardVisible()Z
    .locals 3

    .line 2136
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isKeyguardVisible"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isMotorCameraSupported()Z
    .locals 1

    .line 1831
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    return v0
.end method

.method private isScreenOn()Z
    .locals 3

    .line 2229
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isScreenOn"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isScreenSaverActivatedOnDock()Z
    .locals 3

    .line 2100
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2102
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x2

    const-string v2, "screensaver_activate_on_dock"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isScreenSaverEnabled()Z
    .locals 3

    .line 2092
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2094
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x2

    const-string v2, "screensaver_enabled"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSensorNear(IZ)Z
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private synthetic lambda$onWakingUpScrimAnimationStart$0()V
    .locals 2

    .line 2479
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    const-string v0, "lock_unlock_success"

    const-string v1, "X9HFK50WT7"

    invoke-static {v0, p0, v1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private onScreenStatusChanged(Z)V
    .locals 0

    .line 502
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->onScreenTurnedOn()V

    goto :goto_0

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->onScreenTurnedOff()V

    :cond_1
    :goto_0
    return-void
.end method

.method private reportMDMEvent()V
    .locals 4

    .line 2295
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportMDMEvent: mWakingUpTime is null = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    if-nez v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 2299
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2302
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2304
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2305
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 2306
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "keyguard_temp"

    const-string v1, "X9HFK50WT7"

    invoke-static {v0, v0, p0, v1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setPocketSensorEnabled(Z)V
    .locals 6

    .line 1139
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1142
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    const-string v1, "OpKeyguardUpdateMonitor"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const-string p0, "not register when Lid closed"

    .line 1143
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1147
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1150
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    .line 1152
    :goto_0
    sget-boolean v2, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listen pocket-sensor: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", current="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", FP enabled="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1156
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    if-nez p1, :cond_8

    .line 1157
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    .line 1158
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, p0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    .line 1162
    :cond_4
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    if-eqz p1, :cond_7

    .line 1163
    iput-boolean v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    .line 1164
    iget p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    invoke-direct {p0, p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1165
    iput v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 1168
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 1170
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1172
    :cond_5
    iput v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 1174
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 1177
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_6

    .line 1178
    invoke-virtual {p1, v4}, Landroid/hardware/fingerprint/FingerprintManager;->updateStatus(I)I

    .line 1181
    :cond_6
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1

    .line 1184
    :cond_7
    invoke-direct {p0, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleLidSwitchChanged(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method private setSwitchingUser(Z)V
    .locals 5

    .line 2244
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setSwitchingUser"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2245
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private startClockCtrl()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    if-eqz v0, :cond_0

    .line 497
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mTimeTickListener:Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->onStartCtrl(Lcom/oneplus/keyguard/clock/OpClockCtrl$OnTimeUpdatedListener;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private updateFPStateBySensor(IZ)V
    .locals 4

    .line 1104
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 1105
    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    .line 1107
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    .line 1108
    iput-boolean p2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, p1

    .line 1115
    :goto_0
    iget-object v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    .line 1116
    invoke-virtual {v3, v2}, Landroid/hardware/fingerprint/FingerprintManager;->updateStatus(I)I

    .line 1120
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1122
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    goto :goto_1

    .line 1123
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1125
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateFacelockSettings()V
    .locals 6

    .line 1660
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    .line 1662
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1663
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v0

    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    invoke-virtual {v0, v3}, Lcom/oneplus/faceunlock/OpFacelockController;->onFacelockEnableChanged(Z)V

    .line 1667
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneplus_auto_face_unlock_enable"

    invoke-static {v0, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    .line 1669
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneplus_face_unlock_assistive_lighting_enable"

    invoke-static {v0, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    .line 1670
    :goto_2
    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    if-eq v0, v3, :cond_5

    .line 1671
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    .line 1672
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_5

    .line 1674
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v5, :cond_4

    .line 1676
    invoke-virtual {v5, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFacelockLightingChanged(Z)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1682
    :cond_5
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneplus_face_unlock_powerkey_recognize_enable"

    invoke-static {v0, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    .line 1685
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_success_times"

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    return-void
.end method

.method private updateFacelockTrustState(Z)V
    .locals 2

    .line 1733
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacelockTrust,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpKeyguardUpdateMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1735
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1736
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    .line 1738
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateFingerprintListeningState()V
    .locals 3

    .line 2116
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "updateFingerprintListeningState"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private watchForFodOnAodSettings()V
    .locals 5

    .line 468
    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$1;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$1;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodOnAodStateObserver:Landroid/database/ContentObserver;

    .line 476
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_fod_on_aod_enabled"

    .line 477
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodOnAodStateObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 476
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 478
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodOnAodStateObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public allowShowingLock()Z
    .locals 2

    .line 1947
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1950
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.camera"

    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isForegroundApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public canSkipBouncerByFacelock()Z
    .locals 0

    .line 1907
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    return p0
.end method

.method public clearFailedUnlockAttempts(Z)V
    .locals 4

    const-string v0, "OpKeyguardUpdateMonitor"

    if-eqz p1, :cond_0

    .line 1384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResetAttempsTimeInMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mResetAttempsTimeInMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mResetAttempsTimeInMillis:J

    .line 1389
    :cond_0
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1391
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->clearFingerprintFailedUnlockAttempts()V

    .line 1395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isWeakFaceUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 1398
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockDisabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1399
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->clearFailedFacelockAttempts()V

    goto :goto_0

    .line 1402
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->clearFailedFacelockAttempts()V

    :cond_3
    :goto_0
    return-void
.end method

.method public dispatchAlwaysOnEnableChanged(Z)V
    .locals 3

    xor-int/lit8 p1, p1, 0x1

    .line 2395
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2396
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2397
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchAuthenticateChanged(ZIII)V
    .locals 3

    .line 815
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 817
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 819
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onAuthenticateChanged(ZIII)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchBootCompleted()V
    .locals 1

    .line 2580
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    const/16 v0, 0x1fd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchFinishedWakingUp()V
    .locals 1

    .line 2518
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    const/16 v0, 0x1fc

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchSystemReady()V
    .locals 1

    .line 1037
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    const/16 v0, 0x1f7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public earlyNotifySwitchingUser()V
    .locals 2

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "earlyNotifySwitchingUser"

    .line 801
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->hideFODDim()V

    const/4 v0, 0x1

    .line 803
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setSwitchingUser(Z)V

    return-void
.end method

.method public getAodAlwaysOnController()Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;
    .locals 0

    .line 2328
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    return-object p0
.end method

.method public getDisplayPowerStatus()I
    .locals 0

    .line 2512
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCurDisplayPoweStatus:I

    return p0
.end method

.method public getFacelockNoticeEnabled()Z
    .locals 2

    .line 1980
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncerRecognizeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1983
    :cond_0
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getFacelockNotifyMsgId(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 1885
    :pswitch_0
    sget p0, Lcom/android/systemui/R$string;->face_unlock_retry_other:I

    goto :goto_0

    .line 1882
    :pswitch_1
    sget p0, Lcom/android/systemui/R$string;->face_unlock_retry_other:I

    goto :goto_0

    .line 1879
    :pswitch_2
    sget p0, Lcom/android/systemui/R$string;->face_unlock_no_permission:I

    goto :goto_0

    .line 1876
    :pswitch_3
    sget p0, Lcom/android/systemui/R$string;->face_unlock_camera_error:I

    goto :goto_0

    .line 1873
    :pswitch_4
    sget p0, Lcom/android/systemui/R$string;->face_unlock_fail:I

    goto :goto_0

    .line 1870
    :pswitch_5
    sget p0, Lcom/android/systemui/R$string;->face_unlock_no_face:I

    goto :goto_0

    .line 1867
    :pswitch_6
    sget p0, Lcom/android/systemui/R$string;->face_unlock_tap_to_retry:I

    goto :goto_0

    .line 1863
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->face_unlock_timeout:I

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getFacelockRunningType()I
    .locals 0

    .line 1744
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    return p0
.end method

.method public getFailedUnlockAttempts(I)I
    .locals 1

    .line 1410
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getFingerprintFailedUnlockAttempts()I
    .locals 2

    .line 1428
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getGoingToSleepReason()I
    .locals 0

    .line 843
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mGoingToSleepReason:I

    return p0
.end method

.method public getWakingUpReason()Ljava/lang/String;
    .locals 0

    .line 1992
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    return-object p0
.end method

.method public handleScreenTurningOn()V
    .locals 3

    .line 774
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 776
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 778
    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onScreenTurningOn()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 784
    :cond_1
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_2

    .line 785
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 786
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    :cond_2
    return-void
.end method

.method protected handleStartedWakingUp()V
    .locals 2

    const/4 v0, 0x0

    .line 514
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsLowLightEnv:Z

    .line 517
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 522
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    .line 526
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-nez v0, :cond_1

    .line 527
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    .line 534
    :cond_1
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mClockCtrl:Lcom/oneplus/keyguard/clock/OpClockCtrl;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/clock/OpClockCtrl;->onStartedWakingUp()V

    return-void
.end method

.method public handleSystemReady()V
    .locals 2

    const/4 v0, 0x0

    .line 1042
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1043
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1045
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onSystemReady()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hasBootCompleted()Z
    .locals 0

    .line 2619
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBootCompleted:Z

    return p0
.end method

.method public hideFODDim()V
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->hideFODDim()V

    :cond_0
    return-void
.end method

.method protected init()V
    .locals 3

    .line 541
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2651

    const/4 v2, 0x1

    .line 542
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensor:Landroid/hardware/Sensor;

    .line 544
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->checkDozeSettings()V

    return-void
.end method

.method public isAlwaysOnEnabled()Z
    .locals 0

    .line 2324
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-virtual {p0}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->isAlwaysOnEnabled()Z

    move-result p0

    return p0
.end method

.method public isAutoCheckPinEnabled()Z
    .locals 0

    .line 1067
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->keyguardPinPasswordLength()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAutoFacelockEnabled()Z
    .locals 1

    .line 1818
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    if-eqz v0, :cond_0

    .line 1819
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 1822
    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    return p0
.end method

.method public isBouncerRecognizeEnabled()Z
    .locals 0

    .line 1827
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    return p0
.end method

.method public isCameraErrorState()Z
    .locals 1

    .line 1793
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isCameraLaunched()Z
    .locals 0

    .line 925
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCameraLaunched:Z

    return p0
.end method

.method public isEmergencyPanelExpand()Z
    .locals 0

    .line 2559
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsEmergencyPanelExpand:Z

    return p0
.end method

.method public isFaceAdded()Z
    .locals 0

    .line 1932
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    return p0
.end method

.method public isFacelockAllowed()Z
    .locals 2

    .line 1840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFacelockAllowed, visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bouncer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", done:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", switching:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", added:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", simpin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1842
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fp authenticated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", on:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isWeakFaceTimeout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    .line 1840
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->allowShowingLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isWeakFaceTimeout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1849
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockWithFacelockPossible()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public isFacelockAvailable()Z
    .locals 1

    .line 1757
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isFacelockDisabled()Z
    .locals 1

    .line 1767
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFacelockEnabled()Z
    .locals 0

    .line 1814
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockEnabled:Z

    return p0
.end method

.method public isFacelockLightingEnabled()Z
    .locals 0

    .line 1836
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    return p0
.end method

.method public isFacelockRecognizing()Z
    .locals 1

    .line 1774
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFacelockUnlocking()Z
    .locals 0

    .line 1918
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    return p0
.end method

.method public isFacelockWaitingTap()Z
    .locals 1

    .line 1749
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFingerprintAlreadyAuthenticated()Z
    .locals 0

    .line 1459
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    return p0
.end method

.method public isFingerprintEnrolled(I)Z
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 885
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFingerprintLockout()Z
    .locals 0

    .line 1470
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    return p0
.end method

.method public isFirstUnlock()Z
    .locals 0

    .line 1270
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFodHintShowing()Z
    .locals 0

    .line 2370
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2371
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->hasHintText()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFodShouldHiddenOnAod()Z
    .locals 1

    .line 2338
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodBurnInProtectionHelper:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->isFodHiddenOnAod()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShowFodOnAodEnabled:Z

    if-nez p0, :cond_0

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

.method public isFodSupportOnAod()Z
    .locals 0

    .line 2358
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShowFodOnAodEnabled:Z

    return p0
.end method

.method public isGoingToSleep()Z
    .locals 3

    .line 2182
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isGoingToSleep"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isImeShow()Z
    .locals 0

    .line 672
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    return p0
.end method

.method public isKeyguardDone()Z
    .locals 0

    .line 970
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    return p0
.end method

.method public isLaunchingCamera()Z
    .locals 0

    .line 930
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    return p0
.end method

.method public isLaunchingLeftAffordance()Z
    .locals 0

    .line 1453
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    return p0
.end method

.method public isLowLightEnv()Z
    .locals 0

    .line 2420
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsLowLightEnv:Z

    return p0
.end method

.method public isOpFingerprintDisabled(I)Z
    .locals 5

    .line 2362
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "isFingerprintDisabled"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2364
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPreventModeActivte()Z
    .locals 0

    .line 811
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    return p0
.end method

.method public isPreventModeEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1256
    sget-boolean p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1261
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "oem_acc_anti_misoperation_screen"

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public isQSExpanded()Z
    .locals 0

    .line 700
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    return p0
.end method

.method public isScreenTurningOn()Z
    .locals 0

    .line 795
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    return p0
.end method

.method public isSensorDetectedNear()Z
    .locals 2

    .line 2001
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShutdownDialogVisible()Z
    .locals 0

    .line 728
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutdownDialogShow:Z

    return p0
.end method

.method public isShuttingDown()Z
    .locals 0

    .line 749
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutingDown:Z

    return p0
.end method

.method public isSimPinSecure()Z
    .locals 3

    .line 2192
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isSimPinSecure"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSwitchingUser()Z
    .locals 3

    .line 2187
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isSwitchingUser"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isUnlockWithFacelockPossible()Z
    .locals 2

    .line 1923
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    if-eqz v0, :cond_0

    .line 1924
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1925
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUnlockingWithBiometricAllowed()Z
    .locals 6

    const/4 v0, 0x0

    .line 2162
    :try_start_0
    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v2, "isUnlockingWithBiometricAllowed"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-static {v1, v2, v4}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 2164
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "OpKeyguardUpdateMonitor"

    const-string v2, "isUnlockingWithBiometricAllowed occur error"

    .line 2166
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isUserUnlocked()Z
    .locals 2

    .line 612
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 615
    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWeakFaceTimeout()Z
    .locals 4

    .line 2173
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "isWeakFaceTimeout"

    invoke-static {v0, p0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2176
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public keyguardPinPasswordLength()I
    .locals 5

    const/4 v0, 0x0

    .line 1054
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string v2, "lockscreen.pin_password_length"

    const-wide/16 v3, 0x0

    .line 1055
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    .line 1054
    invoke-interface {v1, v2, v3, v4, p0}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLong error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    :goto_0
    const/4 v1, 0x4

    if-lt p0, v1, :cond_0

    return p0

    :cond_0
    return v0
.end method

.method public synthetic lambda$onWakingUpScrimAnimationStart$0$OpKeyguardUpdateMonitor()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->lambda$onWakingUpScrimAnimationStart$0()V

    return-void
.end method

.method public notifyBrightnessChange()V
    .locals 0

    .line 858
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->notifyBrightnessChange()V

    :cond_0
    return-void
.end method

.method public notifyDisplayKeyguardUnlockSuccess()V
    .locals 2

    .line 2007
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_1

    .line 2008
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    if-eqz v0, :cond_1

    .line 2010
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "unlock keyguard and notify display"

    .line 2011
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_0
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setExitFingerPrintModeWay(Z)V

    :cond_1
    return-void
.end method

.method public notifyDisplayPowerStatusChanged(I)V
    .locals 3

    .line 2490
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDisplayPowerStatusChanged= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callstack= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    :cond_0
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCurDisplayPoweStatus:I

    if-eq v0, p1, :cond_1

    .line 2495
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCurDisplayPoweStatus:I

    .line 2497
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    const/16 v1, 0x1fb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2498
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public notifyEnvironmentLightChanged(Z)V
    .locals 3

    xor-int/lit8 v0, p1, 0x1

    .line 2429
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsLowLightEnv:Z

    .line 2432
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    const/16 v1, 0x1fa

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2433
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2434
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFacelockStateChanged(I)V
    .locals 4

    .line 1689
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    .line 1690
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    .line 1692
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v2, "OpKeyguardUpdateMonitor"

    if-eqz v1, :cond_0

    .line 1693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyFacelockStateChanged, type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isWeak:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isWeakFaceTimeout()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockWaitingTap()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isWeakFaceTimeout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1698
    iput v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const-string p1, "[WeakFace] change to not running"

    .line 1699
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1704
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1706
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    const/16 v2, 0x150

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1710
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$5;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyFakeLocking(Z)V
    .locals 0

    .line 833
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFakeLocking:Z

    return-void
.end method

.method public notifyFpAcquiredInfo(I)V
    .locals 5

    if-eqz p1, :cond_0

    and-int/lit16 v0, p1, 0x3ff

    shr-int/lit8 v1, p1, 0xa

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x16

    and-int/lit8 v2, v2, 0x3

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    if-nez p1, :cond_0

    .line 2456
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 2457
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    add-int p1, v0, v1

    int-to-long v3, p1

    .line 2458
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBSPTotalTime:J

    .line 2460
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "finger_time_1"

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2461
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "finger_time_2"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2462
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "finger_time_3"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public notifyInsetsChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 2563
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2564
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2566
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onInsetsChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyKeyguardDone(Z)V
    .locals 3

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyKeyguardDone isKeyguardDone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 940
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    const/16 v2, 0x1f5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 941
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    .line 945
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    .line 948
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 949
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->reportMDMEvent()V

    const/4 v0, 0x0

    .line 950
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    .line 954
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 956
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_2

    .line 958
    invoke-virtual {v2, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onKeyguardDoneChanged(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 963
    :cond_3
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-eqz p0, :cond_4

    .line 964
    const-class p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyKeyguardDone()V

    :cond_4
    return-void
.end method

.method public notifyKeyguardFadedAway()V
    .locals 2

    const/4 v0, 0x0

    .line 2313
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2314
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2316
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onKeyguardFadedAway()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyPasswordLockout()V
    .locals 2

    const/4 v0, 0x0

    .line 1937
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1938
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1940
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onPasswordLockout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyPreventModeChange(Z)V
    .locals 3

    xor-int/lit8 v0, p1, 0x1

    .line 1294
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    .line 1295
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    const/16 v1, 0x1f8

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1296
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1297
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyScreenTurningOn()V
    .locals 2

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "notifyScreenTurningOn"

    .line 755
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    monitor-enter p0

    const/4 v0, 0x1

    .line 757
    :try_start_0
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 758
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 758
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyShutDownOrReboot()V
    .locals 2

    const/4 v0, 0x1

    .line 734
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutingDown:Z

    .line 735
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    const/4 v0, 0x0

    .line 737
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 738
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 740
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onShuttingDown()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyVideoChanged(Ljava/lang/String;Z)V
    .locals 3

    .line 2599
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x1fe

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2601
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifyWallpaperAodUnlock()V
    .locals 2

    .line 2411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyWallpaperAodUnlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.systemui.aod_unlock"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.wallpaper"

    .line 2413
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2414
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onBrickModeChanged(Z)V
    .locals 0

    .line 1996
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsInBrickMode:Z

    return-void
.end method

.method public onEmergencyPanelExpandChanged(Z)V
    .locals 3

    .line 2534
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    .line 2535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEmergencyPanelExpandChanged: show:( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsEmergencyPanelExpand:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ), mLockoutState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isUnlockingWithBiometricAllowed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpKeyguardUpdateMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsEmergencyPanelExpand:Z

    if-eq v1, p1, :cond_3

    .line 2539
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsEmergencyPanelExpand:Z

    .line 2540
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    if-nez p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "onEmergencyPanelExpandChanged: update fingerprint listening state"

    .line 2547
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getUpdateBiometricListeningStateRunnable()Ljava/lang/Runnable;

    move-result-object v0

    .line 2549
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xfa

    .line 2548
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "onEmergencyPanelExpandChanged: in lockout state, just update ui."

    .line 2545
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    :goto_2
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2553
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_3
    return-void
.end method

.method public onFacelockUnlocking(Z)V
    .locals 0

    .line 1911
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    .line 1913
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onFacelockUnlocking(Z)V

    return-void
.end method

.method public onImeShow(Z)V
    .locals 3

    .line 641
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_3

    .line 642
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImeShow: show:( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ), mLockoutState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isUnlockingWithBiometricAllowed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpKeyguardUpdateMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    if-eq v1, p1, :cond_3

    .line 648
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    .line 650
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    if-nez p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "onImeShow: update fingerprint listening state"

    .line 657
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getUpdateBiometricListeningStateRunnable()Ljava/lang/Runnable;

    move-result-object v0

    .line 659
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xfa

    .line 658
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "onImeShow: in lockout state, just update ui."

    .line 655
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :goto_2
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 664
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_3
    return-void
.end method

.method public onWakingUpScrimAnimationStart(J)V
    .locals 6

    .line 2468
    iget-wide v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodFpAuthenticatedTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    cmp-long v4, p1, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBSPTotalTime:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    sub-long/2addr p1, v0

    .line 2471
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "finger_time_4"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2472
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBSPTotalTime:J

    add-long/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "finger_time_0"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2474
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    .line 2475
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "aod unlock mdm recorders incorrect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodFpAuthTimeMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpKeyguardUpdateMonitor"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2477
    :cond_0
    new-instance p1, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardUpdateMonitor$_S0XabNqBJYebkaW2v7ppWxNC80;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardUpdateMonitor$_S0XabNqBJYebkaW2v7ppWxNC80;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2483
    :goto_0
    iput-wide v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBSPTotalTime:J

    :cond_1
    return-void
.end method

.method protected opDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 2022
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 2023
    iget-object p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2025
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 2027
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    FingerprintFailedAttempts="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mPocketSensorEnabled="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2029
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mPocketState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mLaunchingCamera="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2031
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mDuringAcquired="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mLockoutState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2033
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mFingerprintAlreadyAuthenticated="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    EnrollSize="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2039
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mBatteryStatus="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/settingslib/fuelgauge/BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", level="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/settingslib/fuelgauge/BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", health="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/settingslib/fuelgauge/BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maxChargingWattage="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/settingslib/fuelgauge/BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2039
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2044
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mKeyguardIsVisible="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardIsVisible()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2045
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mGoingToSleep="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2046
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    isPreventModeEnabled="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2047
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mPreventModeActive="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2048
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mDeviceProvisioned="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2049
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    getFailedUnlockAttempts="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2050
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    getUserCanSkipBouncer="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mDeviceInteractive="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mScreenOn="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenOn()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2053
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsKeyguardDone="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2055
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_BOOT_TO_ENTER_BOUNCER="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2056
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsUserUnlocked="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2058
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mSimUnlockSlot0="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2059
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mSimUnlockSlot1="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2060
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mPendingSubInfoChange="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2064
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_FACE_UNLOCK="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FACE_UNLOCK:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2065
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsFaceAdded="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2066
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsWeakFaceTimeout="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isWeakFaceTimeout()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2067
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mFacelockRunningType="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isSecure="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p3

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2069
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    getCurrentUser="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2070
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mSkipBouncerByFacelock="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2071
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mFacelockUnlocking="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mBouncerRecognizeEnabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBouncerRecognizeEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2073
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mFacelockTimes="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2074
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_FINGERPRINT_POCKET="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2075
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    IS_SUPPORT_MOTOR_CAMERA="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isFacelockDisabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockDisabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2077
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isUnlockWithFacelockPossible="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockWithFacelockPossible()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2078
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isWeakFaceUnlockEnabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isWeakFaceUnlockEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2081
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isFodShouldHiddenOnAod= "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFodShouldHiddenOnAod()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2084
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mBootCompleted="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBootCompleted:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string p3, "sys.debug.systemui.pin"

    .line 2086
    invoke-static {p3, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 p3, 0x38

    if-ne p1, p3, :cond_2

    .line 2087
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    length="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->keyguardPinPasswordLength()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public opGetServiceStates()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation

    .line 2110
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getServiceStates()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method protected opHandleFingerprintAcquired(I)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 556
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mDuringAcquired:Z

    .line 557
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    sget-boolean v2, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0xbb8

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x5dc

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    .line 561
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 562
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_2

    .line 565
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFingerprintAcquired(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected opHandleFingerprintError1(I)V
    .locals 4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 1215
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 1217
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mResetAttempsTimeInMillis:J

    sub-long/2addr v0, v2

    .line 1218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "diff = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OpKeyguardUpdateMonitor"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    .line 1221
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    .line 1225
    :cond_1
    sget-boolean p1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz p1, :cond_2

    const-string p1, "fingerprint on error"

    .line 1227
    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->showFodAndCountdownToHide(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected opHandleFingerprintLockoutReset()V
    .locals 1

    const/4 v0, 0x0

    .line 1324
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLockoutState:Z

    return-void
.end method

.method protected opHandlePendingSubInfoChange(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 574
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 576
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    .line 578
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    if-nez p1, :cond_3

    .line 579
    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    if-eqz p1, :cond_2

    const-string p1, "OpKeyguardUpdateMonitor"

    const-string v1, "handle pending subinfo change"

    .line 580
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleSimSubscriptionInfoChanged()V

    .line 583
    :cond_2
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    :cond_3
    return-void
.end method

.method protected opHandleScreenTurnedOff()V
    .locals 3

    const/4 v0, 0x0

    .line 1350
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 1353
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1354
    invoke-direct {p0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    goto :goto_0

    .line 1357
    :cond_0
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mAodAlwaysOnController:Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;

    invoke-virtual {v1}, Lcom/oneplus/aod/alwayson/OpAodAlwaysOnController;->isAlwaysOnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1358
    invoke-direct {p0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    goto :goto_0

    .line 1360
    :cond_1
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    .line 1370
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1371
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1375
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    return-void
.end method

.method protected opHandleScreenTurnedOn()V
    .locals 3

    const/4 v0, 0x0

    .line 1328
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 1331
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1332
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    goto :goto_0

    .line 1333
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1334
    invoke-direct {p0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    .line 1339
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1340
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1345
    :cond_2
    invoke-direct {p0, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    return-void
.end method

.method protected opHandleStartedGoingToSleep()V
    .locals 2

    const/4 v0, 0x0

    .line 976
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    .line 982
    sget-boolean v1, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    .line 988
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    .line 992
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-nez v0, :cond_1

    .line 993
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->reportMDMEvent()V

    const/4 v0, 0x0

    .line 994
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpTime:Ljava/util/Calendar;

    :cond_1
    const-wide/16 v0, 0x0

    .line 999
    iput-wide v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mBSPTotalTime:J

    return-void
.end method

.method protected opHandleUserSwitch(I)V
    .locals 3

    const-string v0, "OpKeyguardUpdateMonitor"

    const-string v1, "opHandleUserSwitch"

    .line 2385
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_fod_on_aod_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShowFodOnAodEnabled:Z

    return-void
.end method

.method protected opOnFingerprintAuthenticated(I)V
    .locals 0

    .line 1303
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    .line 1316
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1317
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onFingerprintAuthenticated()V

    :cond_0
    return-void
.end method

.method public opOnKeyguardVisibilityChanged(Z)V
    .locals 4

    .line 1005
    const-class v0, Lcom/android/systemui/recents/OverviewProxyService;

    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mKeyguardShowing:Z

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1009
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    goto :goto_0

    .line 1010
    :cond_0
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->FOD_UI_DEBUG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 1017
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyguard showing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isOnePlusHomeApp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isOnePlusHomeApp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isBouncer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLaunchingCamera="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLaunchingLeftAffordance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpKeyguardUpdateMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 1019
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/recents/OverviewProxyService;->notifyNavBarButtonAlphaChanged(FZ)V

    .line 1022
    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->setRecentUnlockBiometricFace(Z)V

    .line 1023
    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->setRecentUnlockBiometricFinger(Z)V

    goto :goto_1

    .line 1026
    :cond_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isOnePlusHomeApp()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    if-nez p1, :cond_2

    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    if-eqz p0, :cond_3

    .line 1028
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/recents/OverviewProxyService;->notifyNavBarButtonAlphaChanged(FZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public opReportSimUnlocked(I)V
    .locals 5

    .line 590
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportSimUnlocked(subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpKeyguardUpdateMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 597
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 599
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    .line 601
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    .line 602
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v2

    const/16 v3, 0x2bd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    .line 601
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v1, 0x5

    .line 604
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->handleSimStateChange(III)V

    return-void
.end method

.method protected opShouldListenForFingerprint()Z
    .locals 5

    .line 1476
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    const/4 v1, 0x1

    const-string v2, "OpKeyguardUpdateMonitor"

    const/4 v3, 0x0

    if-eqz v0, :cond_f

    .line 1477
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 1478
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mScreenTurningOn:Z

    if-nez v0, :cond_1

    const-string p0, "opShouldListenForFingerprint false: screen off"

    .line 1479
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1485
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPreventModeActive:Z

    if-nez v0, :cond_2

    .line 1486
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    const-string p0, "opShouldListenForFingerprint false: disableByQSExpanded"

    .line 1489
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1493
    :cond_3
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 1494
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1496
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "opShouldListenForFingerprint false: disableByPanelExpanded"

    .line 1498
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1505
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "opShouldListenForFingerprint false: biometric not allowed"

    .line 1506
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1510
    :cond_5
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutingDown:Z

    if-eqz v0, :cond_6

    const-string p0, "opShouldListenForFingerprint false: Shuting Down"

    .line 1511
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1516
    :cond_6
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutdownDialogShow:Z

    if-eqz v0, :cond_7

    const-string p0, "opShouldListenForFingerprint false: Shutdown Dialog showing"

    .line 1517
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1522
    :cond_7
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    const-string p0, "opShouldListenForFingerprint false: Facelock RECOGNIZED_OK"

    .line 1523
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1527
    :cond_8
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFakeLocking:Z

    if-nez v0, :cond_9

    const-string p0, "opShouldListenForFingerprint false: Keyguard Done and not fake locking"

    .line 1528
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1532
    :cond_9
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockUnlocking:Z

    if-eqz v0, :cond_a

    const-string p0, "opShouldListenForFingerprint false: FacelockUnlocking"

    .line 1533
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1538
    :cond_a
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1539
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenSaverEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenSaverActivatedOnDock()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const-string p0, "opShouldListenForFingerprint false: screen saver is enabled"

    .line 1540
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1545
    :cond_c
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1547
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-nez v0, :cond_d

    const-string p0, "opShouldListenForFingerprint false: start to wake up and keyguard is occluded."

    .line 1549
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1551
    :cond_d
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-eqz v0, :cond_e

    const-string p0, "opShouldListenForFingerprint false: start to wake up and keyguard is done."

    .line 1553
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1559
    :cond_e
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    .line 1560
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getBouncer()Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object v0

    .line 1561
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardBouncer;->isSecurityModePassword()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1562
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardBouncer;->isKeyguardPasswordInputMethodPickerShow()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "opShouldListenForFingerprint false: bouncer password input method picker is showing"

    .line 1563
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1569
    :cond_f
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isBouncer()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mImeShow:Z

    if-eqz v0, :cond_10

    const-string p0, "opShouldListenForFingerprint false: IME show"

    .line 1570
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1575
    :cond_10
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    if-eqz v0, :cond_11

    const-string p0, "opShouldListenForFingerprint false: FingerprintAlreadyAuthenticated"

    .line 1576
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1581
    :cond_11
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPocketState:I

    iget-boolean v4, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLidOpen:Z

    invoke-direct {p0, v0, v4}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "opShouldListenForFingerprint false: prevent mode"

    .line 1582
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1587
    :cond_12
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "opShouldListenForFingerprint false: going to sleep"

    .line 1588
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1596
    :cond_13
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1598
    :cond_14
    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    .line 1601
    :cond_15
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    if-eqz v0, :cond_16

    const-string p0, "opShouldListenForFingerprint false: Launching Camera"

    .line 1602
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1607
    :cond_16
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    if-eqz v0, :cond_17

    const-string p0, "opShouldListenForFingerprint false: LaunchingLeftAffordance"

    .line 1608
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1612
    :cond_17
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsInBrickMode:Z

    if-eqz v0, :cond_18

    const-string p0, "opShouldListenForFingerprint false: Brick Mode"

    .line 1613
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1618
    :cond_18
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsEmergencyPanelExpand:Z

    if-eqz p0, :cond_19

    const-string p0, "opShouldListenForFingerprint false: EmergencyPanelExpand"

    .line 1619
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_19
    return v1
.end method

.method public reportFaceUnlock()V
    .locals 4

    .line 1971
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-void

    .line 1974
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const-string v3, "oneplus_face_unlock_success_times"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1975
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSuccessTimes:I

    return-void
.end method

.method public reportFailedStrongAuthUnlockAttempt(I)V
    .locals 3

    .line 1414
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1416
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 1417
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public resetFingerprintAlreadyAuthenticated()V
    .locals 1

    const/4 v0, 0x0

    .line 1463
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    return-void
.end method

.method public setFodDialogView(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .line 635
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodBurnInProtectionHelper:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->setFodDialogView(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    return-void
.end method

.method public setGoingToSleepReason(I)V
    .locals 0

    .line 839
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mGoingToSleepReason:I

    return-void
.end method

.method public setIsFaceAdded(Z)V
    .locals 0

    .line 1856
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsFaceAdded:Z

    return-void
.end method

.method public setQSExpanded(Z)V
    .locals 2

    .line 678
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez v0, :cond_0

    return-void

    .line 682
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    if-eq p1, v0, :cond_3

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQSExpanded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 684
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    .line 683
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mQSExpanded:Z

    .line 687
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_1
    const/4 v0, 0x0

    .line 690
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 691
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_2

    .line 693
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onQSExpendChanged(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setShutdownDialogVisible(Z)V
    .locals 2

    .line 706
    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez v0, :cond_0

    return-void

    .line 710
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutdownDialogShow:Z

    if-eq p1, v0, :cond_3

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShutdownDialogVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 712
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardUpdateMonitor"

    .line 711
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mShutdownDialogShow:Z

    .line 715
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_1
    const/4 v0, 0x0

    .line 718
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 719
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_2

    .line 721
    invoke-virtual {v1, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onShutdownDialogVisibilityChanged(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setUserUnlocked(Z)V
    .locals 2

    .line 620
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 621
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->handleUserUnlocked()V

    .line 623
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/aod/OpAodUtils;->forceTurnOnFpBlackGesture(Landroid/content/Context;I)V

    .line 627
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mIsUserUnlocked:Z

    return-void
.end method

.method public setWakingUpReason(Ljava/lang/String;)V
    .locals 0

    .line 1988
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mWakingUpReason:Ljava/lang/String;

    return-void
.end method

.method public shouldPlayFacelockFailAnim()Z
    .locals 2

    .line 1894
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public shouldShowFacelockIcon()Z
    .locals 1

    .line 1781
    iget p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public showFodAndCountdownToHide(Ljava/lang/String;)V
    .locals 0

    .line 2334
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodBurnInProtectionHelper:Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->startSchedule(Ljava/lang/String;)V

    return-void
.end method

.method public updateFodIconVisibility()V
    .locals 1

    .line 2377
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2378
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method public updateLaunchingCameraState(Z)V
    .locals 2

    .line 909
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    if-eq v0, p1, :cond_0

    .line 910
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingCamera:Z

    .line 911
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 913
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 914
    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    .line 918
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCameraLaunched:Z

    .line 919
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateLaunchingCameraState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mCameraLaunched:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpKeyguardUpdateMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateLaunchingLeftAffordance(Z)V
    .locals 0

    .line 1445
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mLaunchingLeftAffordance:Z

    .line 1446
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1447
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 1448
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method protected watchForFacelockSettings()V
    .locals 4

    .line 1629
    new-instance v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getHandler()Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;-><init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1638
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_enable"

    .line 1639
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 1638
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1641
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_auto_face_unlock_enable"

    .line 1642
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1641
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1645
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_assistive_lighting_enable"

    .line 1646
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1645
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1649
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_powerkey_recognize_enable"

    .line 1650
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1649
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1653
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_success_times"

    .line 1654
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 1653
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1656
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateFacelockSettings()V

    return-void
.end method
