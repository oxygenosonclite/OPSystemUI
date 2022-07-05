.class Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;
.super Landroid/content/BroadcastReceiver;
.source "OpBitmojiDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 420
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.oneplus.aod.bitmoji.retry"

    .line 422
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "OpBitmojiDownloadManager"

    if-eqz p2, :cond_0

    const-string p1, "retry"

    .line 423
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$000(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 425
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$100(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.oneplus.aod.bitmoji.cancel"

    .line 426
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "cancel"

    .line 427
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$000(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 429
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$200(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 430
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 431
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->findNotificationInStatusBar(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 433
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$300(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V

    :cond_2
    :goto_0
    return-void
.end method
