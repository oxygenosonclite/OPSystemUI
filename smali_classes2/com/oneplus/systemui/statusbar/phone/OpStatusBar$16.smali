.class Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$16;
.super Ljava/lang/Object;
.source "OpStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onAlwaysOnEnableChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

.field final synthetic val$active:Z


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Z)V
    .locals 0

    .line 1693
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$16;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    iput-boolean p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$16;->val$active:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$16;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$2600(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$16;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$2600(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;

    move-result-object v0

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$16;->val$active:Z

    invoke-interface {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;->fireAlwaysOnEnableChanged(Z)V

    :cond_0
    return-void
.end method
