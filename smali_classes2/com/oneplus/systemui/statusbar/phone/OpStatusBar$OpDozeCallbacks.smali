.class public interface abstract Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;
.super Ljava/lang/Object;
.source "OpStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OpDozeCallbacks"
.end annotation


# virtual methods
.method public fireAlwaysOnEnableChanged(Z)V
    .locals 1

    .line 1644
    invoke-interface {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;->getCallbacks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    .line 1645
    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost$Callback;->onAlwaysOnEnableChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireFingerprintPoke()V
    .locals 1

    .line 1637
    invoke-interface {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;->getCallbacks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    .line 1638
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$Callback;->onFingerprintPoke()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireSingleTap()V
    .locals 1

    .line 1631
    invoke-interface {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;->getCallbacks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    .line 1632
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$Callback;->onSingleTap()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireThreeKeyChanged(I)V
    .locals 1

    .line 1625
    invoke-interface {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;->getCallbacks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    .line 1626
    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost$Callback;->onThreeKeyChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract getCallbacks()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/doze/DozeHost$Callback;",
            ">;"
        }
    .end annotation
.end method
