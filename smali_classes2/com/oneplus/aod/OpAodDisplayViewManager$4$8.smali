.class Lcom/oneplus/aod/OpAodDisplayViewManager$4$8;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager$4;->onAlwaysOnEnableChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager$4;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$8;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$8;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$900(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->isCanvasAodEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$8;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/bg/OpAodCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/bg/OpAodCanvas;->recover()V

    .line 792
    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$8;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->recover()V

    return-void
.end method
