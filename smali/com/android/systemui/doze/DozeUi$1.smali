.class Lcom/android/systemui/doze/DozeUi$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DozeUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeUi;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeUi;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi$1;->this$0:Lcom/android/systemui/doze/DozeUi;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlwaysOnEnableChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi$1;->this$0:Lcom/android/systemui/doze/DozeUi;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/doze/DozeUi;->access$200(Lcom/android/systemui/doze/DozeUi;Z)V

    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi$1;->this$0:Lcom/android/systemui/doze/DozeUi;

    invoke-static {v0, p1}, Lcom/android/systemui/doze/DozeUi;->access$002(Lcom/android/systemui/doze/DozeUi;Z)Z

    .line 68
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi$1;->this$0:Lcom/android/systemui/doze/DozeUi;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeUi;->access$100(Lcom/android/systemui/doze/DozeUi;)V

    return-void
.end method
