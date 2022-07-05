.class public Lcom/oneplus/battery/OpCBWarpChargingView;
.super Landroid/widget/FrameLayout;
.source "OpCBWarpChargingView.java"


# static fields
.field static final DEBUG:Z

.field private static mRes:Landroid/content/res/Resources;


# instance fields
.field private isAnimationStart:Z

.field private mArrowView:Landroid/widget/ImageView;

.field private mAssetLoaded:Z

.field private mAssetLoading:Z

.field private mAssetReleasing:Z

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mBatteryLevelBound:Landroid/widget/TextView;

.field private mBatteryLevelHundredth:Landroid/widget/TextView;

.field private mBatteryLevelHundredthBound:Landroid/widget/TextView;

.field private mBatteryLevelPercent:Landroid/widget/TextView;

.field private mBatteryLevelPercentBound:Landroid/widget/TextView;

.field private mBatteryLevelViewContainer:Landroid/view/View;

.field private mChargeAnimation:Landroid/animation/AnimatorSet;

.field private mChargingAnimP1:Landroid/animation/ValueAnimator;

.field private mChargingAnimSet:Landroid/animation/AnimatorSet;

.field mChargingAnimationAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

.field private mChargingProgressBottomView:Lcom/oneplus/battery/OpShadowView;

.field private mChargingProgressTopView:Lcom/oneplus/battery/OpShadowView;

.field private mChargingState:Landroid/widget/TextView;

.field private mChargingType:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHundredLevelAnim:Landroid/animation/ValueAnimator;

.field private mHundredthBoundAnim:Landroid/animation/ValueAnimator;

.field private mInfoView:Landroid/view/View;

.field private mIsAnimationPlaying:Z

.field private mIsPaddingStartAnimation:Z

.field private mIsWarpAnimRunning:Z

.field private mKeyguardShowing:Z

.field private mLevelViewTransTarget:F

.field private mNowPlaying:I

.field private mPrevLevel:I

.field private mSWarpDuration:J

.field private mSWarpLevel:F

.field private mSWarpLevelNext:F

.field mWarpAnimationAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mWarpChargingAnimSet:Landroid/animation/AnimatorSet;

.field private mWarpChargingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    .line 51
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/oneplus/battery/OpCBWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oneplus/battery/OpCBWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/battery/OpCBWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    .line 75
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 83
    iput-boolean p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoading:Z

    .line 85
    iput-boolean p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    .line 86
    iput-boolean p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    .line 88
    iput-boolean p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsPaddingStartAnimation:Z

    const/4 p3, 0x1

    .line 93
    iput p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingType:I

    .line 98
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    .line 99
    iput-boolean p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsWarpAnimRunning:Z

    .line 103
    iput-boolean p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mKeyguardShowing:Z

    .line 113
    iput-boolean p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsAnimationPlaying:Z

    const/4 p3, -0x1

    .line 114
    iput p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mNowPlaying:I

    const/4 p3, 0x0

    .line 120
    iput p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpLevel:F

    .line 121
    iput p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpLevelNext:F

    const-wide/16 v0, 0x0

    .line 122
    iput-wide v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpDuration:J

    .line 123
    iput p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingType:I

    .line 124
    iput p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mLevelViewTransTarget:F

    .line 137
    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sput-object p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mInfoView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/battery/OpCBWarpChargingView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsWarpAnimRunning:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/oneplus/battery/OpCBWarpChargingView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsWarpAnimRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/battery/OpCBWarpChargingView;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpLevel:F

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/battery/OpCBWarpChargingView;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mLevelViewTransTarget:F

    return p0
.end method

.method static synthetic access$1202(Lcom/oneplus/battery/OpCBWarpChargingView;F)F
    .locals 0

    .line 43
    iput p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mLevelViewTransTarget:F

    return p1
.end method

.method static synthetic access$1300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oneplus/battery/OpCBWarpChargingView;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpDuration:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oneplus/battery/OpCBWarpChargingView;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpLevelNext:F

    return p0
