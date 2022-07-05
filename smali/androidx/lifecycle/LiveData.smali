.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$AlwaysActiveObserver;,
        Landroidx/lifecycle/LiveData$ObserverWrapper;,
        Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final NOT_SET:Ljava/lang/Object;


# instance fields
.field mActiveCount:I

.field private mChangingActiveState:Z

.field private volatile mData:Ljava/lang/Object;

.field final mDataLock:Ljava/lang/Object;

.field private mDispatchInvalidated:Z

.field private mDispatchingValue:Z

.field private mObservers:Landroidx/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap<",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;>;"
        }
    .end annotation
.end field

.field volatile mPendingData:Ljava/lang/Object;

.field private final mPostValueRunnable:Ljava/lang/Runnable;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 110
    sget-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    .line 66
    new-instance v1, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v1}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    const/4 v1, 0x0

    .line 70
    iput v1, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 77
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 84
    new-instance v1, Landroidx/lifecycle/LiveData$1;

    invoke-direct {v1, p0}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v1, p0, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    .line 111
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    return-void
.end method

.method static assertMainThread(Ljava/lang/String;)V
    .locals 3

    .line 486
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 487
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;)V"
        }
    .end annotation

    .line 117
    iget-boolean v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->shouldBeActive()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    .line 126
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    return-void

    .line 129
    :cond_1
    iget v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    iget v1, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    if-lt v0, v1, :cond_2

    return-void

    .line 132
    :cond_2
    iput v1, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 133
    iget-object p1, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    iget-object p0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    invoke-interface {p1, p0}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method changeActiveCounter(I)V
    .locals 4

    .line 378
    iget v0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    add-int/2addr p1, v0

    .line 379
    iput p1, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 380
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 383
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    :goto_0
    const/4 v1, 0x0

    .line 385
    :try_start_0
    iget v2, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-eq v0, v2, :cond_5

    if-nez v0, :cond_1

    .line 386
    iget v2, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-lez v2, :cond_1

    move v2, p1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-lez v0, :cond_2

    .line 387
    iget v0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-nez v0, :cond_2

    move v0, p1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 388
    :goto_2
    iget v3, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-eqz v2, :cond_3

    .line 390
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->onActive()V

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    .line 392
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->onInactive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_3
    move v0, v3

    goto :goto_0

    .line 396
    :cond_5
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mChangingActiveState:Z

    .line 397
    throw p1
.end method

.method dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;)V"
        }
    .end annotation

    .line 138
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 139
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    return-void

    .line 142
    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    :cond_1
    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz p1, :cond_2

    .line 146
    invoke-direct {p0, p1}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 150
    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap;->iteratorWithAdditions()Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData$ObserverWrapper;

    invoke-direct {p0, v2}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 152
    iget-boolean v2, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz v2, :cond_3

    .line 157
    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-nez v1, :cond_1

    .line 158
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 322
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 323
    sget-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasActiveObservers()Z
    .locals 0

    .line 373
    iget p0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observe"

    .line 191
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 192
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    return-void

    .line 196
    :cond_0
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 197
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {p0, p2, v0}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData$ObserverWrapper;

    if-eqz p0, :cond_2

    .line 198
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 199
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add the same observer with different lifecycles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    return-void

    .line 205
    :cond_3
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public observeForever(Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observeForever"

    .line 224
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 225
    new-instance v0, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 226
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {p0, p1, v0}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData$ObserverWrapper;

    .line 227
    instance-of p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 234
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    return-void

    .line 228
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add the same observer with different lifecycles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onActive()V
    .locals 0

    return-void
.end method

.method protected onInactive()V
    .locals 0

    return-void
.end method

.method protected postValue(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    sget-object v2, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 288
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 289
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 293
    :cond_1
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object p1

    iget-object p0, p0, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroidx/arch/core/executor/ArchTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 289
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeObserver(Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "removeObserver"

    .line 244
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 245
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {p0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData$ObserverWrapper;

    if-nez p0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$ObserverWrapper;->detachObserver()V

    const/4 p1, 0x0

    .line 250
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    return-void
.end method

.method protected setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string/jumbo v0, "setValue"

    .line 306
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 307
    iget v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    .line 308
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 309
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    return-void
.end method
