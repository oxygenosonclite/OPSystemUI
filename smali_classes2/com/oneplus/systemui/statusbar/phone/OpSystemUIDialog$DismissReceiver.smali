.class Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpSystemUIDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DismissReceiver"
.end annotation


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mDialog:Landroid/app/Dialog;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;->mDialog:Landroid/app/Dialog;

    .line 173
    const-class p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method register()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    sget-object v1, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;->mRegistered:Z

    return-void
.end method

.method unregister()V
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;->mRegistered:Z

    :cond_0
    return-void
.end method