.end method

.method static synthetic access$1700(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/oneplus/battery/OpCBWarpChargingView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->preloadWarpAnimationList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/battery/OpCBWarpChargingView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->preloadAnimationList()V

    return-void
.end method

.method static synthetic access$202(Lcom/oneplus/battery/OpCBWarpChargingView;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mNowPlaying:I

    return p1
.end method

.method static synthetic access$2100(Lcom/oneplus/battery/OpCBWarpChargingView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->releaseAnimationList()V

    return-void
.end method

.method static synthetic access$2202(Lcom/oneplus/battery/OpCBWarpChargingView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoading:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/oneplus/battery/OpCBWarpChargingView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/oneplus/battery/OpCBWarpChargingView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/oneplus/battery/OpCBWarpChargingView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsPaddingStartAnimation:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/oneplus/battery/OpCBWarpChargingView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingType:I

    return p0
.end method

.method static synthetic access$2702(Lcom/oneplus/battery/OpCBWarpChargingView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/battery/OpCBWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/battery/OpCBWarpChargingView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsAnimationPlaying:Z

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/battery/OpCBWarpChargingView;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->isSWarp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/battery/OpCBWarpChargingView;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->animationEnd(Ljava/lang/String;)V

    return-void
.end method

.method private animationEnd(Ljava/lang/String;)V
    .locals 2

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animationEnd from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpCBWarpChargingView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 901
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 902
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mInfoView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 903
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 904
    iget p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mPrevLevel:I

    const/4 v0, 0x0

    .line 905
    iput v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mPrevLevel:I

    .line 906
    invoke-virtual {p0, p1, v0, v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->onBatteryLevelChanged(IZZ)V

    .line 907
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    if-eqz p1, :cond_0

    const/16 v1, 0x67

    .line 908
    invoke-interface {p1, v1}, Lcom/oneplus/battery/OpChargingAnimationController;->animationEnd(I)V

    .line 911
    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->isAnimationStart:Z

    .line 912
    iput-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsWarpAnimRunning:Z

    .line 913
    iput v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingType:I

    .line 914
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 915
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 917
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->releaseAsset()V

    return-void
.end method

.method private genWarpAnimation()V
    .locals 3

    .line 657
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    .line 658
    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$integer;->op_control_time_325:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 659
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    .line 660
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 659
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 661
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpCBWarpChargingView$11;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$11;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 685
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpCBWarpChargingView$12;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$12;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 699
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    .line 700
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 701
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpCBWarpChargingView$13;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$13;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getChargeAnimation()Landroid/animation/AnimatorSet;
    .locals 16

    move-object/from16 v0, p0

    .line 463
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    const/16 v3, 0x560

    int-to-long v3, v3

    .line 464
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 465
    iget-object v2, v0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 466
    iget-object v2, v0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/oneplus/battery/OpCBWarpChargingView$1;

    invoke-direct {v3, v0}, Lcom/oneplus/battery/OpCBWarpChargingView$1;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 474
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/16 v3, 0x240

    int-to-long v3, v3

    .line 475
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/16 v3, 0x320

    int-to-long v3, v3

    .line 476
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 477
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 478
    new-instance v3, Lcom/oneplus/battery/OpCBWarpChargingView$2;

    invoke-direct {v3, v0}, Lcom/oneplus/battery/OpCBWarpChargingView$2;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 486
    iget-object v3, v0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oneplus/battery/OpCBWarpChargingView$3;

    invoke-direct {v4, v0}, Lcom/oneplus/battery/OpCBWarpChargingView$3;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 530
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v3, v1, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const/16 v4, 0x500

    int-to-long v4, v4

    .line 531
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 532
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 533
    new-instance v6, Lcom/oneplus/battery/OpCBWarpChargingView$4;

    invoke-direct {v6, v0}, Lcom/oneplus/battery/OpCBWarpChargingView$4;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 541
    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v6, v1, [I

    const/4 v7, 0x0

    const/16 v8, 0x2b

    aput v8, v6, v7

    const/4 v9, 0x1

    const/16 v10, 0x91

    aput v10, v6, v9

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    const/16 v11, 0xce0

    int-to-long v11, v11

    .line 542
    invoke-virtual {v6, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 543
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 544
    new-instance v13, Lcom/oneplus/battery/OpCBWarpChargingView$5;

    invoke-direct {v13, v0}, Lcom/oneplus/battery/OpCBWarpChargingView$5;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v6, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 552
    new-instance v13, Landroid/animation/ValueAnimator;

    invoke-direct {v13}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v13, v1, [I

    const/16 v14, 0x92

    aput v14, v13, v7

    const/16 v15, 0xba

    aput v15, v13, v9

    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v13

    const/16 v15, 0x520

    int-to-long v14, v15

    .line 553
    invoke-virtual {v13, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 554
    new-instance v14, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v14}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 555
    new-instance v14, Lcom/oneplus/battery/OpCBWarpChargingView$6;

    invoke-direct {v14, v0}, Lcom/oneplus/battery/OpCBWarpChargingView$6;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 563
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v14, v0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimSet:Landroid/animation/AnimatorSet;

    .line 564
    invoke-virtual {v14, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 565
    iget-object v6, v0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimSet:Landroid/animation/AnimatorSet;

    new-instance v13, Lcom/oneplus/battery/OpCBWarpChargingView$7;

    invoke-direct {v13, v0}, Lcom/oneplus/battery/OpCBWarpChargingView$7;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v6, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 591
    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v6, v1, [I

    aput v8, v6, v7

    aput v10, v6, v9

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 592
    invoke-virtual {v6, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 593
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 594
    new-instance v8, Lcom/oneplus/battery/OpCBWarpChargingView$8;

    const/16 v10, 0x2a

    invoke-direct {v8, v0, v10}, Lcom/oneplus/battery/OpCBWarpChargingView$8;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;I)V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 612
    new-instance v8, Landroid/animation/ValueAnimator;

    invoke-direct {v8}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v8, v1, [I

    const/16 v11, 0x92

    aput v11, v8, v7

    const/16 v11, 0xb9

    aput v11, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 613
    invoke-virtual {v8, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 614
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v8, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 615
    new-instance v4, Lcom/oneplus/battery/OpCBWarpChargingView$9;

    invoke-direct {v4, v0, v10}, Lcom/oneplus/battery/OpCBWarpChargingView$9;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;I)V

    invoke-virtual {v8, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 624
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingAnimSet:Landroid/animation/AnimatorSet;

    .line 625
    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 626
    iget-object v3, v0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingAnimSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/oneplus/battery/OpCBWarpChargingView$10;

    invoke-direct {v4, v0}, Lcom/oneplus/battery/OpCBWarpChargingView$10;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 651
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    .line 652
    iget-object v0, v0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    aput-object v0, v1, v7

    aput-object v2, v1, v9

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v3

    :array_0
    .array-data 4
        0x0
        0x2a
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isSWarp()Z
    .locals 1

    .line 940
    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingType:I

    const-string v0, "persist.test.warp"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private preloadAnimationList()V
    .locals 8

    .line 765
    sget-boolean v0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    const-string v1, "OpCBWarpChargingView"

    if-eqz v0, :cond_0

    const-string v0, "preloadAnimationList()"

    .line 766
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 769
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    .line 770
    invoke-static {v0, v4}, Lcom/oneplus/battery/OpChargingAnimationResHelper;->getAnimationRes(Landroid/content/Context;I)[I

    move-result-object v0

    const/4 v4, 0x0

    move v5, v4

    .line 773
    :goto_0
    iget-object v6, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 774
    iget-object v6, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 776
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 781
    :cond_2
    iget-object v5, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 783
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_4

    .line 784
    aget v5, v0, v4

    .line 786
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 787
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 788
    iget-object v7, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_3

    .line 791
    :try_start_0
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 800
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 801
    sget-boolean v0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preloadAnimationList: cost Time"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mChargingAnimationAssets size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_5
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpCBWarpChargingView$17;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$17;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private preloadWarpAnimationList()V
    .locals 8

    .line 826
    sget-boolean v0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    const-string v1, "OpCBWarpChargingView"

    if-eqz v0, :cond_0

    const-string v0, "preloadWarpAnimationList()"

    .line 827
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 830
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    .line 831
    invoke-static {v0, v4}, Lcom/oneplus/battery/OpChargingAnimationResHelper;->getAnimationRes(Landroid/content/Context;I)[I

    move-result-object v0

    const/4 v4, 0x0

    move v5, v4

    .line 834
    :goto_0
    iget-object v6, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 835
    iget-object v6, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 837
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 842
    :cond_2
    iget-object v5, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 844
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_4

    .line 845
    aget v5, v0, v4

    .line 847
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 848
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 849
    iget-object v7, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_3

    .line 852
    :try_start_0
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 860
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 861
    sget-boolean v0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preloadAnimationList: cost Time"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mWarpAnimationAssets size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private refreshUI()V
    .locals 5

    .line 206
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 209
    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_background_view_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 210
    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_background_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 211
    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_background_view_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mInfoView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 217
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 219
    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_info_view_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 220
    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_info_view_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 221
    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_info_view_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingState:Landroid/widget/TextView;

    const/16 v1, 0x438

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 227
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_body1:I

    .line 228
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 227
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressTopView:Lcom/oneplus/battery/OpShadowView;

    if-eqz v0, :cond_6

    .line 232
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_5

    .line 234
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 235
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 236
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 237
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 239
    :cond_5
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressTopView:Lcom/oneplus/battery/OpShadowView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    :cond_6
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressBottomView:Lcom/oneplus/battery/OpShadowView;

    if-eqz v0, :cond_8

    .line 243
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_7

    .line 245
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_bottom_view_margin_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 246
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_bottom_view_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 247
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 248
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 250
    :cond_7
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressBottomView:Lcom/oneplus/battery/OpShadowView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    :cond_8
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 254
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_9

    .line 256
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_arrow_view_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 257
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_arrow_view_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 258
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_arrow_view_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 259
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 260
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 262
    :cond_9
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    :cond_a
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelViewContainer:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 266
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_b

    .line 268
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_battery_level_view_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 269
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 271
    :cond_b
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelViewContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    :cond_c
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 275
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    .line 276
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 275
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 279
    :cond_d
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 280
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    .line 281
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 280
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 284
    :cond_e
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 285
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    .line 286
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 285
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 289
    :cond_f
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 290
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    .line 291
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 290
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 294
    :cond_10
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 295
    sget-object v3, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    .line 296
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 295
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 299
    :cond_11
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelPercentBound:Landroid/widget/TextView;

    if-eqz p0, :cond_12

    .line 300
    sget-object v0, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    .line 301
    invoke-static {v0, v3, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v0

    int-to-float v0, v0

    .line 300
    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_12
    return-void
.end method

.method private releaseAnimationList()V
    .locals 3

    .line 867
    sget-boolean v0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpCBWarpChargingView"

    const-string v1, "releaseAnimationList()"

    .line 868
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    move v1, v0

    .line 871
    :goto_0
    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 872
    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 874
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 878
    :cond_2
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 880
    :goto_1
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 881
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 883
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 887
    :cond_4
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 889
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpCBWarpChargingView$18;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$18;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public notifyWarpCharging(I)V
    .locals 2

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Notify Warp Charging : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCBWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iput p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingType:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 162
    sget v0, Lcom/android/systemui/R$id;->battery_level:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    .line 164
    sget v0, Lcom/android/systemui/R$id;->charging_state:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingState:Landroid/widget/TextView;

    .line 165
    sget v0, Lcom/android/systemui/R$id;->charging_progress_top_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/oneplus/battery/OpShadowView;

    iput-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressTopView:Lcom/oneplus/battery/OpShadowView;

    .line 166
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$color;->op_cb_warp_charging_info_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$color;->op_cb_warp_charging_info_shadow_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 166
    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/battery/OpShadowView;->setShadowLayer(FFFII)V

    .line 170
    sget v0, Lcom/android/systemui/R$id;->charging_progress_bottom_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/oneplus/battery/OpShadowView;

    iput-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressBottomView:Lcom/oneplus/battery/OpShadowView;

    .line 171
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    .line 173
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$color;->op_cb_charging_info_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$color;->op_cb_charging_info_shadow_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/high16 v2, 0x41a00000    # 20.0f

    .line 171
    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/battery/OpShadowView;->setShadowLayer(FFFII)V

    .line 175
    sget v0, Lcom/android/systemui/R$id;->arrow_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mArrowView:Landroid/widget/ImageView;

    .line 177
    sget v0, Lcom/android/systemui/R$id;->background_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    .line 178
    sget v0, Lcom/android/systemui/R$id;->info_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mInfoView:Landroid/view/View;

    .line 179
    sget v0, Lcom/android/systemui/R$id;->scrim_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 181
    sget v0, Lcom/android/systemui/R$id;->battery_level_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelViewContainer:Landroid/view/View;

    .line 182
    sget v0, Lcom/android/systemui/R$id;->battery_level_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    .line 183
    sget v0, Lcom/android/systemui/R$id;->battery_level_hundredth_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    .line 184
    sget v0, Lcom/android/systemui/R$id;->battery_level_hundredth:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    .line 185
    sget v0, Lcom/android/systemui/R$id;->battery_level_percent:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    .line 186
    sget v0, Lcom/android/systemui/R$id;->battery_level_percent_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelPercentBound:Landroid/widget/TextView;

    .line 188
    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->refreshUI()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 3

    .line 312
    iget p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mPrevLevel:I

    const-string p3, "]"

    const-string v0, "OpCBWarpChargingView"

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 313
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 314
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "level is same as latest one ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 318
    :cond_0
    iput p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mPrevLevel:I

    .line 322
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 324
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update level ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :cond_1
    iget-object p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 329
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :cond_2
    iget-object p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    const-string p3, ".00"

    .line 333
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->updateBatteryInfoView(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->refreshUI()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 193
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 194
    invoke-virtual {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    return-void
.end method

.method public onSWarpBatteryLevelChanged(FFJ)V
    .locals 1

    .line 342
    iput p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpLevel:F

    .line 343
    iput p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpLevelNext:F

    .line 344
    iput-wide p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mSWarpDuration:J

    .line 346
    new-instance p2, Ljava/math/BigDecimal;

    float-to-double p3, p1

    invoke-direct {p2, p3, p4}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p3, 0x2

    const/4 p4, 0x4

    .line 347
    invoke-virtual {p2, p3, p4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    .line 348
    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\\."

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 350
    iget-object p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 351
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Update Swarp level ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "OpCBWarpChargingView"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    const/4 p4, 0x0

    aget-object p4, p2, p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :cond_0
    iget-object p3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 356
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mLevelViewTransTarget:F

    :cond_1
    float-to-int p1, p1

    .line 360
    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->updateBatteryInfoView(I)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 199
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public prepareAsset(I)V
    .locals 2

    .line 717
    sget-boolean v0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAsset() / mAssetLoading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAssetLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " chargingType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCBWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    iput p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingType:I

    .line 724
    iget-boolean p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoading:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    if-nez p1, :cond_1

    .line 725
    iput-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoading:Z

    .line 727
    iput-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mKeyguardShowing:Z

    .line 730
    new-instance p1, Lcom/oneplus/battery/OpCBWarpChargingView$14;

    invoke-direct {p1, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$14;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 737
    new-instance p1, Lcom/oneplus/battery/OpCBWarpChargingView$15;

    invoke-direct {p1, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$15;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 744
    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mKeyguardShowing:Z

    :goto_0
    return-void
.end method

.method public releaseAsset()V
    .locals 2

    .line 750
    sget-boolean v0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAsset() / mAssetLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / isAnimationStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->isAnimationStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAssetReleasing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCBWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->isAnimationStart:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 754
    iput-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    .line 755
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpCBWarpChargingView$16;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpCBWarpChargingView$16;-><init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setChargingAnimationController(Lcom/oneplus/battery/OpChargingAnimationController;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-void
.end method

.method public startAnimation(I)V
    .locals 4

    .line 366
    iget v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingType:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 367
    iput-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    .line 375
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    const-string v2, "OpCBWarpChargingView"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_2

    .line 377
    iput-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 378
    iget-boolean p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->isAnimationStart:Z

    if-nez p1, :cond_5

    const-string p1, "startAnimation"

    .line 379
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    .line 381
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->genWarpAnimation()V

    .line 385
    invoke-direct {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    .line 390
    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->isAnimationStart:Z

    .line 391
    iput-boolean v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsAnimationPlaying:Z

    .line 394
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 397
    :cond_2
    sget-boolean v0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "startAnimation / else / prepareAsset"

    .line 398
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .line 403
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 405
    iput-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetLoaded:Z

    .line 406
    iput-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mAssetReleasing:Z

    .line 411
    :cond_4
    iput-boolean v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 413
    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->prepareAsset(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const/4 v0, 0x0

    .line 420
    iput-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mKeyguardShowing:Z

    .line 425
    iget-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsWarpAnimRunning:Z

    const-string v2, "OpCBWarpChargingView"

    if-eqz v1, :cond_0

    const-string v1, "stop warp animation"

    .line 426
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 434
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->isAnimationStart:Z

    if-eqz v1, :cond_3

    const-string v1, "stop charging animation"

    .line 435
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iput-boolean v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mIsAnimationPlaying:Z

    .line 438
    iget v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mNowPlaying:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 447
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 443
    :cond_1
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpChargingAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 440
    :cond_2
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateBatteryInfoView(I)V
    .locals 7

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 951
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->op_cb_charged_info_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 952
    :cond_0
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->op_cb_charging_info_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    if-ne p1, v0, :cond_1

    .line 954
    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$color;->op_cb_charged_info_shadow_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_1

    .line 955
    :cond_1
    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$color;->op_cb_charging_info_shadow_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_1
    if-ne p1, v0, :cond_2

    .line 957
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->op_cb_warp_charging_animation_charging_state_charged:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 958
    :cond_2
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->op_cb_warp_charging_animation_charging_state_charging:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 960
    :goto_2
    iget-object v4, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingState:Landroid/widget/TextView;

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_3

    .line 961
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 962
    iget-object v4, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingState:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 963
    iget-object v4, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingState:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    :cond_3
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 967
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 968
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v6, v6, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 971
    :cond_4
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 972
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 973
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v6, v6, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 976
    :cond_5
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 977
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 978
    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v6, v6, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 981
    :cond_6
    sget-object v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_info_view_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    sget-object v2, Lcom/oneplus/battery/OpCBWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->op_cb_warp_charging_progress_view_margin:I

    .line 982
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 984
    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressTopView:Lcom/oneplus/battery/OpShadowView;

    if-eqz v2, :cond_8

    .line 985
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_7

    mul-int v3, v1, p1

    .line 987
    div-int/2addr v3, v0

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 989
    :cond_7
    iget-object v3, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressTopView:Lcom/oneplus/battery/OpShadowView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 990
    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressTopView:Lcom/oneplus/battery/OpShadowView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 993
    :cond_8
    iget-object v2, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressBottomView:Lcom/oneplus/battery/OpShadowView;

    if-eqz v2, :cond_a

    .line 994
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_9

    mul-int/2addr v1, p1

    .line 996
    div-int/2addr v1, v0

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 998
    :cond_9
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressBottomView:Lcom/oneplus/battery/OpShadowView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 999
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView;->mChargingProgressBottomView:Lcom/oneplus/battery/OpShadowView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_a
    return-void
.end method
