.class Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$1;
.super Ljava/lang/Object;
.source "OpBitmojiDownloadManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->lambda$queryWithConfirm$0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

.field final synthetic val$contentChange:Z


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;Z)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    iput-boolean p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$1;->val$contentChange:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$1;->this$0:Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;

    iget-boolean p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager$1;->val$contentChange:Z

    invoke-static {p1, p0}, Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;->access$1200(Lcom/oneplus/aod/utils/bitmoji/download/OpBitmojiDownloadManager;Z)V

    return-void
.end method
