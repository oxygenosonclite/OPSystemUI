.class Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAffordanceAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyAffordanceAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 2

    .line 943
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAffordanceAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 949
    sget v0, Lcom/android/systemui/R$drawable;->ic_emergency_star:I

    const v1, 0x104037f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 0

    .line 956
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAffordanceAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/util/EmergencyAffordanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall()V

    return-void
.end method
