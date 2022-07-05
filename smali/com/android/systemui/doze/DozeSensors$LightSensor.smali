.class Lcom/android/systemui/doze/DozeSensors$LightSensor;
.super Ljava/lang/Object;
.source "DozeSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightSensor"
.end annotation


# instance fields
.field private final LIGHT_SENSOR_ENABLED:Z

.field mIsIgnoredFirstChanged:Z

.field mIsLowLightEnv:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mRegistered:Z

.field mRegisteredSensor:Z

.field private mSensorType:I

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 3

    .line 872
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "debug.aod_low_light_detect.enabled"

    const/4 v1, 0x1

    .line 859
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isSupportAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->LIGHT_SENSOR_ENABLED:Z

    .line 864
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegisteredSensor:Z

    .line 866
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mIsLowLightEnv:Z

    .line 869
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mIsIgnoredFirstChanged:Z

    const/4 v0, 0x5

    .line 873
    iput v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mSensorType:I

    .line 875
    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$800(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method private release()V
    .locals 2

    .line 936
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 938
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegistered:Z

    .line 939
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mIsLowLightEnv:Z

    .line 940
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegisteredSensor:Z

    if-eqz v1, :cond_1

    .line 941
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 947
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mIsIgnoredFirstChanged:Z

    .line 949
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegisteredSensor:Z

    return-void
.end method


# virtual methods
.method public check()V
    .locals 3

    .line 895
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result v0

    const-string v1, "DozeSensor.LightSensor"

    if-eqz v0, :cond_0

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegistered = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegistered:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sensor registed = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegisteredSensor:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegistered:Z

    if-eqz v0, :cond_1

    return-void

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mSensorType:I

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_3

    .line 901
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "No sensor found"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    .line 905
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegistered:Z

    return-void
.end method

.method public isListened()Z
    .locals 0

    .line 954
    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegistered:Z

    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 915
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mIsLowLightEnv:Z

    .line 916
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 917
    :goto_0
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result v3

    const-string v4, "DozeSensor.LightSensor"

    if-eqz v3, :cond_1

    .line 918
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Light values= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", pre= "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", cur= "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eq v1, v0, :cond_3

    .line 922
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mIsLowLightEnv:Z

    .line 923
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$800(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 925
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mIsLowLightEnv:Z

    invoke-virtual {p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyEnvironmentLightChanged(Z)V

    goto :goto_1

    :cond_2
    const-string p1, "can\'t get monitor object"

    .line 927
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 932
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegisteredSensor:Z

    return-void
.end method

.method public receiveTimeChanged()V
    .locals 8

    .line 964
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 965
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    .line 966
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTimeChanged: registeredSensor= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegisteredSensor:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", interactive= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", screenOn= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ignoreFirstChanged= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mIsIgnoredFirstChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DozeSensor.LightSensor"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 971
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mIsIgnoredFirstChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 972
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mIsIgnoredFirstChanged:Z

    return-void

    .line 976
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mRegisteredSensor:Z

    .line 978
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->mSensorType:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 979
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 980
    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v7

    move-object v3, p0

    .line 979
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    :cond_2
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    .line 880
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$LightSensor;->LIGHT_SENSOR_ENABLED:Z

    const-string v1, "DozeSensor.LightSensor"

    if-eqz v0, :cond_2

    .line 881
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListening = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 885
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$LightSensor;->check()V

    goto :goto_0

    .line 887
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$LightSensor;->release()V

    goto :goto_0

    :cond_2
    const-string p0, "disable light sensor"

    .line 890
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
