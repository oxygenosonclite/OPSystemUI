.class public Lcom/oneplus/aod/views/parsons/OpParsonsClock;
.super Landroid/widget/RelativeLayout;
.source "OpParsonsClock.java"

# interfaces
.implements Lcom/oneplus/aod/views/IOpAodClock;


# instance fields
.field private mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

.field private mClockMarginBottom1:I

.field private mClockMarginBottom1Id:I

.field private mClockMarginBottom2:I

.field private mClockMarginBottom2Id:I

.field private mClockMarginTop1:I

.field private mClockMarginTop1Id:I

.field private mClockMarginTop2:I

.field private mClockMarginTop2Id:I

.field private mDateLabel:Landroid/widget/TextView;

.field private mDateTimeContainer:Landroid/widget/LinearLayout;

.field private mDateTimePaddingBottom:I

.field private mDateTimePaddingBottomId:I

.field private mDateTimePaddingTop:I

.field private mDateTimePaddingTopId:I

.field private mFodVisible:Z

.field private mHideUnlockMsgRunnable:Ljava/lang/Runnable;

.field private mMaxBurnIn:I

.field private mMinBurnIn:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTimeLabel:Landroid/widget/TextView;

.field private mUnlockMarginBottom:I

.field private mUnlockMarginBottomId:I

