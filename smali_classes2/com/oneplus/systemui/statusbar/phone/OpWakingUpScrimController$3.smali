.class Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpWakingUpScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->handleStartAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "OpWakingUpScrimController"

    const-string v0, "WakingUpScrimView onAnimationCancel"

    .line 238
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 239
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WakingUpScrimView onAnimationEnd: cance "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->mCancelled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpWakingUpScrimController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->mCancelled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-static {p1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->access$500(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;Z)V

    .line 250
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-static {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->access$602(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x0

    .line 227
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->mCancelled:Z

    const-string p1, "OpWakingUpScrimController"

    const-string v0, "WakingUpScrimView onAnimationStart"

    .line 228
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->access$400(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 231
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->access$400(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onWakingUpScrimAnimationStart(J)V

    :cond_0
    return-void
.end method
