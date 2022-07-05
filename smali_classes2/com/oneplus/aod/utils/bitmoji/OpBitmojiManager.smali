.class public Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;
.super Lcom/android/systemui/SystemUI;
.source "OpBitmojiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;
    }
.end annotation


# static fields
.field private static final CASUAL_TRIGGERS_ID:[Ljava/lang/String;

.field private static final USER_TRIGGERS_ID:[Ljava/lang/String;


# instance fields
.field private mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTriggers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "time"

    const-string v1, "date"

    const-string v2, "weather"

    .line 45
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->CASUAL_TRIGGERS_ID:[Ljava/lang/String;

    const-string v0, "gaming"

    const-string v1, "music"

    const-string v2, "video"

    const-string v3, "camera"

    const-string v4, "messaging"

    .line 51
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->USER_TRIGGERS_ID:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    .line 294
    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$1;-><init>(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 75
    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->onUserUnlocked()V

    return-void
.end method

.method private canKickOut(Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;)Z
    .locals 0

    .line 277
    instance-of p0, p1, Lcom/oneplus/aod/utils/bitmoji/triggers/MusicTrigger;

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    instance-of p0, p2, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    if-eqz p0, :cond_0

    .line 280
    check-cast p2, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->isActiveInner()Z

    move-result p0

    xor-int/2addr p0, p1

    return p0

    :cond_0
    return p1
.end method

.method private computeCurrentTrigger(Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;)V
    .locals 7

    .line 353
    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->CASUAL_TRIGGERS_ID:[Ljava/lang/String;

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->USER_TRIGGERS_ID:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, "OpBitmojiManager"

    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 354
    iget-object v6, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-eqz v5, :cond_1

    .line 355
    invoke-virtual {v5}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->isActive()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eq v5, p1, :cond_1

    .line 357
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "some user trigger event still active"

    .line 358
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    iput-object v5, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    :cond_2
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 369
    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 370
    invoke-virtual {p1}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .line 371
    invoke-virtual {p1}, Ljava/util/Date;->getSeconds()I

    move-result p1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr v1, p1

    .line 375
    sget p1, Lcom/oneplus/keyguard/clock/OpClockCtrl;->TIME_CHANGED_INTERVAL:I

    div-int p1, v1, p1

    .line 376
    array-length v2, v0

    .line 377
    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    const-string v5, "weather"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v3}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->isActive()Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, -0x1

    .line 380
    :cond_3
    sget v3, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->IMAGES_PER_SET:I

    div-int v3, p1, v3

    rem-int/2addr v3, v2

    .line 383
    iget-object v5, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    aget-object v0, v0, v3

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    .line 384
    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->prepare()V

    .line 386
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_4

    .line 387
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "computeCurrentTrigger: current= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", playCount= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", casualListSize= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", triggerIndex= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private synthetic lambda$onImagePackUpdate$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {p0, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->onImagePackUpdate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onUserUnlocked()V
    .locals 1

    .line 287
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "OpBitmojiManager"

    const-string v0, "onUserUnlocked"

    .line 288
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->registerBitmojiObserver()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    if-eqz p3, :cond_0

    .line 319
    array-length v0, p3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 320
    const-class v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 321
    aget-object v0, p3, v0

    .line 322
    array-length v1, p3

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v1, p3}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->dynamicConfig([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string v1, "OpBitmojiManager:"

    .line 328
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "version: 1"

    .line 329
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "CurrentTrigger:"

    .line 330
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-eqz v1, :cond_2

    .line 332
    invoke-virtual {v1, p1, p2, p3}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 335
    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "-----------------------------------------------"

    if-eqz v1, :cond_3

    .line 336
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trigger: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 341
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "PRINT ALL TRIGGERS:"

    .line 342
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 345
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public getAodImage()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    const-string v1, "OpBitmojiManager"

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getImagePath()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "getAodImage: drawable is null"

    .line 151
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "getAodImage: currentTrigger is null"

    .line 154
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->op_bitmoji_default:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public synthetic lambda$onImagePackUpdate$0$OpBitmojiManager(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->lambda$onImagePackUpdate$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onBootCompleted()V
    .locals 1

    .line 105
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "OpBitmojiManager"

    const-string v0, "onBootCompleted"

    .line 106
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->registerBitmojiObserver()V

    return-void
.end method

.method public onImagePackUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 192
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImagePackUpdate: triggerId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBitmojiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/-$$Lambda$OpBitmojiManager$A4JjA6S5KQ72hPUIfPUSYu0OJXM;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/-$$Lambda$OpBitmojiManager$A4JjA6S5KQ72hPUIfPUSYu0OJXM;-><init>(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTriggerChanged(Ljava/lang/String;Z)V
    .locals 3

    .line 204
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTriggerChanged: triggerId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", added= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBitmojiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    .line 210
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-eqz p1, :cond_10

    if-nez p2, :cond_3

    .line 213
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-eq p1, v1, :cond_2

    .line 214
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_1

    const-string p0, "OpBitmojiManager"

    const-string p1, "onTriggerChanged: not currentTrigger, do nothing"

    .line 215
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 219
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->computeCurrentTrigger(Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-ne p1, v1, :cond_5

    .line 223
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_4

    const-string p0, "OpBitmojiManager"

    const-string p1, "onTriggerChanged: same as current, do nothing"

    .line 224
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .line 227
    :cond_5
    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getPriority()I

    move-result v1

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getPriority()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 228
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_6

    const-string p0, "OpBitmojiManager"

    const-string p2, "onTriggerChanged: priority is not bigger than old one"

    .line 229
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_6
    instance-of p0, p1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    if-eqz p0, :cond_7

    .line 232
    check-cast p1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->reset()V

    :cond_7
    return-void

    .line 236
    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->canKickOut(Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 237
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_9

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onTriggerChanged: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " can not be kicked out by "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpBitmojiManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    .line 244
    :cond_a
    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    .line 245
    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->prepare()V

    .line 248
    :goto_0
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-eq v0, p1, :cond_10

    if-eqz p2, :cond_d

    .line 251
    instance-of p1, p1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    if-eqz p1, :cond_c

    .line 254
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    .line 255
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-eq p2, v0, :cond_b

    instance-of v0, p2, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    if-eqz v0, :cond_b

    .line 256
    check-cast p2, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->reset()V

    goto :goto_1

    .line 259
    :cond_c
    instance-of p1, v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    if-eqz p1, :cond_d

    .line 261
    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->reset()V

    .line 264
    :cond_d
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter p1

    .line 265
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;

    if-eqz p2, :cond_e

    .line 267
    invoke-interface {p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;->onTriggerChanged()V

    goto :goto_2

    .line 270
    :cond_f
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_10
    :goto_3
    return-void
.end method

.method public refresh()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->complete()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    instance-of v1, v0, Lcom/oneplus/aod/utils/bitmoji/triggers/TimeTrigger;

    const-string v2, "OpBitmojiManager"

    if-eqz v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    goto :goto_0

    .line 163
    :cond_0
    instance-of v0, v0, Lcom/oneplus/aod/utils/bitmoji/triggers/DateTrigger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    const-string v1, "weather"

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    .line 168
    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getPriority()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 169
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    const-string v0, "refresh: currentTrigger priority is bigger than low, can not automatically switch to other triggers"

    .line 170
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    instance-of v1, v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    .line 174
    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->enableDelay()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->getTriggerId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->onTriggerChanged(Ljava/lang/String;Z)V

    goto :goto_0

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    .line 182
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->prepare()V

    .line 184
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh: complete! switch to= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public removeListener(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public start()V
    .locals 3

    .line 80
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "Trigger:check"

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 86
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/TimeTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/TimeTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/DateTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/DateTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "weather"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/MusicTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/MusicTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "music"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "video"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "gaming"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "camera"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "messaging"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->computeCurrentTrigger(Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;)V

    .line 97
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 99
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->startPackageListening()V

    return-void
.end method
