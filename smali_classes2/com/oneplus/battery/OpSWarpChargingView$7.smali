.class Lcom/oneplus/battery/OpSWarpChargingView$7;
.super Ljava/lang/Object;
.source "OpSWarpChargingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpSWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpSWarpChargingView;

.field final synthetic val$chargingAnimP4:Landroid/animation/ValueAnimator;

.field final synthetic val$infoViewScaleDownAnim:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/ValueAnimator;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    iput-object p2, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->val$chargingAnimP4:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->val$infoViewScaleDownAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "P3 onAnimationEnd() mIsAnimationPlaying "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$300(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpSWarpChargingView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$300(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 515
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$402(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 516
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$400(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->val$chargingAnimP4:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->val$infoViewScaleDownAnim:Landroid/animation/AnimatorSet;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 517
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$400(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lcom/oneplus/battery/OpSWarpChargingView$7$1;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpSWarpChargingView$7$1;-><init>(Lcom/oneplus/battery/OpSWarpChargingView$7;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 541
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$400(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 542
    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$300(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 543
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const-string p1, "chargingAnimP3"

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$500(Lcom/oneplus/battery/OpSWarpChargingView;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$202(Lcom/oneplus/battery/OpSWarpChargingView;I)I

    .line 506
    sget-boolean p0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpSWarpChargingView"

    const-string p1, "P3 onAnimationStart()"

    .line 507
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
