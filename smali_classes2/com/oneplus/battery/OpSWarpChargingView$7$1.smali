.class Lcom/oneplus/battery/OpSWarpChargingView$7$1;
.super Ljava/lang/Object;
.source "OpSWarpChargingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpSWarpChargingView$7;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/battery/OpSWarpChargingView$7;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpSWarpChargingView$7;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$7$1;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$7;

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

    .line 528
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$7$1;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$7;

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const-string p1, "chargingScaleDownAnimSet"

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$500(Lcom/oneplus/battery/OpSWarpChargingView;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$7$1;->this$1:Lcom/oneplus/battery/OpSWarpChargingView$7;

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$7;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$202(Lcom/oneplus/battery/OpSWarpChargingView;I)I

    .line 521
    sget-boolean p0, Lcom/oneplus/battery/OpSWarpChargingView;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpSWarpChargingView"

    const-string p1, "P4 onAnimationStart()"

    .line 522
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
