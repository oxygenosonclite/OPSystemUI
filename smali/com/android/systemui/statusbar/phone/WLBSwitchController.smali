.class public Lcom/android/systemui/statusbar/phone/WLBSwitchController;
.super Ljava/lang/Object;
.source "WLBSwitchController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;,
        Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;,
        Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;,
        Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBSwitchCallbacks;,
        Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WLBSwitchController"


# instance fields
.field private isWLBDetailClosed:Z

.field private final mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCallBacks:Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mDetailViewCallBack:Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

.field private mHeaderExpansion:F

.field private mIsBound:Z

.field private mIsFullyExpanded:Z

.field private final mMessenger:Landroid/os/Messenger;

.field private mModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousExpansion:F

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mService:Landroid/os/Messenger;

.field private mSwitchCallbacks:Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBSwitchCallbacks;

.field public final wlbDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mPreviousExpansion:F

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mService:Landroid/os/Messenger;

    .line 82
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;-><init>(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mMessenger:Landroid/os/Messenger;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mModes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mCurrentMode:I

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mAdapters:Ljava/util/ArrayList;

    const/high16 v1, -0x40800000    # -1.0f

    .line 88
    iput v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mHeaderExpansion:F

    const/4 v1, 0x1

    .line 89
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->isWLBDetailClosed:Z

    .line 173
    new-instance v1, Lcom/android/systemui/statusbar/phone/WLBSwitchController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$1;-><init>(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->wlbDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 296
    new-instance v1, Lcom/android/systemui/statusbar/phone/WLBSwitchController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$2;-><init>(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mConnection:Landroid/content/ServiceConnection;

    .line 93
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "oneplus_wlb_activated_mode"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setCurrentMode(I)V

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->processModes()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mIsFullyExpanded:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Landroid/os/Messenger;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mService:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/WLBSwitchController;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/WLBSwitchController;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mIsBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Landroid/os/Messenger;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/WLBSwitchController;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->addAdapter(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mAdapters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mDetailViewCallBack:Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

    return-object p0
.end method

.method private addAdapter(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;",
            ">;)V"
        }
    .end annotation

    .line 229
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isNotAdminUser()Z
    .locals 4

    .line 285
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 286
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 287
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 288
    sget-object p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processModes()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_8

    .line 100
    new-instance v2, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;-><init>()V

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    const/4 v4, 0x2

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_0

    goto/16 :goto_6

    .line 117
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->wlb_qs_detail_break_mode:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setModeName(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setMode(I)V

    .line 119
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$drawable;->qs_panel_off_icon:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setPicture(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setActive(Z)V

    goto/16 :goto_6

    .line 110
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->wlb_qs_detail_life_mode:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setModeName(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setMode(I)V

    .line 112
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$drawable;->qs_panel_life_icon:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setPicture(Landroid/graphics/drawable/Drawable;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result v5

    if-ne v5, v4, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setActive(Z)V

    .line 114
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "life_configured"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_4

    goto :goto_3

    :cond_4
    move v3, v0

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setConfigured(Z)V

    goto :goto_6

    .line 103
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->wlb_qs_detail_work_mode:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setModeName(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setMode(I)V

    .line 105
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$drawable;->qs_panel_work_icon:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setPicture(Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result v4

    if-ne v4, v3, :cond_6

    move v4, v3

    goto :goto_4

    :cond_6
    move v4, v0

    :goto_4
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setActive(Z)V

    .line 107
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "work_configured"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_7

    goto :goto_5

    :cond_7
    move v3, v0

    :goto_5
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setConfigured(Z)V

    .line 126
    :goto_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mModes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method doBindService()V
    .locals 3

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.WLB_BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.opwlb"

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mCurrentMode:I

    const-string v2, "extra_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method doUnbindService()V
    .locals 2

    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mIsBound:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 248
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 250
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mIsBound:Z

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getCurrentMode()I
    .locals 0

    .line 157
    iget p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mCurrentMode:I

    return p0
.end method

.method public getModes()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mModes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hideStatusBarIcon()V
    .locals 3

    .line 278
    sget-object v0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideStatusBarIcon: Callbacks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mCallBacks:Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mCallBacks:Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

    if-eqz p0, :cond_0

    .line 280
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;->hideStatusBarIcon()V

    :cond_0
    return-void
.end method

.method public onWLBModeChanged()V
    .locals 3

    .line 265
    sget-object v0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWLBModeChanged WLB controller mCallBacks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mCallBacks:Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDetailViewCallBack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mDetailViewCallBack:Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->isNotAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mCallBacks:Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;->onWLBModeChanged(I)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mDetailViewCallBack:Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;->onWLBModeChanged(I)V

    :cond_2
    return-void
.end method

.method public setAdminUser(Z)V
    .locals 0

    return-void
.end method

.method public setCallBacks(Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mCallBacks:Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

    return-void
.end method

.method public setCurrentMode(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mCurrentMode:I

    return-void
.end method

.method public setDetailViewCallBack(Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mDetailViewCallBack:Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

    return-void
.end method

.method public setIsFullyExpanded(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mIsFullyExpanded:Z

    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-void
.end method

.method public setSwitchCallbacks(Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBSwitchCallbacks;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mSwitchCallbacks:Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBSwitchCallbacks;

    return-void
.end method

.method public updateExpansionState(F)V
    .locals 1

    .line 331
    iget v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mPreviousExpansion:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mPreviousExpansion:F

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mDetailViewCallBack:Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

    if-eqz v0, :cond_1

    .line 336
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;->onExpansionChanged(F)V

    .line 338
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mSwitchCallbacks:Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBSwitchCallbacks;

    if-eqz p0, :cond_2

    .line 339
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBSwitchCallbacks;->updateSwitchState()V

    :cond_2
    return-void
.end method

.method public updateHeaderExpansion(F)V
    .locals 4

    .line 344
    iget v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mHeaderExpansion:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 347
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mHeaderExpansion:F

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_1

    .line 348
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->isWLBDetailClosed:Z

    if-nez p1, :cond_1

    .line 349
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 354
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->isWLBDetailClosed:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 357
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->isWLBDetailClosed:Z

    :cond_2
    :goto_0
    return-void
.end method
