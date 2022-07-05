.class Lcom/oneplus/battery/OpCBWarpChargingView$10;
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

    .line 626
    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$10;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

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

    .line 637
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$10;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    const-string p1, "WARP_ANIM_P2_P3"

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$900(Lcom/oneplus/battery/OpCBWarpChargingView;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 629
    iget-object p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$10;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$202(Lcom/oneplus/battery/OpCBWarpChargingView;I)I

    .line 630
    sget-boolean p0, Lcom/oneplus/battery/OpCBWarpChargingView;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpCBWarpChargingView"

    const-string p1, "WARP P2 P3 set onAnimationStart()"

    .line 631
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
