.class public Lcom/oneplus/systemui/biometrics/OpFodAodControl;
.super Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;
.source "OpFodAodControl.java"


# instance fields
.field private mAodMode:I

.field private final mIsSupportRealAod:Z


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/16 v0, 0x12e

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 26
    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mIsSupportRealAod:Z

    .line 27
    iput v1, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    return-void
.end method


# virtual methods
.method protected adjustBrightness(Z)V
    .locals 2

    .line 83
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    move-result-object p0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyAodMode(I)V

    :cond_2
    return-void
.end method

.method public canDisable()Z
    .locals 0

    .line 46
    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canEnable()Z
    .locals 2

    .line 39
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getDisplayPowerStatus()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public disableInner(Ljava/lang/String;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set aod mode off, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    .line 73
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyAodMode(I)V

    return-void
.end method

.method public enableInner(Ljava/lang/String;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set aod mode on, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mIsSupportRealAod:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->isCanvasAodEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    :goto_0
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x2

    .line 61
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    .line 65
    :goto_2
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify aod value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    move-result-object p1

    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyAodMode(I)V

    return-void
.end method

.method public getAodMode()I
    .locals 0

    .line 50
    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    return p0
.end method

.method protected onAlwaysOnEnableChanged(Z)V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAlwaysOnEnableChanged: active= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    if-nez p1, :cond_1

    .line 92
    iput v1, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    goto :goto_1

    .line 93
    :cond_1
    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->isCanvasAodEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iput v2, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    .line 96
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    move-result-object p1

    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyAodMode(I)V

    return-void
.end method

.method public resetState(Ljava/lang/String;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset aod state, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    return-void
.end method
