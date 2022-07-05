.class public Lcom/android/systemui/statusbar/StatusBarMobileView;
.super Landroid/widget/FrameLayout;
.source "StatusBarMobileView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# static fields
.field static final DEBUG:Z

.field private static final NOSIM_EDGE_RESID:I

.field private static final NOSIM_RESID:I


# instance fields
.field private mDarkIntensity:F

.field private mDirty:Z

.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mIsRtlPropertiesChanged:Z

.field private mMobile:Landroid/widget/ImageView;

.field private mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

.field private mMobileFiveGUWB:Landroid/widget/ImageView;

.field private mMobileFiveGUWBGroup:Landroid/view/ViewGroup;

.field private mMobileGroup:Landroid/widget/LinearLayout;

.field private mMobileInOut:Landroid/widget/ImageView;

.field private mMobileInOutFiveGUWB:Landroid/widget/ImageView;

.field private mMobileSingleGroup:Landroid/view/ViewGroup;

.field private mMobileStackedGroup:Landroid/view/ViewGroup;

.field private mMobileType:Landroid/widget/ImageView;

.field private mMobileVzwGroup:Landroid/view/ViewGroup;

.field private mRect:Landroid/graphics/Rect;

.field private mSlot:Ljava/lang/String;

.field private mStackedDataGroup:Landroid/view/ViewGroup;

.field private mStackedDataStrengthView:Landroid/widget/ImageView;

.field private mStackedDataTypeView:Landroid/widget/ImageView;

.field private mStackedVoiceGroup:Landroid/view/ViewGroup;

.field private mStackedVoiceStrengthView:Landroid/widget/ImageView;

.field private mStackedVoiceTypeView:Landroid/widget/ImageView;

.field private mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

.field private mTint:I

.field private mVisibleState:I

.field private mVolte:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarMobileView;->DEBUG:Z

    .line 92
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_no_sims_edge:I

    sput v0, Lcom/android/systemui/statusbar/StatusBarMobileView;->NOSIM_RESID:I

    .line 94
    sput v0, Lcom/android/systemui/statusbar/StatusBarMobileView;->NOSIM_EDGE_RESID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 78
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDirty:Z

    const/4 p1, 0x0

    .line 750
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mIsRtlPropertiesChanged:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 78
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDirty:Z

    const/4 p1, 0x0

    .line 750
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mIsRtlPropertiesChanged:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 78
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDirty:Z

    const/4 p1, 0x0

    .line 750
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mIsRtlPropertiesChanged:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 78
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDirty:Z

    const/4 p1, 0x0

    .line 750
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mIsRtlPropertiesChanged:Z

    return-void
.end method

