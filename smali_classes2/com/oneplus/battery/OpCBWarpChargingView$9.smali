.class Lcom/oneplus/battery/OpCBWarpChargingView$9;
.super Ljava/lang/Object;
.source "OpCBWarpChargingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$cbAnimP1end:I


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpCBWarpChargingView;I)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    iput p2, p0, Lcom/oneplus/battery/OpCBWarpChargingView$9;->val$cbAnimP1end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpCBWarpChargingView;->access$000(Lcom/oneplus/battery/OpCBWarpChargingView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/battery/OpCBWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpCBWarpChargingView;

    iget-object v1, v1, Lcom/oneplus/battery/OpCBWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    .line 619
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Lcom/oneplus/battery/OpCBWarpChargingView$9;->val$cbAnimP1end:I

    add-int/lit8 p0, p0, 0x1

    sub-int/2addr p1, p0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    .line 618
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
