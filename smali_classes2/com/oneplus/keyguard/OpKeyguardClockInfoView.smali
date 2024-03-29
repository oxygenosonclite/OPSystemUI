.class public Lcom/oneplus/keyguard/OpKeyguardClockInfoView;
.super Landroid/widget/LinearLayout;
.source "OpKeyguardClockInfoView.java"

# interfaces
.implements Lcom/oneplus/aod/views/IOpAodClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;
    }
.end annotation


# instance fields
.field private mAllowShowSensitiveData:Z

.field private mAodSliceViewContainer:Landroid/view/ViewGroup;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDebugRaiseCrashRate:[Z

.field private mDensityDpi:I

.field private mHasWindowFocus:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mInnerPanel:Landroid/widget/LinearLayout;

.field private mIsAodSliceOn:Z

.field private mIsFormat12Hour:Z

.field private mIsFormat12HourObserver:Landroid/database/ContentObserver;

.field private mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

.field public mKeyguardAssistantViewCallback:Lcom/android/keyguard/KeyguardAssistantView$Callback;

.field private mPrimary:Landroid/widget/TextView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemark:Landroid/widget/TextView;

.field private mSecondary:Landroid/widget/TextView;

.field private mTextViewDateLineThree:Landroid/widget/TextView;

.field private mTextViewDateOfWeekLineOne:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

.field private mTextViewTimeLineTwo:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

.field private mUiHandler:Landroid/os/Handler;

.field private mUser:I

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mViewType:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 125
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsAodSliceOn:Z

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAllowShowSensitiveData:Z

    .line 87
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsFormat12Hour:Z

    const/4 p1, 0x4

    new-array p1, p1, [Z

    .line 89
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDebugRaiseCrashRate:[Z

    .line 93
    new-instance p1, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$1;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContentObserver:Landroid/database/ContentObserver;

    .line 106
    new-instance p1, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$2;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$2;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsFormat12HourObserver:Landroid/database/ContentObserver;

    .line 116
    new-instance p1, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$3;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$3;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantViewCallback:Lcom/android/keyguard/KeyguardAssistantView$Callback;

    .line 429
    new-instance p1, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$5;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$5;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsAodSliceOn:Z

    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAllowShowSensitiveData:Z

    .line 87
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsFormat12Hour:Z

    const/4 v2, 0x4

    new-array v2, v2, [Z

    .line 89
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDebugRaiseCrashRate:[Z

    .line 93
    new-instance v2, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$1;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContentObserver:Landroid/database/ContentObserver;

    .line 106
    new-instance v2, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$2;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsFormat12HourObserver:Landroid/database/ContentObserver;

    .line 116
    new-instance v2, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$3;

    invoke-direct {v2, p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$3;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V

    iput-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantViewCallback:Lcom/android/keyguard/KeyguardAssistantView$Callback;

    .line 429
    new-instance v2, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$5;

    invoke-direct {v2, p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$5;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V

    iput-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpKeyguardClockInfoView constructer, callers= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x14

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpKeyguardClockInfoView"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDebugRaiseCrashRate:[Z

    const-string v4, "persist.debug.raise.crashrate.type1init"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    aput-boolean v4, v2, v0

    .line 133
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDebugRaiseCrashRate:[Z

    const-string v4, "persist.debug.raise.crashrate.type1release"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    aput-boolean v4, v2, v1

    .line 134
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDebugRaiseCrashRate:[Z

    const/4 v4, 0x2

    const-string v5, "persist.debug.raise.crashrate.type2"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    aput-boolean v5, v2, v4

    .line 135
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDebugRaiseCrashRate:[Z

    const/4 v4, 0x3

    const-string v5, "persist.debug.raise.crashrate.type2every"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    aput-boolean v1, v2, v4

    .line 137
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    .line 138
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mUiHandler:Landroid/os/Handler;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/R$styleable;->OpKeyguardClockInfoView:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 145
    :try_start_0
    sget v2, Lcom/android/systemui/R$styleable;->OpKeyguardClockInfoView_inputType:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->fromOrdinal(I)Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mViewType:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mViewType:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDensityDpi:I

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->init()V

    .line 153
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mViewType:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    sget-object v1, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->aod:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    if-ne v0, v1, :cond_4

    const-string v0, "new LinearLayout.LayoutParams"

    .line 154
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    :cond_4
    const-class p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 159
    new-instance p2, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;

    invoke-direct {p2, p0, p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$4;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-void

    :catchall_0
    move-exception p0

    .line 148
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    throw p0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAllowShowSensitiveData:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAllowShowSensitiveData:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Lcom/android/keyguard/KeyguardAssistantView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsFormat12Hour:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateView()V

    return-void
.end method

.method static synthetic access$602(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mUser:I

    return p1
.end method

.method static synthetic access$700(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Landroid/database/ContentObserver;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)Landroid/database/ContentObserver;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsFormat12HourObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method private initAssitantView()V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Lcom/android/keyguard/KeyguardAssistantView;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardAssistantView;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-eqz v0, :cond_1

    .line 497
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantViewCallback:Lcom/android/keyguard/KeyguardAssistantView$Callback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAssistantView;->addCallback(Lcom/android/keyguard/KeyguardAssistantView$Callback;)V

    .line 498
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAssistantView;->inflateIndicatorContainer()V

    .line 499
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAllowShowSensitiveData:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardAssistantView;->setHideSensitiveData(Z)V

    :cond_1
    return-void
.end method

.method private isREDVersion()Z
    .locals 4

    .line 314
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mViewType:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    sget-object v0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->aod:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    .line 315
    :goto_0
    invoke-static {}, Lcom/oneplus/aod/OpClockViewCtrl;->getClockStyle()I

    move-result v0

    const/16 v3, 0x32

    if-ne v0, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 316
    :goto_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p0, :cond_4

    :cond_2
    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    return v1
.end method

.method private synthetic lambda$onWindowFocusChanged$2()V
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-eqz p0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAssistantView;->refresh()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateAodSliceView$4()V
    .locals 3

    .line 543
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsAodSliceOn:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAssistantView;->hasHeader()Z

    move-result v0

    if-nez v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    :goto_0
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAodSliceViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAodSliceViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$updateLayout$0(Z)V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDebugRaiseCrashRate:[Z

    const/4 v1, 0x2

    aget-boolean v2, v0, v1

    const/4 v3, 0x3

    if-nez v2, :cond_0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.debug.raise.crashrate.type2, force:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", onlyForce"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDebugRaiseCrashRate:[Z

    aget-boolean v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", every:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDebugRaiseCrashRate:[Z

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardClockInfoView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 228
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDebugRaiseCrashRate:[Z

    aget-boolean p1, p1, v3

    if-eqz p1, :cond_2

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->release()V

    .line 230
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->initAssitantView()V

    .line 235
    :cond_2
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getWidth(Landroid/content/Context;)I

    move-result p1

    const/16 v0, 0x438

    if-le p1, v0, :cond_3

    .line 238
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_smart_space_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v0}, Lcom/oneplus/util/OpUtils;->convertPxByResolutionProportion(FI)I

    move-result v1

    goto :goto_0

    .line 239
    :cond_3
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_smart_space_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    if-le p1, v0, :cond_4

    .line 242
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_content_padding:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1, v0}, Lcom/oneplus/util/OpUtils;->convertPxByResolutionProportion(FI)I

    move-result p1

    goto :goto_1

    .line 243
    :cond_4
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_content_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateOfWeekLineOne:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 246
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 247
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateOfWeekLineOne:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 248
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 249
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 250
    iget-object v3, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateOfWeekLineOne:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateOfWeekLineOne:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewTimeLineTwo:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 254
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 255
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewTimeLineTwo:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 256
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 257
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 258
    iget-object v3, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewTimeLineTwo:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewTimeLineTwo:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewTimeLineTwo:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->updataClockView()V

    .line 262
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAodSliceViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 263
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAodSliceViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 265
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 266
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 267
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAodSliceViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAodSliceViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateLineThree:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 271
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 272
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 273
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateLineThree:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_day_of_month_textsize:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result p1

    .line 277
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateLineThree:Landroid/widget/TextView;

    const/4 v1, 0x0

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 279
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateLayoutColor()V

    .line 281
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-eqz p1, :cond_5

    .line 282
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardAssistantView;->refresh()V

    .line 286
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateOpKeyguardOneplusTextViewState()V

    .line 289
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateSliceLayout()V

    .line 290
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateSliceTextSize()V

    .line 293
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$updateLayoutColor$1()V
    .locals 7

    .line 322
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    sget v1, Lcom/android/systemui/R$style;->Theme_SystemUI_Light:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 323
    :goto_0
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mViewType:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    sget-object v3, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->aod:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    if-eq v2, v3, :cond_1

    sget v2, Lcom/android/systemui/R$color;->op_control_text_color_primary_light:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/android/systemui/R$color;->op_control_text_color_primary_dark:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lightWpTheme:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", targetTextColor:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpKeyguardClockInfoView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateOfWeekLineOne:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    if-eqz v0, :cond_2

    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewTimeLineTwo:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    if-eqz v0, :cond_3

    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateLineThree:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 334
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->isREDVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 335
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->op_turquoise:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 336
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateLineThree:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->op_cb_lockscreen_clock_date_shadow_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iget-object v3, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    .line 337
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_lockscreen_clock_date_shadow_dx:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iget-object v4, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    .line 338
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->op_cb_lockscreen_clock_date_shadow_dy:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    iget-object v5, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$color;->op_turquoise:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 336
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_2

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateLineThree:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 343
    :goto_2
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateLineThree:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    :cond_5
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-eqz v0, :cond_6

    .line 346
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mViewType:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardAssistantView;->updateTextColor(Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;)V

    :cond_6
    return-void
.end method

.method private synthetic lambda$updateSliceView$6(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 642
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mRemark:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_0

    .line 647
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 648
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    .line 649
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p2, 0x0

    .line 650
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 651
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 653
    :cond_0
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, 0x0

    .line 654
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 655
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 656
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateTime$5()V
    .locals 0

    .line 566
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateTimeInner()V

    return-void
.end method

.method private synthetic lambda$updateView$3()V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAssistantView;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateOfWeekLineOne:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    if-eqz v0, :cond_4

    .line 515
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAssistantView;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAodSliceViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 518
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateAodSliceView()V

    goto :goto_0

    .line 521
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsAodSliceOn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateOfWeekLineOne:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    if-eqz v0, :cond_2

    .line 522
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardAssistantView;->setVisibility(I)V

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAodSliceViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateOfWeekLineOne:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    if-eqz v0, :cond_4

    .line 529
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-eqz v0, :cond_3

    .line 531
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardAssistantView;->setVisibility(I)V

    .line 533
    :cond_3
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAodSliceViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 536
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateAodSliceView()V

    return-void
.end method

.method private updateAodSliceView()V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$DPBizKI2erV0BuuVhBhM1NBKLn8;

    invoke-direct {v1, p0}, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$DPBizKI2erV0BuuVhBhM1NBKLn8;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLayout()V
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateLayout(Z)V

    return-void
.end method

.method private updateLayout(Z)V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLayout, stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardClockInfoView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$u60fm-CI5wh7vITPqFIY5QjKpjU;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$u60fm-CI5wh7vITPqFIY5QjKpjU;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLayoutColor()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$Zuomt3H6DzQICU0EGTI7PFW2zvY;

    invoke-direct {v1, p0}, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$Zuomt3H6DzQICU0EGTI7PFW2zvY;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateOpKeyguardOneplusTextViewState()V
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewTimeLineTwo:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 301
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mViewType:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    sget-object v3, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->aod:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    if-ne v2, v3, :cond_0

    .line 302
    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->setIsAOD(Z)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewTimeLineTwo:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->setIsClockTimeLineTwo(Z)V

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateOfWeekLineOne:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    if-eqz v0, :cond_2

    .line 307
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mViewType:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    sget-object v2, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->aod:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    if-ne p0, v2, :cond_2

    .line 308
    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->setIsAOD(Z)V

    :cond_2
    return-void
.end method

.method private updateSliceLayout()V
    .locals 6

    .line 664
    sget v0, Lcom/android/systemui/R$id;->slice_primary_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 666
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->aod_slice_layout_primary_margin_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 667
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_control_icon_size_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    .line 670
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 671
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 672
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 673
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 676
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_control_margin_space1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 677
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 678
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->aod_slice_view_primary_padding_end:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mPrimary:Landroid/widget/TextView;

    .line 679
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 677
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 680
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mPrimary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 683
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_control_margin_space1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 684
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mRemark:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSliceTextSize()V
    .locals 3

    .line 688
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_keyguard_clock_info_view_slice_primary_textsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v0

    .line 689
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mPrimary:Landroid/widget/TextView;

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 690
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 691
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->aod_slice_text_size_secondary:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, v2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private updateTime()V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$jBVEr0PDLC8cO_n131H8PkRyoBg;

    invoke-direct {v1, p0}, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$jBVEr0PDLC8cO_n131H8PkRyoBg;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateTimeInner()V
    .locals 6

    .line 572
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 573
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    const-string v2, "EEEE"

    invoke-direct {v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 575
    iget-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsFormat12Hour:Z

    if-eqz v2, :cond_0

    .line 576
    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    const-string v3, "h\'\u2236\'mm"

    invoke-direct {v2, v3}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_0
    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    const-string v3, "HH\'\u2236\'mm"

    invoke-direct {v2, v3}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 582
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "MMMMd"

    .line 583
    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 584
    new-instance v5, Landroid/icu/text/SimpleDateFormat;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v3}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 587
    iget-object v3, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateOfWeekLineOne:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    if-eqz v3, :cond_1

    .line 588
    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :cond_1
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewTimeLineTwo:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    if-eqz v1, :cond_2

    .line 591
    invoke-virtual {v2, v0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 593
    :cond_2
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateLineThree:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    .line 594
    invoke-virtual {v5, v0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private updateView()V
    .locals 2

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView, mIsAodSliceOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsAodSliceOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTextViewDateOfWeekLineOne:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateOfWeekLineOne:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mKeyguardAssistantView.hasHeader():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardAssistantView;->hasHeader()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 508
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardClockInfoView"

    .line 504
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$9ZPNDFnqCrsqwFl9rZoa6t70jug;

    invoke-direct {v1, p0}, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$9ZPNDFnqCrsqwFl9rZoa6t70jug;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public applyLayoutParams(Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V
    .locals 2

    .line 615
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 616
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mViewType:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    sget-object v1, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->aod:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    if-ne v0, v1, :cond_0

    .line 617
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginStart(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 621
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginEnd(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 622
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginTop(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 623
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginBottom(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method

.method protected init()V
    .locals 10

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init, callers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardClockInfoView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x7de

    const v8, 0x1000008

    const/4 v9, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 189
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->op_keyguard_info_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mInnerPanel:Landroid/widget/LinearLayout;

    .line 190
    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mInnerPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->day_of_week:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateOfWeekLineOne:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    .line 194
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mInnerPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->time_clock:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewTimeLineTwo:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    .line 195
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mInnerPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->day_of_month:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewDateLineThree:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mTextViewTimeLineTwo:Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->updataClockView(Z)V

    .line 198
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mInnerPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->aod_slice_container:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAodSliceViewContainer:Landroid/view/ViewGroup;

    .line 199
    sget v0, Lcom/android/systemui/R$id;->slice_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIcon:Landroid/widget/ImageView;

    .line 200
    sget v0, Lcom/android/systemui/R$id;->slice_primary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mPrimary:Landroid/widget/TextView;

    .line 201
    sget v0, Lcom/android/systemui/R$id;->slice_remark:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mRemark:Landroid/widget/TextView;

    .line 202
    sget v0, Lcom/android/systemui/R$id;->slice_secondary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mSecondary:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mViewType:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->setInputType(I)V

    .line 206
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateLayout()V

    .line 207
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateTime()V

    return-void
.end method

.method public synthetic lambda$onWindowFocusChanged$2$OpKeyguardClockInfoView()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->lambda$onWindowFocusChanged$2()V

    return-void
.end method

.method public synthetic lambda$updateAodSliceView$4$OpKeyguardClockInfoView()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->lambda$updateAodSliceView$4()V

    return-void
.end method

.method public synthetic lambda$updateLayout$0$OpKeyguardClockInfoView(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->lambda$updateLayout$0(Z)V

    return-void
.end method

.method public synthetic lambda$updateLayoutColor$1$OpKeyguardClockInfoView()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->lambda$updateLayoutColor$1()V

    return-void
.end method

.method public synthetic lambda$updateSliceView$6$OpKeyguardClockInfoView(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->lambda$updateSliceView$6(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$updateTime$5$OpKeyguardClockInfoView()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->lambda$updateTime$5()V

    return-void
.end method

.method public synthetic lambda$updateView$3$OpKeyguardClockInfoView()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->lambda$updateView$3()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .line 368
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 369
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    const-string v1, "OpKeyguardClockInfoView"

    if-eqz v0, :cond_0

    const-string v0, "onAttachedToWindow"

    .line 370
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDebugRaiseCrashRate:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, "persist.debug.raise.crashrate.type1init 1"

    .line 375
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->release()V

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    .line 381
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.TIME_TICK"

    .line 382
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    .line 383
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 384
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    iget-object v3, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_allow_private_notifications"

    .line 389
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v6, -0x2

    .line 388
    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 390
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "time_12_24"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsFormat12HourObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5, v2, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 391
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "12"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsFormat12Hour:Z

    .line 393
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v2, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v1, v0, :cond_2

    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mAllowShowSensitiveData:Z

    .line 394
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-eqz v0, :cond_3

    xor-int/2addr v1, v2

    .line 395
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAssistantView;->setHideSensitiveData(Z)V

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 400
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateLayout()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 354
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 355
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged, newConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDensityDpi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDensityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newConfig.densityDpi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardClockInfoView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 359
    iget v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDensityDpi:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, p1, :cond_1

    .line 360
    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDensityDpi:I

    const/4 v0, 0x1

    .line 363
    :cond_1
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateLayout(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 405
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 406
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    const-string v1, "OpKeyguardClockInfoView"

    if-eqz v0, :cond_0

    const-string v0, "onDetachedFromWindow"

    .line 407
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 411
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 412
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsFormat12HourObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 413
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 416
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mViewType:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    sget-object v2, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;->aod:Lcom/oneplus/keyguard/OpKeyguardClockInfoView$ViewTypeEnum;

    if-eq v0, v2, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->release()V

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mDebugRaiseCrashRate:[Z

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    const-string v0, "persist.debug.raise.crashrate.type1release 1"

    .line 423
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->initAssitantView()V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 212
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 213
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFinishInflate, callers= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpKeyguardClockInfoView"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 605
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 610
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onTimeChanged(Ljava/util/Calendar;)V
    .locals 0

    .line 633
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateTimeInner()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 448
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 449
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mHasWindowFocus:Z

    if-eq v0, p1, :cond_0

    .line 450
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mHasWindowFocus:Z

    if-eqz p1, :cond_0

    const-string p1, "OpKeyguardClockInfoView"

    const-string v0, "focus false to true"

    .line 452
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateView()V

    .line 454
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateTime()V

    .line 455
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$A4NxJH1ep6bbCOvImDLbIcrsN4M;

    invoke-direct {v0, p0}, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$A4NxJH1ep6bbCOvImDLbIcrsN4M;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    if-eqz v0, :cond_0

    .line 484
    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantViewCallback:Lcom/android/keyguard/KeyguardAssistantView$Callback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAssistantView;->removeCallback(Lcom/android/keyguard/KeyguardAssistantView$Callback;)V

    .line 485
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAssistantView;->release()V

    const/4 v0, 0x0

    .line 486
    iput-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mKeyguardAssistantView:Lcom/android/keyguard/KeyguardAssistantView;

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 489
    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsFormat12HourObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setInputType(I)V
    .locals 2

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Looper.myLooper()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Looper.getMainLooper():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardClockInfoView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getAodWindowManager()Lcom/oneplus/aod/OpAodWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/aod/OpAodWindowManager;->getUIHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mUiHandler:Landroid/os/Handler;

    .line 473
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->initAssitantView()V

    goto :goto_0

    .line 469
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->initAssitantView()V

    .line 478
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateView()V

    return-void
.end method

.method public updateSliceView(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSliceView, status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", primary:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", second:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remark:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpKeyguardClockInfoView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mIsAodSliceOn:Z

    .line 640
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->mUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$Cd4J8qvrKdlQ5OPk0Q5STNSjfJ8;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$Cd4J8qvrKdlQ5OPk0Q5STNSjfJ8;-><init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 660
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->updateView()V

    return-void
.end method
