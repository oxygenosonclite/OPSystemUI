.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$t2XWznriuk4XHpM7EiG9uJamHUY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/phone/PipManager;

.field public final synthetic f$1:Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager;Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$t2XWznriuk4XHpM7EiG9uJamHUY;->f$0:Lcom/android/systemui/pip/phone/PipManager;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$t2XWznriuk4XHpM7EiG9uJamHUY;->f$1:Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$t2XWznriuk4XHpM7EiG9uJamHUY;->f$0:Lcom/android/systemui/pip/phone/PipManager;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$t2XWznriuk4XHpM7EiG9uJamHUY;->f$1:Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/phone/PipManager;->lambda$setPinnedStackAnimationListener$3$PipManager(Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;)V

    return-void
.end method
