.class public Lcom/oneplus/aod/OpAodBatteryStatusView;
.super Landroid/widget/LinearLayout;
.source "OpAodBatteryStatusView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# static fields
.field private static final CHARGE_ICONS:[I


# instance fields
.field private mBattery:Landroid/view/View;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryDashChargeView:Lcom/oneplus/aod/OpAodBatteryDashChargeView;

.field private mChargeState:I

.field private mChargeView:Landroid/widget/ImageView;

.field private mFastCharge:Z

.field private mHandler:Landroid/os/Handler;

.field private mLevel:I

.field private mPercentage:Landroid/widget/TextView;

.field private mWirelessWarpCharging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 64
    sget v1, Lcom/android/systemui/R$drawable;->aod_ic_battery_charged:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$drawable;->aod_ic_battery_charging:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$drawable;->aod_ic_battery_fast_charging:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/oneplus/aod/OpAodBatteryStatusView;->CHARGE_ICONS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/OpAodBatteryStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpAodBatteryStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mWirelessWarpCharging:Z

    const/4 p2, -0x1

    .line 74
    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mChargeState:I

    .line 75
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mFastCharge:Z

    .line 89
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryStatusView;->initHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodBatteryStatusView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryStatusView;->handleUpdateViewState()V

    return-void
.end method

.method private handleUpdateViewState()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mPercentage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Landroid/icu/text/NumberFormat;->getPercentInstance()Landroid/icu/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mLevel:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " handleUpdateViewState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryStatusView;->isFastCharge()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpAodBatteryStatusView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x4a

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 188
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 190
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryStatusView;->isFastCharge()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mBattery:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mBatteryDashChargeView:Lcom/oneplus/aod/OpAodBatteryDashChargeView;

    iget v3, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mLevel:I

    invoke-virtual {v0, v3}, Lcom/oneplus/aod/OpAodBatteryDashChargeView;->setLevel(I)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mBatteryDashChargeView:Lcom/oneplus/aod/OpAodBatteryDashChargeView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mBattery:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mBatteryDashChargeView:Lcom/oneplus/aod/OpAodBatteryDashChargeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    :goto_0
    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mChargeView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 202
    :cond_3
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mChargeState:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 203
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mBattery:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mChargeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mBatteryDashChargeView:Lcom/oneplus/aod/OpAodBatteryDashChargeView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 207
    :cond_4
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mChargeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mChargeView:Landroid/widget/ImageView;

    sget-object v2, Lcom/oneplus/aod/OpAodBatteryStatusView;->CHARGE_ICONS:[I

    iget v3, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mChargeState:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mBattery:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mBatteryDashChargeView:Lcom/oneplus/aod/OpAodBatteryDashChargeView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getAodWindowManager()Lcom/oneplus/aod/OpAodWindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 47
    new-instance v1, Lcom/oneplus/aod/OpAodBatteryStatusView$1;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/oneplus/aod/OpAodBatteryStatusView$1;-><init>(Lcom/oneplus/aod/OpAodBatteryStatusView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private isFastCharge()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mFastCharge:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mWirelessWarpCharging:Z

    if-eqz p0, :cond_0

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

.method private updateViewState()V
    .locals 2

    .line 174
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryStatusView;->initHandler()V

    .line 175
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 176
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .line 104
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 105
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 106
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mChargeView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 109
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->aod_battery_charging_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 110
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->aod_battery_charging_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 111
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->aod_battery_icon_margin_start:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    if-eqz p2, :cond_2

    const/16 p2, 0x64

    if-lt p1, p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryStatusView;->isFastCharge()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    .line 135
    :goto_0
    iget p3, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mLevel:I

    if-ne p3, p1, :cond_3

    iget p3, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mChargeState:I

    if-eq p3, p2, :cond_4

    .line 137
    :cond_3
    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mLevel:I

    .line 138
    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mChargeState:I

    .line 140
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryStatusView;->updateViewState()V

    .line 142
    :cond_4
    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mChargeState:I

    .line 143
    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mLevel:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 116
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 117
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onFastChargeChanged(I)V
    .locals 3

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mFastCharge:Z

    if-eq v1, v0, :cond_2

    .line 150
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onFastChargeChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OpAodBatteryStatusView"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mFastCharge:Z

    .line 154
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryStatusView;->updateViewState()V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 96
    sget v0, Lcom/android/systemui/R$id;->percentage:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mPercentage:Landroid/widget/TextView;

    .line 97
    sget v0, Lcom/android/systemui/R$id;->battery:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mBattery:Landroid/view/View;

    .line 98
    sget v0, Lcom/android/systemui/R$id;->battery_dash_charge:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpAodBatteryDashChargeView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mBatteryDashChargeView:Lcom/oneplus/aod/OpAodBatteryDashChargeView;

    .line 99
    sget v0, Lcom/android/systemui/R$id;->battery_charge:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mChargeView:Landroid/widget/ImageView;

    return-void
.end method

.method public onWirelessWarpChargeChanged(Z)V
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mWirelessWarpCharging:Z

    if-eq v0, p1, :cond_0

    .line 162
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mWirelessWarpCharging:Z

    .line 163
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryStatusView;->updateViewState()V

    :cond_0
    return-void
.end method

.method public setTextSettings(ILandroid/graphics/Typeface;I)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mPercentage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    if-eqz p2, :cond_0

    .line 220
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mPercentage:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 223
    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryStatusView;->mPercentage:Landroid/widget/TextView;

    const/4 p1, 0x0

    int-to-float p2, p3

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method
