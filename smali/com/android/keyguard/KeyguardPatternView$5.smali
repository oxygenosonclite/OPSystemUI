.class Lcom/android/keyguard/KeyguardPatternView$5;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView;->doStartAppearAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$5;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 879
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView$5;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3200(Lcom/android/keyguard/KeyguardPatternView;Z)V

    return-void
.end method
