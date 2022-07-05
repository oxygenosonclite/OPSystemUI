.class public Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;
.super Ljava/lang/Object;
.source "OpWakingUpScrimController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsAnimationStarted:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mRequestShow:Z

.field private mScrimAnimator:Landroid/animation/Animator;

.field private mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

.field private mUIHandler:Landroid/os/Handler;

.field private mUIHandlerThread:Landroid/os/HandlerThread;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 93
    sget v1, Lcom/android/systemui/R$layout;->op_wakingup_scrim_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpWakingUpScrim;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WakingUpScrimUI"

    const/4 v2, -0x8

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandlerThread:Landroid/os/HandlerThread;

    .line 96
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->initHandler(Landroid/os/Looper;)V

    const-string v0, "window"

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mWindowManager:Landroid/view/WindowManager;

    .line 100
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->handleAddToWindow(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->handleRemoveFromWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->handleFingerprintAuthenticated()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)Landroid/animation/Animator;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->selfRemoveFromWindow(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mIsAnimationStarted:Z

    return p1
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 335
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v0, 0x903

    .line 338
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x10

    .line 346
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v0, 0x3

    .line 347
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v1, 0x518

    .line 349
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x2

    .line 350
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    .line 351
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 352
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 353
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x1

    .line 354
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-string v1, "OpWakingUpScrim"

    .line 355
    invoke-virtual {p0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 356
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object p0
.end method

.method private handleAddToWindow(Z)V
    .locals 3

    .line 130
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    const-string v1, "OpWakingUpScrimController"

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAddToWindow:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " justResetState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mRequestShow: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mRequestShow:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mRequestShow:Z

    if-eqz p1, :cond_1

    .line 144
    :try_start_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addView occur exception. isAttachedToWindow= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    .line 147
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mIsAnimationStarted:Z

    .line 151
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x700

    .line 157
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v1}, Lcom/oneplus/aod/OpWakingUpScrim;->reset()V

    .line 158
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 161
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_1

    .line 164
    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpWakingUpScrim;->reset()V

    :goto_1
    return-void
.end method

.method private handleFingerprintAuthenticated()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->show(I)V

    :cond_0
    return-void
.end method

.method private handleRemoveFromWindow()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    const-string v1, "OpWakingUpScrimController"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "animation still play, remove window until animation end"

    .line 299
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    if-nez v0, :cond_1

    const-string p0, "scrim view is null"

    .line 305
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 310
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoveFromWindow, attached: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestShow: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mRequestShow:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mRequestShow:Z

    if-nez v0, :cond_3

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintAlreadyAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/WindowInsetsController;->show(I)V

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeViewImmediate occur exception. isAttachedToWindow= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 326
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private selfRemoveFromWindow(Z)V
    .locals 1

    const/16 v0, 0xc8

    .line 280
    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->selfRemoveFromWindow(ZI)V

    return-void
.end method

.method private selfRemoveFromWindow(ZI)V
    .locals 2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selfRemoveFromWindow, remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpWakingUpScrimController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_0

    .line 291
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 293
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public handleStartAnimation(ZZ)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    const-string v1, "OpWakingUpScrimController"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "animation running"

    .line 207
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mIsAnimationStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p1, :cond_2

    .line 216
    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {p2}, Lcom/oneplus/aod/OpWakingUpScrim;->getDisappearAnimationWithDelay()Landroid/animation/AnimatorSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v0, p2}, Lcom/oneplus/aod/OpWakingUpScrim;->getDisappearAnimationWithoutDelay(Z)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    .line 221
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleStartAnimation withDelay:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    new-instance p2, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;

    invoke-direct {p2, p0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public initHandler(Landroid/os/Looper;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$1;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 1

    .line 170
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public prepare()V
    .locals 3

    .line 105
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpWakingUpScrimController"

    const-string v1, "AddToWindow"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mRequestShow:Z

    .line 112
    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mIsAnimationStarted:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$2;

    invoke-direct {v2, p0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$2;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 124
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeFromWindow(Z)V
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeFromWindow, remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpWakingUpScrimController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mRequestShow:Z

    .line 261
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->selfRemoveFromWindow(Z)V

    return-void
.end method

.method public removeFromWindowForCameraLaunched()V
    .locals 5

    const-string v0, "OpWakingUpScrimController"

    const-string v1, "removeFromWindowForCameraLaunched"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 267
    iput-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mRequestShow:Z

    .line 271
    sget-boolean v2, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    const/16 v3, 0x145

    if-eqz v2, :cond_0

    const-string v2, "debug.remove.window.camera.launched"

    .line 272
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFromWindowForCameraLaunched, DEBUG, delay:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    invoke-direct {p0, v1, v3}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->selfRemoveFromWindow(ZI)V

    return-void
.end method

.method public startAnimation(ZZ)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const-string v1, "OpWakingUpScrimController"

    if-nez v0, :cond_0

    const-string p0, "stop startAnimation window desn\'t attached"

    .line 182
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 186
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mIsAnimationStarted:Z

    if-eqz v0, :cond_1

    const-string p0, "stop startAnimation since it\'s started"

    .line 187
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 191
    :cond_1
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnimation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mRequestShow:Z

    .line 197
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 198
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 199
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 200
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 202
    iput-boolean p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mIsAnimationStarted:Z

    return-void
.end method
