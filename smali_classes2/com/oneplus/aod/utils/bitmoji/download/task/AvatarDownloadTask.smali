.class public Lcom/oneplus/aod/utils/bitmoji/download/task/AvatarDownloadTask;
.super Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;
.source "AvatarDownloadTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 15
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->getBitmojiHelper()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getAvatarFile()Ljava/io/File;

    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->getBitmojiHelper()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getSelfieUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->saveImageToFile(Landroid/net/Uri;Ljava/io/File;)Z

    move-result v0

    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->onDownloadDone(Z)V

    return-void
.end method
