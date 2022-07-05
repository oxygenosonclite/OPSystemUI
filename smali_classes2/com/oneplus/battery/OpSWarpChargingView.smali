.class public Lcom/oneplus/battery/OpSWarpChargingView;
.super Landroid/widget/FrameLayout;
.source "OpSWarpChargingView.java"


# static fields
.field private static final ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

.field static final DEBUG:Z

.field private static mRes:Landroid/content/res/Resources;


# instance fields
.field private isAnimationStart:Z

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

.field private mBatteryLevelViewContainer:Landroid/widget/LinearLayout;

.field private mChargeAnimation:Landroid/animation/AnimatorSet;

.field private mChargingAnimP1:Landroid/animation/ValueAnimator;

.field private mChargingAnimP3:Landroid/animation/ValueAnimator;

.field private mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

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

.field mChargingAnimationSWarpAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mChargingP4AnimSet:Landroid/animation/AnimatorSet;

.field private mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

.field private mChargingType:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHundredLevelAnim:Landroid/animation/ValueAnimator;

.field private mHundredthBoundAnim:Landroid/animation/ValueAnimator;

.field private mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

.field private mInfoView:Landroid/view/View;

.field private mInfoViewContainer:Landroid/widget/RelativeLayout;

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

.field private mWarpAnimSet:Landroid/animation/AnimatorSet;

.field private mWarpChargingType:I

.field private mWarpView:Landroid/widget/TextView;

.field private mWarpZoomInAnim:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    .line 54
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/battery/OpSWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    .line 58
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/oneplus/battery/OpSWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oneplus/battery/OpSWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/battery/OpSWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 154
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    .line 85
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    .line 90
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 94
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    .line 96
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    .line 97
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    .line 99
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 104
    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    .line 108
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    .line 112
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    .line 124
    iput-boolean p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    const/4 p3, -0x1

    .line 125
    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mNowPlaying:I

    const/4 p3, 0x0

    .line 135
    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevel:F

    .line 136
    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevelNext:F

    const-wide/16 v0, 0x0

    .line 137
    iput-wide v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpDuration:J

    .line 138
    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    .line 139
    iput p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mLevelViewTransTarget:F

    .line 155
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sput-object p0, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->isSWarp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/oneplus/battery/OpSWarpChargingView;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevel:F

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oneplus/battery/OpSWarpChargingView;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpDuration:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oneplus/battery/OpSWarpChargingView;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevelNext:F

    return p0
.end method

