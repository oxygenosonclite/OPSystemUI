.class Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;
.super Ljava/lang/Object;
.source "VolumeDialogControllerImpl.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;->this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onChanged$0(Ljava/lang/Integer;)V
    .locals 3

    .line 1079
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1080
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;->this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->access$400(Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;)Lcom/android/systemui/util/RingerModeLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/RingerModeLiveData;->getInitialSticky()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;->this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$2200(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v0

    iput p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 1083
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    .line 1084
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange internal_ringer_mode rm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    invoke-static {p1}, Lcom/android/systemui/volume/Util;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1084
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;->this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$2400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1088
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;->this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$2200(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic lambda$onChanged$0$VolumeDialogControllerImpl$RingerModeObservers$2(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;->lambda$onChanged$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public onChanged(Ljava/lang/Integer;)V
    .locals 2

    .line 1078
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;->this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$700(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$RingerModeObservers$2$2YUQzphxT5pK7JvSmIyMJf-BaPo;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$RingerModeObservers$2$2YUQzphxT5pK7JvSmIyMJf-BaPo;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1075
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
