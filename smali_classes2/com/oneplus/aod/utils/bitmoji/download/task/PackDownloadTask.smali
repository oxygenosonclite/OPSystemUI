.class public Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;
.super Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;
.source "PackDownloadTask.java"


# instance fields
.field private mOverride:Z

.field private mPack:Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;)V

    .line 22
    iput-object p3, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;->mPack:Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    .line 23
    iput-boolean p4, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;->mOverride:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 28
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;->mPack:Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->getPackId()Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;->mPack:Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;

    invoke-virtual {v1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Pack;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;

    .line 32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 36
    :cond_1
    iget-boolean v4, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/PackDownloadTask;->mOverride:Z

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->isDownloaded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->getBitmojiHelper()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v4

    invoke-virtual {v3}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getImagePath(Ljava/lang/String;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v4

    .line 39
    invoke-virtual {v3}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->saveImageToFile(Landroid/net/Uri;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 45
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 49
    :cond_4
    const-class v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    .line 51
    invoke-static {v0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->getTriggerIdByPackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v1, v3, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->onImagePackUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->onDownloadDone(Z)V

    return-void
.end method
