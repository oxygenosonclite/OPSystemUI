.class public Lcom/oneplus/systemui/biometrics/OpQLHelper;
.super Ljava/lang/Object;
.source "OpQLHelper.java"


# instance fields
.field final mAppMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPaymentApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentAppsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWxMiniProgramAppsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mAppMap:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 53
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$array;->op_wx_mini_program_strings:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mWxMiniProgramAppsName:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$array;->zzz_op_quick_pay_switch_strings:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentAppsName:Ljava/util/ArrayList;

    .line 61
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->loadPaymentApps()V

    return-void
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickLaunch.QLHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 255
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p0, "Unknown"

    :goto_1
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getApplicationIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string v0, "Exception e = "

    const-string v1, "QuickLaunch.QLHelper"

    const/4 v2, 0x0

    if-ltz p2, :cond_0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 213
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 214
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {v3, p0, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 217
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] name not found"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 222
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {p2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 227
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 234
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz p2, :cond_1

    .line 237
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object p0

    :catch_3
    move-exception p0

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2
.end method

.method private getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/16 v0, 0x280

    if-eqz p1, :cond_0

    .line 458
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 460
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getPaymentApplicationIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    sget p1, Lcom/android/systemui/R$drawable;->ic_alipay_scanning:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 431
    :cond_1
    sget p1, Lcom/android/systemui/R$drawable;->ic_alipay_qrcode:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 428
    :cond_2
    sget p1, Lcom/android/systemui/R$drawable;->ic_wechat_scanning:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 425
    :cond_3
    sget p1, Lcom/android/systemui/R$drawable;->ic_wechat_qrcode:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getWxMiniProgramApplicationIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    sget p1, Lcom/android/systemui/R$drawable;->ic_wechat_mini_program_bus:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "QuickLaunch.QLHelper"

    const/4 v1, 0x0

    .line 194
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 195
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 196
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickPay: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not available."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private loadPaymentApps()V
    .locals 8

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    .line 261
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    .line 264
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 265
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ";"

    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 267
    array-length v4, v3

    const/4 v5, 0x4

    if-lt v4, v5, :cond_5

    .line 268
    new-instance v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    invoke-direct {v4}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;-><init>()V

    .line 269
    iput v2, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->index:I

    .line 270
    aget-object v5, v3, v1

    iput-object v5, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 271
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentAppsName:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->switchName:Ljava/lang/String;

    const/4 v5, 0x1

    .line 273
    aget-object v6, v3, v5

    const-string v7, "sdk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 275
    :cond_0
    aget-object v6, v3, v5

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 276
    aget-object v6, v3, v5

    iput-object v6, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_1

    .line 278
    :cond_1
    aget-object v6, v3, v5

    iput-object v6, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->targetClassName:Ljava/lang/String;

    :goto_1
    const/4 v6, 0x2

    .line 282
    aget-object v6, v3, v6

    const-string v7, "default"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 283
    iput-boolean v5, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->isDefault:Z

    :cond_2
    const/4 v5, 0x3

    .line 286
    aget-object v6, v3, v5

    const-string v7, "class"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 287
    aget-object v3, v3, v5

    iput-object v3, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->targetClassName:Ljava/lang/String;

    .line 290
    :cond_3
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getPaymentApplicationIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 293
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x50600d5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 295
    invoke-virtual {v3, v1, v1, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 296
    iput-object v3, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 298
    :cond_4
    iget-object v3, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-direct {p0, v3, v5}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getApplicationIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 301
    :goto_2
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private loadShortCuts(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-eqz v0, :cond_1

    .line 182
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    const/16 v1, 0x1b

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 184
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 185
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseSettingData(Ljava/lang/String;)Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 92
    :cond_0
    new-instance v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;

    invoke-direct {v1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;-><init>()V

    const-string v2, ":"

    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 97
    invoke-virtual {v1, p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->setActionName(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 101
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v6, 0x1

    add-int/2addr v2, v6

    .line 102
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, ";"

    const/4 v7, 0x3

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 104
    array-length v2, p1

    invoke-static {p1, v5, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    aget-object p1, v4, v5

    invoke-virtual {v1, p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->setActionName(Ljava/lang/String;)V

    .line 106
    aget-object p1, v4, v6

    invoke-virtual {v1, p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->setPackage(Ljava/lang/String;)V

    .line 108
    iget-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    .line 112
    :cond_2
    aget-object p1, v4, v5

    const-string v0, "OpenApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    .line 113
    aget-object p1, v4, v0

    invoke-virtual {v1, p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->setUid(Ljava/lang/String;)V

    .line 114
    iget-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    iget v0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mUid:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getApplicationIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 115
    iget-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mLabel:Ljava/lang/String;

    goto/16 :goto_4

    .line 116
    :cond_3
    aget-object p1, v4, v5

    const-string v2, "OpenShortcut"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 117
    aget-object p1, v4, v0

    invoke-virtual {v1, p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->setShortcutId(Ljava/lang/String;)V

    .line 118
    aget-object p1, v4, v7

    invoke-virtual {v1, p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->setUid(Ljava/lang/String;)V

    .line 120
    iget-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->loadShortCuts(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    move v0, v5

    .line 122
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 123
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 124
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 126
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    .line 127
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    .line 130
    iget-object v3, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    iget v4, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mUid:I

    invoke-direct {p0, v3, v4}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getApplicationIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 133
    :cond_4
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 135
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 136
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 139
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 140
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 142
    :cond_6
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mLabel:Ljava/lang/String;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_8
    aget-object p1, v4, v5

    const-string v2, "OpenQuickPay"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 146
    iget-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 147
    aget-object p1, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPaymentWhich:I

    .line 149
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_9

    .line 150
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    iget v0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPaymentWhich:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    iput-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mQuickPayConfig:Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    .line 151
    iget-object p1, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    iput-object p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 154
    :cond_9
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 157
    iget v0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPaymentWhich:I

    if-ne v0, v3, :cond_a

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentAppsName:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_3

    .line 160
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    .line 158
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_c

    iget p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPaymentWhich:I

    if-ne p1, v3, :cond_b

    goto :goto_1

    :cond_b
    const-string p1, " "

    goto :goto_2

    :cond_c
    :goto_1
    const-string p1, ""

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentAppsName:Ljava/util/ArrayList;

    iget p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPaymentWhich:I

    .line 160
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    iput-object p0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mLabel:Ljava/lang/String;

    goto :goto_4

    .line 163
    :cond_d
    aget-object p1, v4, v5

    const-string v2, "OpenWxMiniProgram"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 164
    aget-object p1, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 165
    iget-object v0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 166
    iput p1, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mWxMiniProgramWhich:I

    .line 167
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->getWxMiniProgramApplicationIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 168
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mWxMiniProgramAppsName:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mLabel:Ljava/lang/String;

    :cond_e
    :goto_4
    return-object v1
.end method


# virtual methods
.method public getQLApps()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mAppMap:Ljava/util/ArrayList;

    return-object p0
.end method

.method isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\\."

    .line 522
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-string v1, ""

    if-ne p2, v1, :cond_0

    goto :goto_3

    .line 526
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 529
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 530
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 531
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 532
    array-length p2, p0

    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    move v0, v2

    :goto_0
    if-ge v0, p2, :cond_5

    .line 534
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 535
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 536
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 537
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-ge v1, v3, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    if-le v1, v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 546
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickLaunch.QLHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return v2
.end method

.method public parseQLConfig(Ljava/lang/String;)V
    .locals 4

    .line 69
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseQLConfig config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickLaunch.QLHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, ","

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 78
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 79
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->parseSettingData(Ljava/lang/String;)Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 8

    const-string v0, "[OnlineConfig] QuickPayConfigUpdater, error message:"

    const-string v1, "QuickLaunch.QLHelper"

    const-string v2, "name"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .line 468
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 469
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 470
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "op_quick_pay_wechat_qrcode_config"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 471
    invoke-virtual {p0, v3, v5}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 472
    :cond_1
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "op_quick_pay_wechat_scanning_config"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    .line 473
    invoke-virtual {p0, v6, v5}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 474
    :cond_2
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "op_quick_pay_alipay_qrcode_config"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    .line 475
    invoke-virtual {p0, v6, v5}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 476
    :cond_3
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "op_quick_pay_alipay_scanning_config"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    .line 477
    invoke-virtual {p0, v6, v5}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 478
    :cond_4
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "op_quick_pay_paytm_config"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x4

    .line 479
    invoke-virtual {p0, v6, v5}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    const-string p0, "[OnlineConfig] QuickPayConfigUpdater updated complete"

    .line 482
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 486
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception p0

    .line 484
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public startApp(Ljava/lang/String;Landroid/app/ActivityOptions;I)Z
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    .line 315
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    new-instance p2, Landroid/os/UserHandle;

    .line 316
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-direct {p2, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 314
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0

    .line 321
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start app "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed because intent is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickLaunch.QLHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public startQuickPay(II)V
    .locals 5

    const-string v0, "QuickLaunch.QLHelper"

    const-string v1, "com.eg.android.AlipayGphone"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    const-string v3, "1002"

    .line 330
    invoke-virtual {p0, v1, v3, p2, v2}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->startShortcut(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    const-string v3, "1001"

    .line 332
    invoke-virtual {p0, v1, v3, p2, v2}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->startShortcut(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    if-eqz p2, :cond_2

    return-void

    .line 341
    :cond_2
    :try_start_0
    sget-boolean p2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_3

    .line 342
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuickPay: startQuickPay which="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_3
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    iget-object p2, p2, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    move v1, v2

    .line 348
    :goto_1
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    if-eq p1, v1, :cond_5

    .line 350
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    .line 351
    iget-boolean v4, v3, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->isDefault:Z

    if-eqz v4, :cond_5

    iget-object v3, v3, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 354
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_4

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "QuickPay: startQuickPay new which="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p2, 0x1

    move p1, v1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz p2, :cond_8

    .line 364
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    .line 367
    iget-object p2, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 368
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next.packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " next.className "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v1, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x10008000

    .line 371
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 372
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_3

    .line 373
    :cond_7
    iget-object p2, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 374
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "next.urlScheme "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object p1, p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x14000000

    .line 377
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 378
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_3

    .line 381
    :cond_8
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->zzz_op_quick_pay_no_install_message:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 382
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "QuickPay: startQuickPay have no installed app."

    .line 383
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "QuickPay: startQuickPay failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 6

    .line 401
    iget-object p4, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez p4, :cond_0

    .line 402
    iget-object p4, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mContext:Landroid/content/Context;

    const-string v0, "launcherapps"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/LauncherApps;

    iput-object p4, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 p0, 0x0

    const-string p4, "QuickLaunch.QLHelper"

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 407
    :try_start_0
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p1, "start shortcut failed"

    .line 410
    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    const-string p1, "shortcut service is null"

    .line 415
    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public startWxMiniProgram(I)V
    .locals 0

    .line 392
    const-class p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleWxBus()V

    :cond_0
    return-void
.end method

.method updateQuickPayIfNeed(ILorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "value"

    .line 491
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 492
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 493
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    .line 494
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 495
    array-length v4, v3

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_4

    .line 496
    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    iget-object v4, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v5, v3, v5

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/systemui/biometrics/OpQLHelper;->isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 497
    new-instance v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;

    invoke-direct {v4}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;-><init>()V

    .line 498
    aget-object v5, v3, v0

    iput-object v5, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    .line 499
    aget-object v6, v3, v5

    const-string v7, "sdk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 501
    :cond_0
    aget-object v6, v3, v5

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 502
    aget-object v6, v3, v5

    iput-object v6, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_1

    .line 504
    :cond_1
    aget-object v6, v3, v5

    iput-object v6, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 505
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->targetClassName:Ljava/lang/String;

    :goto_1
    const/4 v6, 0x2

    .line 507
    aget-object v6, v3, v6

    const-string v7, "default"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 508
    iput-boolean v5, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->isDefault:Z

    :cond_2
    const/4 v5, 0x3

    .line 510
    aget-object v6, v3, v5

    const-string v7, "class"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 511
    aget-object v3, v3, v5

    iput-object v3, v4, Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;->targetClassName:Ljava/lang/String;

    .line 513
    :cond_3
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickPay: update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickLaunch.QLHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method
