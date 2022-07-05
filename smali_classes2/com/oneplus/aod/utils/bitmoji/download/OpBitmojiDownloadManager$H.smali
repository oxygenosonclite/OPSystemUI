.class Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;
.super Landroid/os/Handler;
.source "OpBitmojiDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;Landroid/os/Looper;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    .line 459
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 464
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 475
    :pswitch_0
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$700(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V

    .line 476
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$800(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V

    goto :goto_1

    .line 488
    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$1100(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V

    goto :goto_1

    .line 482
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 483
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 484
    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_1

    move v1, v2

    .line 485
    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p0, v0, v3, v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$1000(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 479
    :pswitch_3
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-static {p0, v1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$900(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;Z)V

    goto :goto_1

    .line 470
    :pswitch_4
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$500(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 471
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$600(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 472
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$700(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)V

    goto :goto_1

    .line 466
    :pswitch_5
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$H;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    invoke-static {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$400(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;)Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadInfo;->prepare()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
