.class Lcom/oneplus/battery/OpCBWarpChargingView$3;
.super Ljava/lang/Object;
.source "OpCBWarpChargingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpCBWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpCBWarpChargingView;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpCBWarpChargingView;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 507
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$500(Lcom/oneplus/battery/OpCBWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 508
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$600(Lcom/oneplus/battery/OpCBWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 509
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$700(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 511
    :cond_0
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$800(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 514
    :cond_1
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    const-string p1, "chargingAnimP1"

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$900(Lcom/oneplus/battery/OpCBWarpChargingView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 489
    sget-boolean p1, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "OpCBWarpChargingView"

    const-string v0, "P1 onAnimationStart()"

    .line 490
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$202(Lcom/oneplus/battery/OpCBWarpChargingView;I)I

    .line 494
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$100(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 495
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 497
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$300(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 499
    iget-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$400(Lcom/oneplus/battery/OpCBWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 500
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$400(Lcom/oneplus/battery/OpCBWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;

    move-result-object p0

    const/16 p1, 0x67

    invoke-interface {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationController;->animationStart(I)V

    :cond_1
    return-void
.end method
