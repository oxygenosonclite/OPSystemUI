.class final Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CreationAndCompletionThread"
.end annotation


# instance fields
.field public mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

.field final synthetic this$0:Lcom/android/systemui/media/NotificationPlayer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 83
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 88
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/media/NotificationPlayer;->access$002(Lcom/android/systemui/media/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v0, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    const-string v1, "audio"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 98
    :try_start_1
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 99
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    if-nez v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v5, 0x5

    .line 101
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const/4 v5, 0x4

    .line 102
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 103
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 106
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v4, v4, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 107
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-boolean v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->looping:Z

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 108
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 109
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 110
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 111
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    .line 112
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 113
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result v3

    if-nez v3, :cond_3

    .line 114
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$100(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 115
    :try_start_3
    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v4}, Lcom/android/systemui/media/NotificationPlayer;->access$200(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x3

    .line 118
    iget-object v5, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-boolean v5, v5, Lcom/android/systemui/media/NotificationPlayer$Command;->looping:Z

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 121
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v4, v6}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/media/NotificationPlayer;->access$302(Lcom/android/systemui/media/NotificationPlayer;I)I

    .line 123
    iget-object v5, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v5, v5, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v5, v4, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I

    .line 125
    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v4, v0}, Lcom/android/systemui/media/NotificationPlayer;->access$202(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 129
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 140
    :cond_3
    :goto_0
    :try_start_5
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$300(Lcom/android/systemui/media/NotificationPlayer;)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 142
    :try_start_6
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$400(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception while sleeping to sync notification playback with ducking"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v0, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    invoke-static {v0, v3}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isMutedByCallBlocker(Ljava/lang/String;Landroid/media/AudioAttributes;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$400(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mute here!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 149
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 152
    :cond_4
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_5

    .line 156
    :try_start_7
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    goto :goto_3

    :cond_5
    move-object v1, v2

    .line 159
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v2}, Lcom/android/systemui/media/NotificationPlayer;->access$400(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error loading sound for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v4, v4, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$500(Lcom/android/systemui/media/NotificationPlayer;)V

    move-object v2, v1

    .line 164
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$600(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 165
    :try_start_8
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->access$700(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 166
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v3, v2}, Lcom/android/systemui/media/NotificationPlayer;->access$702(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 167
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_6

    .line 170
    :try_start_9
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 172
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 173
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 174
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_1
    move-exception v1

    .line 167
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v1

    :catchall_2
    move-exception v0

    .line 173
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0
.end method