.class Lcom/android/keyguard/KeyguardPasswordView$OpPasswordImeListener;
.super Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;
.source "KeyguardPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpPasswordImeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPasswordView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardPasswordView;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$OpPasswordImeListener;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardPasswordView;Lcom/android/keyguard/KeyguardPasswordView$1;)V
    .locals 0

    .line 911
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPasswordView$OpPasswordImeListener;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    return-void
.end method


# virtual methods
.method public onImeVisibilityChanged(ZI)V
    .locals 2

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImeVisibilityChanged: imeVisible= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", imeHeight= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mImeVisible:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPasswordView$OpPasswordImeListener;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    .line 915
    invoke-static {p2}, Lcom/android/keyguard/KeyguardPasswordView;->access$1000(Lcom/android/keyguard/KeyguardPasswordView;)Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardPasswordView"

    .line 914
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPasswordView$OpPasswordImeListener;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p2, p1}, Lcom/android/keyguard/KeyguardPasswordView;->access$1002(Lcom/android/keyguard/KeyguardPasswordView;Z)Z

    .line 917
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$OpPasswordImeListener;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardPasswordView;->access$500(Lcom/android/keyguard/KeyguardPasswordView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 918
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$OpPasswordImeListener;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardPasswordView;->access$1100(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 919
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView$OpPasswordImeListener;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    const/16 p1, 0x32

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardPasswordView;->access$1200(Lcom/android/keyguard/KeyguardPasswordView;I)V

    :cond_0
    return-void
.end method