.field private mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 526
    new-instance p3, Lcom/oneplus/aod/views/parsons/OpParsonsClock$1;

    invoke-direct {p3, p0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock$1;-><init>(Lcom/oneplus/aod/views/parsons/OpParsonsClock;)V

    iput-object p3, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mHideUnlockMsgRunnable:Ljava/lang/Runnable;

    .line 101
    sget p3, Lcom/android/systemui/R$layout;->op_aod_parsons_clock:I

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 102
    sget v0, Lcom/android/systemui/R$id;->bar:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    .line 103
    sget v0, Lcom/android/systemui/R$id;->timeContainer:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimeContainer:Landroid/widget/LinearLayout;

    .line 104
    sget v0, Lcom/android/systemui/R$id;->unlocks:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    .line 105
    sget v0, Lcom/android/systemui/R$id;->time:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mTimeLabel:Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateLabel:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->setOverlayView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->setUnlocksMsg(Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;)V

    .line 110
    invoke-direct {p0, p2}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->setupAttributes(Landroid/util/AttributeSet;)V

    .line 112
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 119
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/views/parsons/OpParsonsClock;)Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/views/parsons/OpParsonsClock;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 520
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "OpParsonsClock#hideHint"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 522
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private applyRules(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 5

    const/16 p0, 0x15

    const/16 v0, 0xe

    const/4 v1, -0x1

    const/16 v2, 0x14

    const/4 v3, 0x0

    const v4, 0x800003

    if-ne p2, v4, :cond_0

    .line 332
    invoke-virtual {p1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 333
    invoke-virtual {p1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 334
    invoke-virtual {p1, p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_0
    const v4, 0x800005

    if-ne p2, v4, :cond_1

    .line 336
    invoke-virtual {p1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 337
    invoke-virtual {p1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 338
    invoke-virtual {p1, p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 341
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 342
    invoke-virtual {p1, p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    return-void
.end method

.method private predictFodVisible()Z
    .locals 7

    .line 418
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 419
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 418
    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    move-result v0

    .line 420
    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 421
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 420
    invoke-virtual {v1, v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isOpFingerprintDisabled(I)Z

    move-result v1

    .line 422
    iget-object v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v2

    .line 423
    iget-object v3, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFodSupportOnAod()Z

    move-result v3

    .line 425
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFodHintShowing()Z

    move-result p0

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-nez v3, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 432
    :goto_0
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_4

    .line 433
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "predictFodVisible: isFingerprintAvaiable= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFingerprintDisabled= "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFingerprintLockout= "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFodSupportOnAod= "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFodHintShowing= "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", fodVisible= "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpParsonsClock"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v4
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 515
    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private removeCallbacks()V
    .locals 1

    .line 506
    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->releaseWakeLock()V

    .line 508
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mHideUnlockMsgRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setupAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->setupAttributes(Landroid/util/AttributeSet;)V

    .line 378
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->OpParsonsClock:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 380
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_unlockMarginBottom:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlockMarginBottomId:I

    .line 381
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_dateTimePaddingTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimePaddingTopId:I

    .line 382
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_dateTimePaddingBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimePaddingBottomId:I

    .line 383
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_clockMarginTop1:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginTop1Id:I

    .line 384
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_clockMarginTop2:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginTop2Id:I

    .line 385
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_clockMarginBottom1:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginBottom1Id:I

    .line 386
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_clockMarginBottom2:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginBottom2Id:I

    .line 387
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateResource()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    invoke-virtual {v0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->updateResource()V

    .line 353
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    invoke-virtual {v0}, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;->updateResource()V

    .line 354
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlockMarginBottomId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlockMarginBottom:I

    .line 356
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimePaddingTopId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimePaddingTop:I

    .line 358
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimePaddingBottomId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimePaddingBottom:I

    .line 360
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginTop1Id:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginTop1:I

    .line 362
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginBottom1Id:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginBottom1:I

    .line 364
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginTop2Id:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginTop2:I

    .line 366
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginBottom2Id:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginBottom2:I

    .line 369
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->op_aod_parsons_clock_burnin_gap:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mMinBurnIn:I

    .line 371
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->op_aod_parsons_clock_burnin_max_gap:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mMaxBurnIn:I

    return-void
.end method

.method private updateUIBecauseOfFod(Z)V
    .locals 3

    .line 391
    iget-boolean v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mFodVisible:Z

    if-eq v0, p1, :cond_6

    .line 392
    iput-boolean p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mFodVisible:Z

    .line 393
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_3

    .line 395
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUIBecauseOfFod: mFodVisible= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mFodVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 397
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpParsonsClock"

    .line 396
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mFodVisible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginTop1:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginTop2:I

    :goto_0
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 400
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginBottom1:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 401
    iget-boolean v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mFodVisible:Z

    if-eqz v1, :cond_2

    .line 402
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFodViewSettings;->getFodIconSize(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginBottom2:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 405
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->removeCallbacks()V

    .line 408
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_4

    .line 409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateUIBecauseOfFod: fodVisible= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mFodVisible:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpParsonsClock:UnlockMsg"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_4
    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    iget-boolean p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mFodVisible:Z

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    goto :goto_1

    :cond_5
    const/4 p0, 0x4

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method private waitToHide()V
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    .line 491
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitToHide: isAlwaysOnEnabled= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callers= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 493
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpParsonsClock"

    .line 492
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->removeCallbacks()V

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->acquireWakeLock()V

    .line 500
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mHideUnlockMsgRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public alignforBurnIn2(Landroid/view/ViewGroup;II)V
    .locals 5

    .line 270
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 272
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 274
    iget v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mMinBurnIn:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 275
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 276
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 277
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 278
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const v2, 0x800003

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne p2, v2, :cond_1

    .line 282
    iget-object v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    invoke-virtual {v2}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->getBarWidth()I

    move-result v2

    mul-int/2addr v2, p3

    int-to-float p3, v2

    mul-float/2addr p3, v3

    .line 283
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v2, v2

    add-float/2addr v2, p3

    iget v3, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mMaxBurnIn:I

    int-to-float v4, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 284
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 286
    :cond_0
    iget v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mMinBurnIn:I

    int-to-float v2, v2

    add-float/2addr v2, p3

    float-to-int p3, v2

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 288
    :goto_0
    iget p3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_1
    const v2, 0x800005

    if-ne p2, v2, :cond_3

    .line 290
    iget-object v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    invoke-virtual {v2}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->getBarWidth()I

    move-result v2

    rsub-int/lit8 p3, p3, 0x7

    mul-int/2addr v2, p3

    int-to-float p3, v2

    mul-float/2addr p3, v3

    .line 291
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v2, v2

    add-float/2addr v2, p3

    iget v3, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mMaxBurnIn:I

    int-to-float v4, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 292
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 294
    :cond_2
    iget v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mMinBurnIn:I

    int-to-float v2, v2

    add-float/2addr v2, p3

    float-to-int p3, v2

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 296
    :goto_1
    iget p3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 299
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    :cond_4
    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    if-eqz p1, :cond_5

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_5

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->applyRules(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 308
    iget-object p3, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    :cond_5
    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimeContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    .line 312
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 313
    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimeContainer:Landroid/widget/LinearLayout;

    .line 314
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_6

    .line 316
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->applyRules(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 317
    iget-object p3, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    :cond_6
    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    if-eqz p1, :cond_7

    .line 322
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_7

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->applyRules(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 325
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method

.method public applyLayoutParams(Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V
    .locals 6

    .line 138
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 141
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginStart(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 142
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginEnd(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 146
    iget-boolean v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mFodVisible:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginTop1:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginTop2:I

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 147
    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginBottom1:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 148
    iget-boolean v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mFodVisible:Z

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFodViewSettings;->getFodIconSize(Landroid/content/Context;)I

    move-result v2

    iget v3, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mClockMarginBottom2:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 152
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getGravity()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 156
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->updateResource()V

    .line 162
    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    .line 163
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->applyRules(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 166
    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlockMarginBottom:I

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 167
    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    :cond_4
    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_5

    .line 172
    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    invoke-virtual {v1}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->getBarWidth()I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 173
    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    invoke-virtual {v1}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->getBarHeight()I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 174
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->applyRules(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 175
    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    new-array p1, v0, [I

    const v1, 0x1010095

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 179
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$style;->op_parsons_clock_title:I

    invoke-virtual {v1, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x0

    .line 180
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v4

    .line 181
    iget-object v5, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mTimeLabel:Landroid/widget/TextView;

    int-to-float v4, v4

    invoke-virtual {v5, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 182
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$style;->op_parsons_clock_subtitle:I

    invoke-virtual {v1, v4, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 185
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    .line 186
    iget-object v3, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateLabel:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 187
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimeContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimePaddingTop:I

    iget v3, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimePaddingBottom:I

    invoke-virtual {p1, v2, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 190
    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_6

    .line 192
    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 193
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->applyRules(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 194
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 200
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 202
    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->predictFodVisible()Z

    move-result v0

    .line 203
    iget-boolean v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mFodVisible:Z

    if-eq v1, v0, :cond_0

    .line 204
    invoke-direct {p0, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->updateUIBecauseOfFod(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 211
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 213
    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->removeCallbacks()V

    .line 215
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onFodIndicationVisibilityChanged(Z)V
    .locals 6

    .line 459
    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 460
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 459
    invoke-virtual {p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    move-result p1

    .line 461
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 462
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 461
    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isOpFingerprintDisabled(I)Z

    move-result v0

    .line 463
    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v1

    .line 464
    iget-object v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v2

    .line 465
    iget-object v3, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFodSupportOnAod()Z

    move-result v3

    .line 466
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_0

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFodIndicationVisibilityChanged:  isFingerprintAvaiable= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isFingerprintDisabled= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isFingerprintLockout= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAlwaysOnEnabled= "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpParsonsClock"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    if-nez v3, :cond_1

    .line 474
    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->predictFodVisible()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->updateUIBecauseOfFod(Z)V

    :cond_1
    return-void
.end method

.method public onFodShowOrHideOnAod(Z)V
    .locals 2

    .line 445
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFodShowOrHideOnAod: fodVisible= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpParsonsClock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    .line 449
    iget-boolean v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mFodVisible:Z

    if-eq v0, p1, :cond_1

    .line 450
    invoke-direct {p0, p1}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->updateUIBecauseOfFod(Z)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 127
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    iget-object p2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    invoke-virtual {p1, p2}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->calculateBarHeight(Landroid/view/View;)V

    .line 131
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->onTimeChanged(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->waitToHide()V

    return-void
.end method

.method public onTimeChanged(Ljava/util/Calendar;)V
    .locals 5

    .line 239
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh_"

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ko_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ja_"

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE. MMM d"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "MMMMd EEE"

    .line 252
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v1, v3

    .line 258
    :goto_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 259
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 260
    iget-object v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mTimeLabel:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3a

    const/16 v4, 0x2236

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mDateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->onTimeChanged(Ljava/util/Date;)V

    return-void
.end method

.method public onUserTrigger(I)V
    .locals 2

    .line 481
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserTrigger: reason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpParsonsClock:UnlockMsg"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->waitToHide()V

    return-void
.end method

.method public recoverFromBurnInScreen()V
    .locals 2

    .line 227
    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->predictFodVisible()Z

    move-result v0

    .line 228
    iget-boolean v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->mFodVisible:Z

    if-eq v1, v0, :cond_0

    .line 229
    invoke-direct {p0, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsClock;->updateUIBecauseOfFod(Z)V

    :cond_0
    return-void
.end method
