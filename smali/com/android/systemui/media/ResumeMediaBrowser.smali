.class public Lcom/android/systemui/media/ResumeMediaBrowser;
.super Ljava/lang/Object;
.source "ResumeMediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/ResumeMediaBrowser$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

.field private mComponentName:Landroid/content/ComponentName;

.field private final mConnectionCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

.field private final mContext:Landroid/content/Context;

.field private mMediaBrowser:Landroid/media/browse/MediaBrowser;

.field private final mSubscriptionCallback:Landroid/media/browse/MediaBrowser$SubscriptionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/ResumeMediaBrowser$Callback;Landroid/content/ComponentName;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/systemui/media/ResumeMediaBrowser$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/ResumeMediaBrowser$1;-><init>(Lcom/android/systemui/media/ResumeMediaBrowser;)V

    iput-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mSubscriptionCallback:Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .line 122
    new-instance v0, Lcom/android/systemui/media/ResumeMediaBrowser$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/ResumeMediaBrowser$2;-><init>(Lcom/android/systemui/media/ResumeMediaBrowser;)V

    iput-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mConnectionCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    .line 61
    iput-object p3, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/content/ComponentName;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/media/browse/MediaBrowser;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/media/ResumeMediaBrowser;)Lcom/android/systemui/media/ResumeMediaBrowser$Callback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/media/browse/MediaBrowser$SubscriptionCallback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mSubscriptionCallback:Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    :cond_0
    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    return-void
.end method

.method public findRecentMedia()V
    .locals 5

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResumeMediaBrowser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.service.media.extra.RECENT"

    const/4 v2, 0x1

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    new-instance v1, Landroid/media/browse/MediaBrowser;

    iget-object v2, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mConnectionCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    .line 81
    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->connect()V

    return-void
.end method

.method public getAppIntent()Landroid/app/PendingIntent;
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 233
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public restart()V
    .locals 5

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.service.media.extra.RECENT"

    const/4 v2, 0x1

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    new-instance v1, Landroid/media/browse/MediaBrowser;

    iget-object v2, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    new-instance v4, Lcom/android/systemui/media/ResumeMediaBrowser$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/media/ResumeMediaBrowser$3;-><init>(Lcom/android/systemui/media/ResumeMediaBrowser;)V

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    .line 212
    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->connect()V

    return-void
.end method

.method public testConnection()V
    .locals 5

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    .line 244
    new-instance v0, Lcom/android/systemui/media/ResumeMediaBrowser$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/ResumeMediaBrowser$4;-><init>(Lcom/android/systemui/media/ResumeMediaBrowser;)V

    .line 280
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.service.media.extra.RECENT"

    const/4 v3, 0x1

    .line 281
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    new-instance v2, Landroid/media/browse/MediaBrowser;

    iget-object v3, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    .line 286
    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser;->connect()V

    return-void
.end method