.method private applyColors()V
    .locals 4

    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 496
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDarkIntensity:F

    .line 497
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mTint:I

    .line 499
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual {v3, v1}, Lcom/android/settingslib/graph/SignalDrawable;->setDarkIntensity(F)V

    .line 500
    invoke-static {v0, p0, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 503
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 505
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 506
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataTypeView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 507
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 508
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceTypeView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 511
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 513
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 514
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 516
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileFiveGUWB:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 518
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOutFiveGUWB:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarMobileView;
    .locals 2

    .line 113
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 119
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    sget v0, Lcom/android/systemui/R$layout;->op_vzw_status_bar_mobile_signal_group:I

    .line 121
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarMobileView;

    goto :goto_0

    .line 123
    :cond_0
    sget v0, Lcom/android/systemui/R$layout;->status_bar_mobile_signal_group:I

    .line 124
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 127
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setSlot(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->init()V

    const/4 p1, 0x0

    .line 129
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(I)V

    return-object p0
.end method

.method private getFiveGUWBInOutIndicator(ZZ)I
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    move p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    add-int/lit8 p1, p1, 0x2

    :cond_1
    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    .line 737
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_stacked_none_5g_uwb:I

    return p0

    .line 743
    :cond_2
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_stacked_inout_5g_uwb:I

    return p0

    .line 741
    :cond_3
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_stacked_out_5g_uwb:I

    return p0

    .line 739
    :cond_4
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_stacked_in_5g_uwb:I

    return p0
.end method

.method private getInOutIndicator(ZZ)I
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    move p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    add-int/lit8 p1, p1, 0x2

    :cond_1
    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    .line 777
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_stacked_none:I

    return p0

    .line 783
    :cond_2
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_stacked_inout:I

    return p0

    .line 781
    :cond_3
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_stacked_out:I

    return p0

    .line 779
    :cond_4
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_stacked_in:I

    return p0
.end method

.method private init()V
    .locals 2

    .line 162
    new-instance v0, Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 163
    sget v0, Lcom/android/systemui/R$id;->mobile_group:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    .line 164
    sget v0, Lcom/android/systemui/R$id;->mobile_signal:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    .line 165
    sget v0, Lcom/android/systemui/R$id;->mobile_type:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 166
    sget v0, Lcom/android/systemui/R$id;->mobile_roaming:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 167
    sget v0, Lcom/android/systemui/R$id;->mobile_roaming_space:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 168
    sget v0, Lcom/android/systemui/R$id;->mobile_in:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 169
    sget v0, Lcom/android/systemui/R$id;->mobile_out:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 170
    sget v0, Lcom/android/systemui/R$id;->inout_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 171
    sget v0, Lcom/android/systemui/R$id;->mobile_volte:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 173
    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->initDotView()V

    .line 181
    sget v0, Lcom/android/systemui/R$id;->mobile_signal_data:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataGroup:Landroid/view/ViewGroup;

    .line 182
    sget v0, Lcom/android/systemui/R$id;->mobile_signal_voice:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceGroup:Landroid/view/ViewGroup;

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataGroup:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->mobile_signal:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataStrengthView:Landroid/widget/ImageView;

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataGroup:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->mobile_type:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataTypeView:Landroid/widget/ImageView;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceGroup:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->mobile_signal:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceStrengthView:Landroid/widget/ImageView;

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceGroup:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->mobile_type:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceTypeView:Landroid/widget/ImageView;

    .line 188
    sget v0, Lcom/android/systemui/R$id;->mobile_signal_single:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileSingleGroup:Landroid/view/ViewGroup;

    .line 189
    sget v0, Lcom/android/systemui/R$id;->mobile_signal_stacked:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileStackedGroup:Landroid/view/ViewGroup;

    .line 191
    sget v0, Lcom/android/systemui/R$id;->mobile_inout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    .line 192
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->statusbar_mobile_type_overlap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 193
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->statusbar_mobile_type_overlap_plus:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 197
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget v0, Lcom/android/systemui/R$id;->mobile_signal_single_5g_uwb:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileFiveGUWBGroup:Landroid/view/ViewGroup;

    .line 199
    sget v1, Lcom/android/systemui/R$id;->mobile_inout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOutFiveGUWB:Landroid/widget/ImageView;

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileFiveGUWBGroup:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->mobile_type:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileFiveGUWB:Landroid/widget/ImageView;

    .line 201
    sget v0, Lcom/android/systemui/R$id;->mobile_signal_vzw:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileVzwGroup:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method private initDotView()V
    .locals 4

    .line 208
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    .line 209
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    .line 211
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 212
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v0, 0x800013

    .line 213
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initViewState()V
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    if-ltz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/DrawableWrapper;->setLevel(I)Z

    goto :goto_1

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-lez v3, :cond_2

    .line 270
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    if-lez v0, :cond_3

    .line 287
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->showStatck(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataStrengthView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataTypeView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataTypeId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceStrengthView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceTypeView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceTypeId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileSingleGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileStackedGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    if-eqz v3, :cond_6

    .line 309
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    if-nez v0, :cond_5

    sget v0, Lcom/android/systemui/statusbar/StatusBarMobileView;->NOSIM_RESID:I

    goto :goto_4

    :cond_5
    sget v0, Lcom/android/systemui/statusbar/StatusBarMobileView;->NOSIM_EDGE_RESID:I

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 311
    :cond_6
    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    if-eqz v0, :cond_7

    .line 312
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileSingleGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileStackedGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 318
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getInOutIndicator(ZZ)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_5g:I

    if-eq v0, v3, :cond_a

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_5g_uwb:I

    if-eq v0, v3, :cond_a

    sget v3, Lcom/android/systemui/R$drawable;->op_stat_sys_data_idle_5g_uwb:I

    if-ne v0, v3, :cond_8

    goto :goto_7

    .line 330
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileFiveGUWBGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileVzwGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    if-eqz v3, :cond_9

    move v1, v2

    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 324
    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileVzwGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileFiveGUWBGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileFiveGUWB:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOutFiveGUWB:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getFiveGUWBInOutIndicator(ZZ)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOutFiveGUWB:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    if-eqz v3, :cond_b

    move v1, v2

    :cond_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 335
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    if-eqz v3, :cond_d

    move v1, v2

    :cond_d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    :goto_8
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateMobileIconPadding()V

    .line 348
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateInOutIndicatorPadding()V

    return-void
.end method

.method private needFixInVisibleState()Z
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private needFixVisibleState()Z
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private showStatck(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z
    .locals 0

    .line 790
    iget p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataStrengthId:I

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceStrengthId:I

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataTypeId:I

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceTypeId:I

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateInOutIndicatorPadding()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 714
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 715
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 716
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_5g:I

    if-ne v1, v2, :cond_1

    .line 717
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_5g_inout_indicator_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 722
    :goto_0
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v2, v1, :cond_2

    .line 723
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 724
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private updateMobileIconPadding()V
    .locals 5

    .line 681
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 684
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 686
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 687
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 688
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    sget v4, Lcom/oneplus/signal/OpSignalIcons;->FOUR_G_LTE:I

    if-eq v3, v4, :cond_1

    sget v4, Lcom/oneplus/signal/OpSignalIcons;->FOUR_G_PLUS_LTE:I

    if-eq v3, v4, :cond_1

    .line 692
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v3

    if-nez v3, :cond_1

    .line 695
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_5g:I

    if-ne v3, v4, :cond_2

    :cond_1
    move v1, v2

    .line 701
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 702
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 703
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z
    .locals 7

    .line 356
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v4

    .line 361
    :goto_1
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    if-ltz v1, :cond_2

    .line 362
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/DrawableWrapper;->setLevel(I)Z

    .line 363
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 365
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-ne v1, v5, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mIsRtlPropertiesChanged:Z

    if-eqz v1, :cond_7

    .line 369
    :cond_3
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mIsRtlPropertiesChanged:Z

    .line 371
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v4

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v2

    :goto_4
    or-int/2addr v0, v1

    .line 372
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-eqz v1, :cond_6

    .line 373
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 377
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    :cond_7
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    if-eq v1, v5, :cond_9

    if-eqz v5, :cond_8

    .line 392
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 393
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 395
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    :cond_9
    :goto_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->showStatck(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 403
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataStrengthView:Landroid/widget/ImageView;

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataStrengthId:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 404
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataTypeView:Landroid/widget/ImageView;

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataTypeId:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 405
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceStrengthView:Landroid/widget/ImageView;

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceStrengthId:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 406
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceTypeView:Landroid/widget/ImageView;

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceTypeId:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 408
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileSingleGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 409
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileStackedGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_9

    .line 411
    :cond_a
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    if-eqz v1, :cond_c

    .line 414
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    if-nez v5, :cond_b

    sget v5, Lcom/android/systemui/statusbar/StatusBarMobileView;->NOSIM_RESID:I

    goto :goto_7

    :cond_b
    sget v5, Lcom/android/systemui/statusbar/StatusBarMobileView;->NOSIM_EDGE_RESID:I

    :goto_7
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 416
    :cond_c
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    if-eqz v1, :cond_d

    .line 417
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    :cond_d
    :goto_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileSingleGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 420
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileStackedGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 422
    :goto_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getInOutIndicator(ZZ)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 425
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_5g:I

    if-eq v1, v5, :cond_10

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_5g_uwb:I

    if-eq v1, v5, :cond_10

    sget v5, Lcom/android/systemui/R$drawable;->op_stat_sys_data_idle_5g_uwb:I

    if-ne v1, v5, :cond_e

    goto :goto_a

    .line 434
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileFiveGUWBGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 435
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileVzwGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 436
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    if-eqz v5, :cond_f

    move v3, v4

    :cond_f
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 428
    :cond_10
    :goto_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileVzwGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 429
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileFiveGUWBGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 430
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileFiveGUWB:Landroid/widget/ImageView;

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 431
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOutFiveGUWB:Landroid/widget/ImageView;

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getFiveGUWBInOutIndicator(ZZ)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOutFiveGUWB:Landroid/widget/ImageView;

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    if-eqz v5, :cond_11

    move v3, v4

    :cond_11
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 439
    :cond_12
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    if-eqz v5, :cond_13

    move v3, v4

    :cond_13
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    :goto_b
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    if-ne v1, v5, :cond_15

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    if-ne v1, v5, :cond_15

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    if-eq v1, v3, :cond_14

    goto :goto_c

    :cond_14
    move v2, v4

    :cond_15
    :goto_c
    or-int/2addr v0, v2

    .line 449
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 454
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result p1

    if-nez p1, :cond_16

    .line 455
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateMobileIconPadding()V

    .line 460
    :cond_16
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateInOutIndicatorPadding()V

    return v0
.end method


# virtual methods
.method public applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 4

    .line 219
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarMobileView;->DEBUG:Z

    const-string v1, "StatusBarMobileView"

    if-eqz v0, :cond_2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyMobileState / state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "null"

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / mState:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_4

    .line 228
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/16 v3, 0x8

    if-eq p1, v3, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    .line 229
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 230
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    goto :goto_3

    .line 231
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    if-nez v3, :cond_5

    .line 233
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 234
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->initViewState()V

    goto :goto_3

    .line 235
    :cond_5
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 236
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z

    move-result v0

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    if-eqz v0, :cond_7

    .line 240
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 243
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->needFixVisibleState()Z

    move-result p1

    const-string v0, " height="

    if-eqz p1, :cond_8

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fix VisibleState width="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    .line 246
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setVisibility(I)V

    .line 247
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_4

    .line 248
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->needFixInVisibleState()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fix InVisibleState width="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 250
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    const/4 p1, 0x4

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setVisibility(I)V

    .line 252
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_9
    :goto_4
    return-void
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 152
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 153
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    .line 155
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 156
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 157
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 158
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 0

    .line 552
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 654
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-object p0
.end method

.method public getVisibleState()I
    .locals 0

    .line 649
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    return p0
.end method

.method public isIconVisible()Z
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    .line 798
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDirty:Z

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRect:Landroid/graphics/Rect;

    .line 484
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDarkIntensity:F

    .line 485
    iput p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mTint:I

    .line 486
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyColors()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 526
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 527
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isInMultiWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 528
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDirty:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyColors()V

    const/4 p1, 0x0

    .line 530
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDirty:Z

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 754
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 755
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataStrengthView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceStrengthView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 759
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mIsRtlPropertiesChanged:Z

    const/4 v0, 0x0

    .line 761
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 762
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataStrengthView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 763
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceStrengthView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 764
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setDecorColor(I)V
    .locals 0

    .line 599
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 3

    .line 561
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 565
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 566
    invoke-virtual {v2, p1}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 565
    invoke-virtual {v1, p1}, Lcom/android/settingslib/graph/SignalDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 577
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 578
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 580
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataStrengthView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 581
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataTypeView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 582
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceStrengthView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 583
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceTypeView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 586
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 589
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 590
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileFiveGUWB:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 591
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOutFiveGUWB:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 537
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 538
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 540
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyColors()V

    :cond_0
    const/4 p1, 0x1

    .line 543
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDirty:Z

    :cond_1
    return-void
.end method

.method public setVisibleState(IZ)V
    .locals 4

    .line 609
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 613
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq p1, v2, :cond_4

    .line 630
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVisibleState, state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", animate:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mState.visible:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "null"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", stack:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x5

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatusBarMobileView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    if-eqz p1, :cond_3

    .line 636
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 637
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_1

    .line 639
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 640
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_1

    .line 620
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 621
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_1

    .line 616
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 617
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarMobileView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
