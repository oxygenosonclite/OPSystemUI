.class public Lcom/oneplus/aod/OpAodNotificationIconAreaController;
.super Ljava/lang/Object;
.source "OpAodNotificationIconAreaController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mIconHPadding:I

.field private mIconSize:I

.field private mMoreIcon:Landroid/widget/TextView;

.field private mNLockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mNotificationIconArea:Landroid/view/View;

.field private mNotificationIconDozeHelper:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

.field private mNotificationIcons:Lcom/oneplus/aod/OpIconMerger;

.field private mOpClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/OpClockViewCtrl;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 54
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 55
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNLockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 58
    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconDozeHelper:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    .line 60
    iput-object p2, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mOpClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    .line 61
    iput-object p1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    return-void
.end method

.method private generateIconLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 79
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mIconSize:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_0

    .line 82
    iget p0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mIconHPadding:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_0
    return-object v0
.end method

.method private reloadDimens()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->aod_notification_icon_fixed_size:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mIconSize:I

    .line 94
    iget-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->aod_notification_icon_fixed_padding:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mIconHPadding:I

    .line 96
    iget-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    iget p0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mIconHPadding:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    return-void
.end method


# virtual methods
.method public hasNotifications()Z
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/OpIconMerger;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initViews(Landroid/view/ViewGroup;)V
    .locals 1

    .line 69
    sget v0, Lcom/android/systemui/R$id;->notification_icon_area_inner:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 71
    sget v0, Lcom/android/systemui/R$id;->notificationIcons:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/aod/OpIconMerger;

    iput-object p1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/OpIconMerger;

    .line 73
    iget-object p1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->moreIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    .line 74
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->reloadDimens()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    return-void
.end method

.method public setTextSettings(ILandroid/graphics/Typeface;I)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    if-eqz p2, :cond_0

    .line 179
    iget-object p1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 182
    iget-object p0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    const/4 p1, 0x0

    int-to-float p2, p3

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public updateNotificationIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 11

    .line 104
    iget-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mOpClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpClockViewCtrl;->getController()Lcom/oneplus/aod/controller/IOpClockController;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mOpClockViewCtrl:Lcom/oneplus/aod/OpClockViewCtrl;

    .line 105
    invoke-virtual {v0}, Lcom/oneplus/aod/OpClockViewCtrl;->getController()Lcom/oneplus/aod/controller/IOpClockController;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowNotification()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->reloadDimens()V

    .line 112
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x3

    .line 115
    iget-object v3, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/OpIconMerger;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v3, 0x0

    if-le v0, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    .line 118
    :goto_0
    sget-boolean v5, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    const-string v6, "AodNotificationIconArea"

    if-eqz v5, :cond_2

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNotificationIcons: iconSize="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", maxIconAmounts="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", showMore="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v0, :cond_3

    const-string p1, "updateNotificationIcons: setVisibility to gone"

    .line 123
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 127
    :cond_3
    iget-object v5, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_4

    .line 131
    iget-object v1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, -0x3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 134
    :cond_4
    iget-object v5, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-eqz v4, :cond_5

    move v0, v2

    .line 139
    :cond_5
    iget-object v1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/OpIconMerger;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_2
    if-ge v3, v0, :cond_a

    .line 141
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v1, :cond_6

    goto :goto_4

    .line 148
    :cond_6
    iget-object v2, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 149
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 150
    iget-object v4, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNLockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_4

    .line 156
    :cond_7
    new-instance v2, Lcom/oneplus/aod/OpAodNotificationIconView;

    iget-object v4, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/oneplus/aod/OpAodNotificationIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 157
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oneplus/aod/OpAodNotificationIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 158
    invoke-direct {p0, v3}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->generateIconLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 163
    iget-object v4, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, -0x1

    .line 166
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 168
    :cond_8
    iget-object v4, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconDozeHelper:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    move-object v5, v2

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setImageDark(Landroid/widget/ImageView;ZZJZ)V

    .line 171
    :goto_3
    iget-object v4, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/OpIconMerger;

    invoke-virtual {v4, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    return-void

    .line 106
    :cond_b
    :goto_5
    iget-object p0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
