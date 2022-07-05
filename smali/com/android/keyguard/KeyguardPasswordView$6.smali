.class Lcom/android/keyguard/KeyguardPasswordView$6;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPasswordView;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$6;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onInsetsChanged()V
    .locals 2

    const-string v0, "KeyguardPasswordView"

    const-string v1, "onInsetsChanged"

    .line 927
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView$6;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    const/16 v0, 0x32

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->access$1200(Lcom/android/keyguard/KeyguardPasswordView;I)V

    return-void
.end method
