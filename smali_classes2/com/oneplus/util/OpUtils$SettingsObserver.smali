.class final Lcom/oneplus/util/OpUtils$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/util/OpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsObserver"
.end annotation


# static fields
.field private static final OP_DISPLAY_DENSITY_FORCE:Landroid/net/Uri;

.field private static final OP_QUICK_REPLY_PORTRAIT_ENABLE:Landroid/net/Uri;

.field private static final OP_SCREEN_RESOLUTION_ADJUST_URI:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "oneplus_screen_resolution_adjust"

    .line 856
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/util/OpUtils$SettingsObserver;->OP_SCREEN_RESOLUTION_ADJUST_URI:Landroid/net/Uri;

    const-string v0, "display_density_forced"

    .line 858
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/util/OpUtils$SettingsObserver;->OP_DISPLAY_DENSITY_FORCE:Landroid/net/Uri;

    const-string v0, "quick_reply_portrait_enable"

    .line 860
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/util/OpUtils$SettingsObserver;->OP_QUICK_REPLY_PORTRAIT_ENABLE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 864
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 865
    iput-object p1, p0, Lcom/oneplus/util/OpUtils$SettingsObserver;->mContext:Landroid/content/Context;

    .line 866
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 867
    sget-object v0, Lcom/oneplus/util/OpUtils$SettingsObserver;->OP_SCREEN_RESOLUTION_ADJUST_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 869
    sget-object v0, Lcom/oneplus/util/OpUtils$SettingsObserver;->OP_DISPLAY_DENSITY_FORCE:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 871
    sget-object v0, Lcom/oneplus/util/OpUtils$SettingsObserver;->OP_QUICK_REPLY_PORTRAIT_ENABLE:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 873
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/util/OpUtils$SettingsObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 878
    iget-object p0, p0, Lcom/oneplus/util/OpUtils$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 881
    sget-object v2, Lcom/oneplus/util/OpUtils$SettingsObserver;->OP_SCREEN_RESOLUTION_ADJUST_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x2

    const-string v3, "oneplus_screen_resolution_adjust"

    .line 882
    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/oneplus/util/OpUtils;->mScreenResolution:I

    :cond_2
    if-nez v1, :cond_3

    .line 885
    sget-object v1, Lcom/oneplus/util/OpUtils$SettingsObserver;->OP_QUICK_REPLY_PORTRAIT_ENABLE:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    const-string v1, "quick_reply_portrait_enable"

    .line 886
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    sput-boolean p1, Lcom/oneplus/util/OpUtils;->QUICK_REPLY_PORTRAIT_ENABLED:Z

    .line 888
    const-class p0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bubbles/BubbleController;

    .line 895
    :cond_5
    sget-boolean p0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_6

    .line 896
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "update settings observer uri="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mScreenResolution="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/oneplus/util/OpUtils;->mScreenResolution:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method
