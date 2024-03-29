.class public Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
.super Ljava/lang/Object;
.source "FiveGServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;,
        Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;,
        Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DELAY_NO_NR_ICON:I

.field private static sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;


# instance fields
.field private isChinaMobile:Ljava/lang/String;

.field private isChinaTelecom:Ljava/lang/String;

.field private mBindRetryTimes:I

.field protected mCallback:Lorg/codeaurora/internal/INetworkCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mClient:Lorg/codeaurora/internal/Client;

.field private mContext:Landroid/content/Context;

.field private mCountDownTimer:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;

.field private final mCurrentServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mFivebarRsrpThresholds:[I

.field private mHandler:Landroid/os/Handler;

.field private mInitRetryTimes:I

.field private final mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLast5GEnabledStatus:Landroid/util/SparseBooleanArray;

.field private final mLastNrIconType:Landroid/util/SparseIntArray;

.field private final mLastServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

.field private mPackageName:Ljava/lang/String;

.field private final mRegisterListenerStatus:Landroid/util/SparseBooleanArray;

.field private final mRsrpThresholds:[I

.field private final mScreenOnQueryToken:Landroid/util/SparseIntArray;

.field private mServiceConnected:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field final mStatesListeners:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FiveGServiceClient"

    const/4 v1, 0x3

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->DEBUG:Z

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 106
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7530

    goto :goto_0

    :cond_0
    const/16 v0, 0x2710

    :goto_0
    sput v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->DELAY_NO_NR_ICON:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCurrentServiceStates:Landroid/util/SparseArray;

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastServiceStates:Landroid/util/SparseArray;

    .line 127
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLast5GEnabledStatus:Landroid/util/SparseBooleanArray;

    .line 128
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastNrIconType:Landroid/util/SparseIntArray;

    .line 129
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mScreenOnQueryToken:Landroid/util/SparseIntArray;

    .line 130
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mRegisterListenerStatus:Landroid/util/SparseBooleanArray;

    const-string v0, "persist.radio.ischinatelecom"

    const-string v1, "0"

    .line 131
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->isChinaTelecom:Ljava/lang/String;

    const-string v0, "persist.radio.ischinamobile"

    .line 132
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->isChinaMobile:Ljava/lang/String;

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    .line 142
    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    .line 145
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;

    sget v1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->DELAY_NO_NR_ICON:I

    int-to-long v3, v1

    int-to-long v5, v1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;-><init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;JJ)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCountDownTimer:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;

    .line 676
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;-><init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    .line 709
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;-><init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 751
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;-><init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    .line 336
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mPackageName:Ljava/lang/String;

    .line 339
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 346
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    .line 347
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$array;->op_config_5g_signal_rsrp_thresholds:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mRsrpThresholds:[I

    .line 349
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$array;->config_5g_signal_snr_thresholds:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 352
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$array;->config_5_bar_5g_signal_rsrp_thresholds:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mFivebarRsrpThresholds:[I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;II)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->onNrIconTypeInternal(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/os/Handler;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 95
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->notifyListenersIfNecessary(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLast5GEnabledStatus:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)Z
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->is5GIcon(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->onNrIconNone(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->isChinaTelecom:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->isChinaMobile:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/util/SparseIntArray;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastNrIconType:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/util/SparseIntArray;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mScreenOnQueryToken:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCountDownTimer:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->binderService()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->initFiveGServiceState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->notifyMonitorCallback()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Lorg/codeaurora/internal/Client;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    return-object p1
.end method

.method private binderService()V
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Lorg/codeaurora/internal/ServiceUtil;->bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bind service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGServiceClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 395
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    mul-int/lit16 v2, v2, 0x7d0

    add-int/lit16 v2, v2, 0xbb8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 398
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
    .locals 1

    .line 358
    sget-object v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    .line 362
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    return-object p0
.end method

.method private getLastServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastServiceStates:Landroid/util/SparseArray;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getServiceState(ILandroid/util/SparseArray;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p0

    return-object p0
.end method

.method private getLevel(I[IZ)I
    .locals 3

    .line 480
    array-length p0, p2

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    aget p0, p2, p0

    const/4 v1, 0x0

    if-lt p0, p1, :cond_2

    aget p0, p2, v1

    if-ge p1, p0, :cond_0

    goto :goto_1

    .line 484
    :cond_0
    :goto_0
    array-length p0, p2

    sub-int/2addr p0, v0

    if-ge v1, p0, :cond_3

    .line 485
    aget p0, p2, v1

    if-ge p0, p1, :cond_1

    add-int/lit8 p0, v1, 0x1

    aget v2, p2, p0

    if-gt p1, v2, :cond_1

    move v0, p0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v0, v1

    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 496
    :cond_4
    sget-boolean p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->DEBUG:Z

    if-eqz p0, :cond_5

    .line 497
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "value="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " level="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FiveGServiceClient"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method

.method private getNrIconGroup(II)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 1

    .line 653
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 662
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNrIconGroup: Unknown nrIconType = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FiveGServiceClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 659
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    .line 656
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_BASIC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :goto_0
    return-object p0
.end method

.method public static getNumLevels(Landroid/content/Context;)I
    .locals 1

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->config_5g_num_signal_strength_bins:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private static getServiceState(ILandroid/util/SparseArray;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;",
            ">;)",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;"
        }
    .end annotation

    .line 421
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;-><init>()V

    .line 424
    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private initFiveGServiceState()V
    .locals 2

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFiveGServiceState size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGServiceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 544
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 546
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->initFiveGServiceState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initFiveGServiceState(I)V
    .locals 5

    const-string v0, "initFiveGServiceState: Exception = "

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGServiceClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    if-eqz v1, :cond_0

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query 5G service state for phoneId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->queryNrSignalStrength(I)V

    .line 557
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v1, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->query5gConfigInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v1

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query5gConfigInfo result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v1, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v1

    .line 561
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNrIconType result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v1, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->queryNrBearerAllocation(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v1

    .line 564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNrBearerAllocation result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v1, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->query5gStatus(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p1

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query5gStatus result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x401

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 581
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    mul-int/lit16 v1, v1, 0x7d0

    add-int/lit16 v1, v1, 0xbb8

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 583
    iget p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "try to re-binder service"

    .line 572
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 573
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    .line 574
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnected:Z

    const/4 p1, 0x0

    .line 575
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    .line 576
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    .line 577
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->binderService()V

    :cond_0
    :goto_0
    return-void
.end method

.method private is5GIcon(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private notifyListenersIfNecessary(I)V
    .locals 5

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object v0

    .line 505
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getLastServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object v1

    .line 506
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->equals(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mRegisterListenerStatus:Landroid/util/SparseBooleanArray;

    .line 509
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 510
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mRegisterListenerStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    const-string v4, "FiveGServiceClient"

    if-eqz v2, :cond_1

    .line 511
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mRegisterListenerStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const-string/jumbo v2, "when reg listen is true, need to notify"

    .line 512
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") Change in state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " \n\tto "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->copyFrom(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)V

    .line 522
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;

    if-eqz p1, :cond_4

    .line 524
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;->onStateChanged(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)V

    .line 527
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$100(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I

    move-result p1

    const/16 v1, -0x8000

    if-eq p1, v1, :cond_4

    .line 528
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$100(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I

    move-result p1

    const/16 v1, -0x82

    if-le p1, v1, :cond_4

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$100(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I

    move-result p1

    const/16 v0, -0x28

    if-ge p1, v0, :cond_4

    .line 529
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x403

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 530
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 537
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x402

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    return-void
.end method

.method private notifyMonitorCallback()V
    .locals 2

    const/4 v0, 0x0

    .line 668
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 669
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 671
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onNrIconNone(I)V
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCountDownTimer:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->cancelDelay(II)V

    const/4 v0, 0x0

    .line 882
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->onNrIconTypeInternal(II)V

    return-void
.end method

.method private onNrIconTypeInternal(II)V
    .locals 2

    .line 886
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object v0

    .line 887
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastNrIconType:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 888
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$202(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    .line 889
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->update5GIcon(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)V

    .line 890
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->notifyListenersIfNecessary(I)V

    return-void
.end method

.method private showFake5GIcon(I)Z
    .locals 2

    .line 641
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 642
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mRsrpThresholds:[I

    if-nez p0, :cond_0

    goto :goto_0

    .line 645
    :cond_0
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_1

    .line 646
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBearerAllocationStatus :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$400(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FiveGServiceClient"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$400(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I

    move-result p0

    if-lez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 412
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getServiceState(ILandroid/util/SparseArray;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p0

    return-object p0
.end method

.method public getRsrpLevel(I)I
    .locals 2

    .line 462
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportFiveBar()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mFivebarRsrpThresholds:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getLevel(I[IZ)I

    move-result p0

    return p0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mRsrpThresholds:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getLevel(I[IZ)I

    move-result p0

    return p0
.end method

.method public isServiceConnected()Z
    .locals 0

    .line 407
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnected:Z

    return p0
.end method

.method public queryNrIconType()V
    .locals 5

    const-string v0, "FiveGServiceClient"

    const/4 v1, 0x0

    .line 900
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 901
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 903
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v3, :cond_0

    .line 904
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v3, v2, v4}, Lorg/codeaurora/internal/IExtTelephony;->queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    .line 905
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mScreenOnQueryToken:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lorg/codeaurora/internal/Token;->get()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNrIconType: result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mScreenOnQueryToken:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 910
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNrIconType: exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public queryNrSignalStrength(I)V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    const-string v1, "query queryNrSignalStrength for phoneId "

    const-string v2, "FiveGServiceClient"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    if-eqz v0, :cond_0

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v0, p1, p0}, Lorg/codeaurora/internal/IExtTelephony;->queryNrSignalStrength(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p0

    .line 594
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "queryNrSignalStrength result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "queryNrSignalStrength"

    .line 596
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 599
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 366
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerListener(ILcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;)V
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGServiceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->isServiceConnected()Z

    move-result p2

    if-nez p2, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->binderService()V

    goto :goto_0

    .line 377
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->initFiveGServiceState(I)V

    .line 381
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mRegisterListenerStatus:Landroid/util/SparseBooleanArray;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public unregisterListener(I)V
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterListener phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGServiceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 389
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastServiceStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method update5GIcon(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 606
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    const-string v1, "FiveGServiceClient"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/oneplus/util/OpUtils;->isVzwSIM(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastNrIconType:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$202(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    goto :goto_0

    .line 608
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsVisMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 609
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$202(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    goto :goto_0

    .line 614
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->showFake5GIcon(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLast5GEnabledStatus:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "update5GIcon: set iconType to BASIC"

    .line 615
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$202(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    goto :goto_0

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastNrIconType:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$202(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    .line 631
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$200(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I

    move-result v0

    .line 632
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getNrIconGroup(II)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$302(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 633
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update5GIcon phoneId = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "iconType = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", iconGroup = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
