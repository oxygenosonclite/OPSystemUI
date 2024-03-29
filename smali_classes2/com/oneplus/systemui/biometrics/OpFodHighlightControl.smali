.class public Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;
.super Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;
.source "OpFodHighlightControl.java"


# instance fields
.field private mIsHighlight:Z


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V

    return-void
.end method


# virtual methods
.method public canDisable()Z
    .locals 2

    .line 24
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->mIsHighlight:Z

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v1, "canDisable: press state not correct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->mIsHighlight:Z

    return p0
.end method

.method public canEnable()Z
    .locals 2

    .line 17
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->mIsHighlight:Z

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v1, "canEnable: press state not correct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->mIsHighlight:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public changeToAodMode()V
    .locals 3

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->mIsHighlight:Z

    .line 51
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyguardDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFingerprintUnlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintAlreadyAuthenticated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintAlreadyAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyPressMode(I)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "can\'t set change to aod mode, becuase it\'s keyguard done"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public disableInner(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->mIsHighlight:Z

    .line 41
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyPressMode(I)V

    return-void
.end method

.method public enableInner(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->mIsHighlight:Z

    .line 32
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string p1, "device is not interactive, let fp sensor to handle it."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyPressMode(I)V

    return-void
.end method

.method public isHighlight()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->mIsHighlight:Z

    return p0
.end method
