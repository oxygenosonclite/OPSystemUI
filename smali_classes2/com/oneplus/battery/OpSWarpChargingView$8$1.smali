.class Lcom/oneplus/battery/OpSWarpChargingView$8$1;
.super Ljava/lang/Object;
.source "OpSWarpChargingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpSWarpChargingView$8;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/battery/OpSWarpChargingView$8;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpSWarpChargingView$8;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$8$1;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$8;

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

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 572
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$8$1;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$8;

    iget-object p1, p1, Lcom/oneplus/battery/OpSWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$702(Lcom/oneplus/battery/OpSWarpChargingView;Z)Z

    .line 573
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$8$1;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$8;

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$8;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$900(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
