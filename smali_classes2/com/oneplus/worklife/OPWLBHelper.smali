.class public Lcom/oneplus/worklife/OPWLBHelper;
.super Ljava/lang/Object;
.source "OPWLBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;
    }
.end annotation


# static fields
.field private static sOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBreakMode:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mLastWifiConnected:Z

.field private mMediaNotificationKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

.field private mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mWLBModeChangeListener:Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mMediaNotificationKeys:Ljava/util/Set;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    .line 92
    iput v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mBreakMode:I

    .line 215
    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/worklife/OPWLBHelper$1;-><init>(Lcom/oneplus/worklife/OPWLBHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 233
    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper$2;

    invoke-direct {v0, p0}, Lcom/oneplus/worklife/OPWLBHelper$2;-><init>(Lcom/oneplus/worklife/OPWLBHelper;)V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 394
    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper$3;

    invoke-direct {v0, p0}, Lcom/oneplus/worklife/OPWLBHelper$3;-><init>(Lcom/oneplus/worklife/OPWLBHelper;)V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 405
    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper$4;

    iget-object v1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/worklife/OPWLBHelper$4;-><init>(Lcom/oneplus/worklife/OPWLBHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 113
    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    const-string p1, "notification"

    .line 115
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 114
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mINotificationManager:Landroid/app/INotificationManager;

    .line 116
    iget-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 117
    iget-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 118
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->readCurrentMode()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/worklife/OPWLBHelper;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/worklife/OPWLBHelper;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mBreakMode:I

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/worklife/OPWLBHelper;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->readCurrentMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/worklife/OPWLBHelper;)Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mWLBModeChangeListener:Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/worklife/OPWLBHelper;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/worklife/OPWLBHelper;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/worklife/OPWLBHelper;)Ljava/lang/Long;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->getAppStartedTimestamp()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/worklife/OPWLBHelper;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/oneplus/worklife/OPWLBHelper;->sendNotificationAddedBroadcast(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/worklife/OPWLBHelper;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->isDeviceProvisionedInSettingsDb()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/oneplus/worklife/OPWLBHelper;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->persistAppStartMillis()V

    return-void
.end method

.method private getAppStartedTimestamp()Ljava/lang/Long;
    .locals 3

    .line 130
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "app_started_timestamp"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/worklife/OPWLBHelper;
    .locals 1

    .line 105
    sget-object v0, Lcom/oneplus/worklife/OPWLBHelper;->sOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper;

    invoke-direct {v0, p0}, Lcom/oneplus/worklife/OPWLBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/worklife/OPWLBHelper;->sOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;

    .line 108
    :cond_0
    sget-object p0, Lcom/oneplus/worklife/OPWLBHelper;->sOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;

    return-object p0
.end method

.method public static isBreakModeActive(Landroid/content/Context;)Z
    .locals 2

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_wlb_break_mode_activated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 2

    .line 418
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isGAccountNotificationAllowed(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)Z
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mINotificationManager:Landroid/app/INotificationManager;

    const/4 v1, 0x0

    const-string v2, "OPSystemUIWLBHelper"

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    .line 323
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 330
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/worklife/OPWLBHelper;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v3, p2, v0, p1}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 332
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    .line 334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 335
    iget-object p2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 336
    iget p2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    and-int/2addr p1, p2

    iget p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 345
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unable to find the notification channel:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "notification manager is null"

    .line 349
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method private persistAppStartMillis()V
    .locals 4

    .line 122
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->getAppStartedTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persistAppStartMillis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSystemUIWLBHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "app_started_timestamp"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method private readCurrentMode()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_wlb_activated_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    .line 212
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_wlb_break_mode_activated"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mBreakMode:I

    return-void
.end method

.method private sendConnectedBroadcast(Z)V
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wificonnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSystemUIWLBHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.oneplus.intent.ACTION_WIFI_CONNECTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.oneplus.opwlb"

    .line 152
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "is_connected"

    .line 153
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error while sending broadcast:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private sendNotificationAddedBroadcast(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendNotificationAddedBroadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSystemUIWLBHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Package name not found"

    .line 163
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.NOTIFICATION_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.opwlb"

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package_name"

    .line 168
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "first_boot_time"

    .line 169
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 170
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getNotificationEntryListener()Lcom/android/systemui/statusbar/notification/NotificationEntryListener;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    return-object p0
.end method

.method public isApplicationBlocked(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)Z
    .locals 7

    const-string v0, "OPSystemUIWLBHelper"

    .line 256
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {p0, p1}, Lcom/oneplus/worklife/OPWLBHelper;->isMediaNotificationAllowed(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 260
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/oneplus/worklife/OPWLBHelper;->mBreakMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 264
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/worklife/OPWLBHelper;->isGAccountNotificationAllowed(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v5

    :cond_1
    const/4 p1, 0x0

    .line 270
    :try_start_0
    iget-object p2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v2, "Couldn\'t find package"

    .line 272
    invoke-static {v0, v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez p1, :cond_2

    return v3

    .line 277
    :cond_2
    iget p2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    const/4 v2, 0x2

    const-string v4, "isApplicationBlocked "

    const-string v6, " "

    if-ne p2, v2, :cond_4

    .line 278
    iget-object p2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x3f1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v2, p1, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    .line 279
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    move v3, v5

    :cond_3
    return v3

    :cond_4
    if-ne p2, v5, :cond_5

    .line 282
    iget-object p2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x3f0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v2, p1, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    .line 283
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5

    move v3, v5

    :cond_5
    :goto_1
    return v3
.end method

.method public isMediaNotificationAllowed(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 356
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 358
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mMediaNotificationKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_0
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mMediaNotificationKeys:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onAllNotificationsCleared()V
    .locals 3

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.NOTIFICATION_CLEAR_ALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.opwlb"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->getAppStartedTimestamp()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "first_boot_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 181
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public processWifiConnectivity(Z)V
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mLastWifiConnected:Z

    if-eq v0, p1, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/oneplus/worklife/OPWLBHelper;->sendConnectedBroadcast(Z)V

    .line 136
    iput-boolean p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mLastWifiConnected:Z

    :cond_0
    return-void
.end method

.method public registerChanges(Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;)V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_wlb_activated_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 189
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_wlb_break_mode_activated"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oneplus.wlb.intent.ACTION_RELOAD_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.intent.action_DISABLE_WLB_FEATURE"

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mWLBModeChangeListener:Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;

    return-void
.end method

.method public removeNotificationKey(Ljava/lang/String;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mMediaNotificationKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mMediaNotificationKeys:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public sendShutDownBroadcast()V
    .locals 2

    const-string v0, "OPSystemUIWLBHelper"

    const-string v1, "sending Shutdown event to WLB"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.opwlb"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
