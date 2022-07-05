.class abstract Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;
.super Ljava/lang/Object;
.source "DozeSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CustomProximityCheck"
.end annotation


# instance fields
.field private mFinished:Z

.field private mMaxRange:F

.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 1

    .line 830
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 833
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->onProximityResult(I)V

    return-void
.end method

.method private synthetic lambda$onSensorChanged$0(Z)V
    .locals 0

    .line 816
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeSensors;->access$900(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private release()V
    .locals 2

    .line 842
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregister pocket Sensor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeSensor.CustomProximityCheck"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 847
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mRegistered:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public check()V
    .locals 8

    .line 774
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mFinished:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    const v1, 0x1fa2651

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    const-string v0, "DozeSensor.CustomProximityCheck"

    if-nez v4, :cond_2

    .line 779
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "No sensor found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 780
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->finishWithResult(I)V

    return-void

    .line 783
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register pocket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mMaxRange:F

    .line 785
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 786
    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v7

    move-object v3, p0

    .line 785
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 787
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 788
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mRegistered:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$onSensorChanged$0$DozeSensors$CustomProximityCheck(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->lambda$onSensorChanged$0(Z)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public abstract onProximityResult(I)V
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 801
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const-string v1, "DozeSensor.CustomProximityCheck"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 802
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Event has no values!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->finishWithResult(I)V

    goto :goto_1

    .line 805
    :cond_1
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event: value="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " max="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->mMaxRange:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_3

    move v2, v0

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    .line 809
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->finishWithResult(I)V

    .line 812
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$800(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 814
    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 815
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$CustomProximityCheck$9pIc7EqJWnwMe91o9UTr1WLuvZE;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$CustomProximityCheck$9pIc7EqJWnwMe91o9UTr1WLuvZE;-><init>(Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public run()V
    .locals 2

    .line 825
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DozeSensor.CustomProximityCheck"

    const-string v1, "No event received before timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 826
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->finishWithResult(I)V

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->check()V

    goto :goto_0

    .line 795
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$CustomProximityCheck;->release()V

    :goto_0
    return-void
.end method
