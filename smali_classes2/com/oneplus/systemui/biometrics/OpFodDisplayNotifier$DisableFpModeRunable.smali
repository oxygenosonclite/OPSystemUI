.class Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DisableFpModeRunable;
.super Ljava/lang/Object;
.source "OpFodDisplayNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableFpModeRunable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DisableFpModeRunable;->this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "OpFodDisplayNotifier"

    :try_start_0
    const-string v1, "force disable fp mode"

    .line 294
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DisableFpModeRunable;->this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->access$400(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)Lcom/oneplus/core/oimc/OIMCServiceManager;

    move-result-object p0

    const-string v1, "FingerPrintMode"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postOnBackgroundThread Exception e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
