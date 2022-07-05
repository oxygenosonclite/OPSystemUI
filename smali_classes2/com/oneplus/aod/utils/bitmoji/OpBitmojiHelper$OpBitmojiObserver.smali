.class Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;
.super Landroid/database/ContentObserver;
.source "OpBitmojiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpBitmojiObserver"
.end annotation


# instance fields
.field private mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V
    .locals 1

    .line 389
    new-instance p1, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 392
    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 397
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getSelfieUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 398
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getBitmojiStatus()I

    move-result p1

    .line 399
    invoke-static {}, Lcom/oneplus/aod/OpClockViewCtrl;->getClockStyle()I

    move-result p2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: selfie, status= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clockStyle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBitmojiObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->setNeedsRedownload(Z)V

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    if-ne p1, v1, :cond_1

    .line 408
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper$OpBitmojiObserver;->mDownloadManager:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-virtual {p0, v1, v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->queryWithConfirm(ZZ)V

    goto :goto_0

    .line 411
    :cond_0
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->access$200(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;)V

    :cond_1
    :goto_0
    return-void
.end method
