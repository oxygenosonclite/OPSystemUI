.class public abstract Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;
.super Ljava/lang/Object;
.source "BaseDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mListener:Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;

.field protected final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->mTag:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->mListener:Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;

    return-void
.end method


# virtual methods
.method protected getBitmojiHelper()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;
    .locals 0

    .line 53
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    return-object p0
.end method

.method protected onDownloadDone(Z)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->mListener:Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 59
    invoke-interface {p0}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;->onDownloadSuccess()V

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask$OnDownloadDoneListener;->onDownloadFail()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected saveImageToFile(Landroid/net/Uri;Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 30
    invoke-static {v1, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 34
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 36
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 45
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p1

    .line 41
    :goto_0
    :try_start_3
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/task/BaseDownloadTask;->mTag:Ljava/lang/String;

    const-string p2, "saveImageToFile: occur error"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 45
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_0
    const/4 p0, 0x0

    return p0

    :goto_1
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 48
    :catch_4
    :cond_1
    throw p0
.end method
