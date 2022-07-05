.class public final synthetic Lcom/oneplus/aod/utils/bitmoji/download/-$$Lambda$OpBitmojiDownloadManager$CyDw-xPrDiG_kOdhwsLInuA8hmY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/-$$Lambda$OpBitmojiDownloadManager$CyDw-xPrDiG_kOdhwsLInuA8hmY;->f$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    iput-boolean p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/-$$Lambda$OpBitmojiDownloadManager$CyDw-xPrDiG_kOdhwsLInuA8hmY;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/-$$Lambda$OpBitmojiDownloadManager$CyDw-xPrDiG_kOdhwsLInuA8hmY;->f$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/-$$Lambda$OpBitmojiDownloadManager$CyDw-xPrDiG_kOdhwsLInuA8hmY;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->lambda$queryWithConfirm$0$OpBitmojiDownloadManager(Z)V

    return-void
.end method