.method static synthetic access$1700(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/oneplus/battery/OpSWarpChargingView;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mLevelViewTransTarget:F

    return p0
.end method

.method static synthetic access$2002(Lcom/oneplus/battery/OpSWarpChargingView;F)F
    .locals 0

    .line 43
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mLevelViewTransTarget:F

    return p1
.end method

.method static synthetic access$202(Lcom/oneplus/battery/OpSWarpChargingView;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mNowPlaying:I

    return p1
.end method

.method static synthetic access$2100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelViewContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/oneplus/battery/OpSWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/oneplus/battery/OpSWarpChargingView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->preloadAnimationList()V

    return-void
.end method

.method static synthetic access$2800(Lcom/oneplus/battery/OpSWarpChargingView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->releaseAnimationList()V

    return-void
.end method

.method static synthetic access$2902(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    return p0
.end method

.method static synthetic access$3002(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    return p0
.end method

.method static synthetic access$3300(Lcom/oneplus/battery/OpSWarpChargingView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    return p0
.end method

.method static synthetic access$3402(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4AnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$402(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4AnimSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/battery/OpSWarpChargingView;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->animationEnd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->isWarp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/oneplus/battery/OpSWarpChargingView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    return p0
.end method

.method static synthetic access$702(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$802(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpAnimSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$900(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    return-object p0
.end method

.method private animationEnd(Ljava/lang/String;)V
    .locals 2

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animationEnd from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpSWarpChargingView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 1088
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1090
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1091
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1092
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1093
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1094
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1096
    iget p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    const/4 v0, 0x0

    .line 1097
    iput v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    .line 1098
    invoke-virtual {p0, p1, v0, v0}, Lcom/oneplus/battery/OpSWarpChargingView;->onBatteryLevelChanged(IZZ)V

    .line 1100
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    if-eqz p1, :cond_0

    const/16 v1, 0x67

    .line 1101
    invoke-interface {p1, v1}, Lcom/oneplus/battery/OpChargingAnimationController;->animationEnd(I)V

    .line 1104
    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    .line 1105
    iput v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    .line 1106
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    .line 1107
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 1108
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 1110
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->releaseAsset()V

    return-void
.end method

.method private genWarpAnimation()V
    .locals 4

    .line 806
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    .line 807
    sget-object v1, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$integer;->op_control_time_325:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 808
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    .line 809
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 808
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 810
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthTranslateUpAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$16;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$16;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 819
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    .line 820
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 821
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$integer;->op_control_time_325:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 822
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    .line 823
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 822
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 824
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$17;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$17;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 847
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredthBoundAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$18;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$18;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 860
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    .line 861
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 862
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$integer;->op_control_time_325:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 863
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    .line 864
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 863
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 865
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$19;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$19;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 875
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpZoomInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$20;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$20;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 897
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    .line 898
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 899
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHundredLevelAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$21;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$21;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getChargeAnimation()Landroid/animation/AnimatorSet;
    .locals 14

    .line 426
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/16 v2, 0x5a

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x6b

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 427
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v4, 0x260

    int-to-long v4, v4

    .line 428
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 429
    new-instance v4, Lcom/oneplus/battery/OpSWarpChargingView$1;

    invoke-direct {v4, p0}, Lcom/oneplus/battery/OpSWarpChargingView$1;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 437
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const/16 v5, 0xff

    int-to-long v5, v5

    .line 438
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 439
    new-instance v5, Lcom/oneplus/battery/OpSWarpChargingView$2;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpSWarpChargingView$2;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 448
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const/16 v6, 0x140

    int-to-long v6, v6

    .line 449
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 450
    new-instance v8, Lcom/oneplus/battery/OpSWarpChargingView$3;

    invoke-direct {v8, p0}, Lcom/oneplus/battery/OpSWarpChargingView$3;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 461
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 462
    sget-object v9, Lcom/oneplus/battery/OpSWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 463
    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 465
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v4, v0, [I

    const/16 v5, 0x6a

    aput v5, v4, v3

    const/16 v5, 0x75

    aput v5, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 466
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v5, 0x1a0

    int-to-long v9, v5

    .line 467
    invoke-virtual {v4, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 468
    new-instance v5, Lcom/oneplus/battery/OpSWarpChargingView$4;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpSWarpChargingView$4;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 476
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v0, [F

    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 477
    sget-object v9, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v10, Lcom/android/systemui/R$integer;->op_control_time_225:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 478
    iget-object v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$interpolator;->op_control_interpolator_fast_out_slow_in_standard:I

    .line 479
    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    .line 478
    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 480
    new-instance v9, Lcom/oneplus/battery/OpSWarpChargingView$5;

    invoke-direct {v9, p0}, Lcom/oneplus/battery/OpSWarpChargingView$5;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 491
    new-instance v9, Landroid/animation/ValueAnimator;

    invoke-direct {v9}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v9, v0, [I

    const/16 v10, 0x1e

    aput v10, v9, v3

    const/16 v11, 0x59

    aput v11, v9, v2

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    .line 492
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 493
    iget-object v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    const/16 v11, 0x9a0

    int-to-long v11, v11

    invoke-virtual {v9, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 494
    iget-object v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    new-instance v13, Lcom/oneplus/battery/OpSWarpChargingView$6;

    invoke-direct {v13, p0}, Lcom/oneplus/battery/OpSWarpChargingView$6;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v9, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 502
    iget-object v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    new-instance v13, Lcom/oneplus/battery/OpSWarpChargingView$7;

    invoke-direct {v13, p0, v1, v8}, Lcom/oneplus/battery/OpSWarpChargingView$7;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/ValueAnimator;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v9, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 558
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v0, [I

    aput v10, v1, v3

    const/16 v8, 0x69

    aput v8, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    .line 559
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 560
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 561
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/oneplus/battery/OpSWarpChargingView$8;

    invoke-direct {v8, p0}, Lcom/oneplus/battery/OpSWarpChargingView$8;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 611
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/oneplus/battery/OpSWarpChargingView$9;

    invoke-direct {v8, p0, v4, v5}, Lcom/oneplus/battery/OpSWarpChargingView$9;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 667
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v0, [I

    const/16 v4, 0xe

    aput v4, v1, v3

    const/16 v4, 0x1d

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 668
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v4, 0x220

    int-to-long v4, v4

    .line 669
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 670
    new-instance v4, Lcom/oneplus/battery/OpSWarpChargingView$10;

    invoke-direct {v4, p0}, Lcom/oneplus/battery/OpSWarpChargingView$10;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 677
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v4, v0, [F

    fill-array-data v4, :array_3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const/16 v5, 0xbe

    int-to-long v8, v5

    .line 678
    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 679
    new-instance v5, Lcom/oneplus/battery/OpSWarpChargingView$11;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpSWarpChargingView$11;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 690
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v0, [F

    fill-array-data v5, :array_4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 691
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 692
    new-instance v6, Lcom/oneplus/battery/OpSWarpChargingView$12;

    invoke-direct {v6, p0}, Lcom/oneplus/battery/OpSWarpChargingView$12;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 701
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 702
    sget-object v7, Lcom/oneplus/battery/OpSWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 703
    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 705
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v0, [Landroid/animation/Animator;

    aput-object v1, v5, v3

    aput-object v6, v5, v2

    .line 706
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 707
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oneplus/battery/OpSWarpChargingView$13;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpSWarpChargingView$13;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 740
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    .line 741
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 742
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    const/16 v1, 0x1c0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 743
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$14;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$14;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 750
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$15;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$15;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 800
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 801
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
    .end array-data

    :array_1
    .array-data 4
        0x3f866666    # 1.05f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_3
    .array-data 4
        0x3e75c28f    # 0.24f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_4
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0xd
    .end array-data
.end method

.method private isSWarp()Z
    .locals 1

    .line 1133
    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

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

.method private isWarp()Z
    .locals 4

    .line 1137
    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    const-string v1, "persist.test.warp"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_1

    const/4 v0, 0x2

    iget v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    .line 1138
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v0, v3, :cond_1

    const/4 v0, 0x3

    iget p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    .line 1139
    invoke-static {v1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private preloadAnimationList()V
    .locals 10

    .line 959
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    const-string v1, "OpSWarpChargingView"

    if-eqz v0, :cond_0

    const-string v0, "preloadAnimationList()"

    .line 960
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 965
    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    if-nez v0, :cond_1

    .line 966
    sget-object v0, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$array;->warpcharge_wired_anim:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 967
    :cond_1
    sget-object v0, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$array;->warpcharge_wireless_anim:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 970
    :goto_0
    sget-object v4, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v5, Lcom/android/systemui/R$array;->swarpcharge_wired_anim:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    .line 973
    :goto_1
    iget-object v7, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 974
    iget-object v7, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2

    .line 976
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 981
    :cond_3
    iget-object v6, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v5

    .line 983
    :goto_2
    iget-object v7, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 984
    iget-object v7, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_4

    .line 986
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 990
    :cond_5
    iget-object v6, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v5

    .line 992
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 993
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 995
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 996
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 997
    iget-object v9, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_6

    .line 1000
    :try_start_0
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1008
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move v0, v5

    .line 1010
    :goto_4
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_9

    .line 1011
    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1013
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 1014
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1015
    iget-object v8, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_8

    .line 1018
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1026
    :cond_9
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1029
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preloadAnimationList: cost Time"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mChargingAnimationAssets size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_a
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$24;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$24;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshUI()V
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 231
    sget-object v1, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_view_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 232
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    const/16 v1, 0x438

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 236
    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    .line 237
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 236
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 238
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_control_margin_space2:I

    .line 239
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    .line 238
    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercentBound:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 244
    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_text_size_px_h5:I

    .line 245
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 244
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 247
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercentBound:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_control_margin_space2:I

    .line 248
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v3

    .line 247
    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 252
    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    .line 253
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 252
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 257
    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    .line 258
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 257
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 260
    :cond_4
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 261
    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    .line 262
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 261
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 265
    sget-object v3, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_battery_level_text_size:I

    .line 266
    invoke-static {v3, v4, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v3

    int-to-float v3, v3

    .line 265
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 269
    :cond_6
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    if-eqz p0, :cond_7

    .line 270
    sget-object v0, Lcom/oneplus/battery/OpSWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->op_swarp_charging_anim_info_warp_text_size:I

    .line 271
    invoke-static {v0, v3, v1}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result v0

    int-to-float v0, v0

    .line 270
    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7
    return-void
.end method

.method private releaseAnimationList()V
    .locals 3

    .line 1054
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpSWarpChargingView"

    const-string v1, "releaseAnimationList()"

    .line 1055
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    move v1, v0

    .line 1058
    :goto_0
    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1059
    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 1061
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1065
    :cond_2
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1067
    :goto_1
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1068
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1070
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1074
    :cond_4
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationSWarpAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1076
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$25;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$25;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public notifyWarpCharging(I)V
    .locals 2

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Notify Warp Charging : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpChargingType:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 178
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 180
    sget v0, Lcom/android/systemui/R$id;->info_view_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    .line 181
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 182
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 183
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 185
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 186
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_0

    move v0, v1

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 189
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 190
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 192
    sget v0, Lcom/android/systemui/R$id;->battery_level:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    .line 194
    sget v0, Lcom/android/systemui/R$id;->warp_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpView:Landroid/widget/TextView;

    .line 196
    sget v0, Lcom/android/systemui/R$id;->background_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    .line 197
    sget v0, Lcom/android/systemui/R$id;->info_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    .line 198
    sget v0, Lcom/android/systemui/R$id;->scrim_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 201
    sget v0, Lcom/android/systemui/R$id;->battery_level_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelViewContainer:Landroid/widget/LinearLayout;

    .line 202
    sget v0, Lcom/android/systemui/R$id;->battery_level_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    .line 203
    sget v0, Lcom/android/systemui/R$id;->battery_level_hundredth_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredthBound:Landroid/widget/TextView;

    .line 204
    sget v0, Lcom/android/systemui/R$id;->battery_level_hundredth:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelHundredth:Landroid/widget/TextView;

    .line 205
    sget v0, Lcom/android/systemui/R$id;->battery_level_percent:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercent:Landroid/widget/TextView;

    .line 207
    sget v0, Lcom/android/systemui/R$id;->battery_level_percent_bound:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelPercentBound:Landroid/widget/TextView;

    .line 211
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->refreshUI()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 3

    .line 283
    iget p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    const-string p3, "]"

    const-string v0, "OpSWarpChargingView"

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 284
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 285
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

    .line 289
    :cond_0
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mPrevLevel:I

    .line 293
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 295
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update level ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :cond_1
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBatteryLevelBound:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 300
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->refreshUI()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 216
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 217
    invoke-virtual {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    return-void
.end method

.method public onSWarpBatteryLevelChanged(FFJ)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevel:F

    .line 307
    iput p2, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpLevelNext:F

    .line 308
    iput-wide p3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mSWarpDuration:J

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 222
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public prepareAsset(I)V
    .locals 2

    .line 914
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAsset() / mAssetLoading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAssetLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " chargingType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_0
    iput p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    .line 921
    iget-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    if-nez p1, :cond_1

    .line 922
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoading:Z

    .line 924
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    .line 926
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/battery/OpSWarpChargingView$22;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpSWarpChargingView$22;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 933
    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    :goto_0
    return-void
.end method

.method public releaseAsset()V
    .locals 2

    .line 939
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAsset() / mAssetLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / isAnimationStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAssetReleasing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 943
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    .line 945
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 946
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpSWarpChargingView$23;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpSWarpChargingView$23;-><init>(Lcom/oneplus/battery/OpSWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public setChargingAnimationController(Lcom/oneplus/battery/OpChargingAnimationController;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-void
.end method

.method public startAnimation(I)V
    .locals 4

    .line 314
    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingType:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 315
    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    .line 323
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    const-string v2, "OpSWarpChargingView"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_2

    .line 325
    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 326
    iget-boolean p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    if-nez p1, :cond_5

    const-string p1, "startAnimation"

    .line 327
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    .line 329
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 332
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->genWarpAnimation()V

    .line 333
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    .line 339
    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    .line 340
    iput-boolean v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    .line 343
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 346
    :cond_2
    sget-boolean v0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "startAnimation / else / prepareAsset"

    .line 347
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .line 352
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 354
    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetLoaded:Z

    .line 355
    iput-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mAssetReleasing:Z

    .line 360
    :cond_4
    iput-boolean v3, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 362
    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->prepareAsset(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const/4 v0, 0x0

    .line 369
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mKeyguardShowing:Z

    .line 374
    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsWarpAnimRunning:Z

    const-string v2, "OpSWarpChargingView"

    if-eqz v1, :cond_0

    const-string v1, "stop warp animation"

    .line 375
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mWarpAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 377
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 383
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/battery/OpSWarpChargingView;->isAnimationStart:Z

    if-eqz v1, :cond_5

    const-string v1, "stop charging animation"

    .line 384
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iput-boolean v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mIsAnimationPlaying:Z

    .line 387
    iget v0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mNowPlaying:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 405
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 401
    :cond_1
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingP4AnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 393
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->isSWarp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimWarpP3:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 396
    :cond_3
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 389
    :cond_4
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5
    :goto_0
    return-void
.end method
