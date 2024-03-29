.class public Lcom/android/systemui/qs/QSDetail;
.super Landroid/widget/LinearLayout;
.source "QSDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetail$Callback;
    }
.end annotation


# instance fields
.field private mAnimatingOpen:Z

.field private mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private mClosingDetail:Z

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mDetailContent:Landroid/view/ViewGroup;

.field protected mDetailDoneButton:Landroid/widget/TextView;

.field protected mDetailSettingsButton:Landroid/widget/TextView;

.field private final mDetailViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFooter:Landroid/view/View;

.field private mFullyExpanded:Z

.field private mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private final mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mOpenX:I

.field private mOpenY:I

.field protected mQsDetailHeader:Landroid/view/View;

.field private mQsDetailHeaderBack:Landroid/widget/ImageView;

.field protected mQsDetailHeaderProgress:Landroid/widget/ImageView;

.field private mQsDetailHeaderSwitch:Landroid/widget/Switch;

.field private mQsDetailHeaderSwitchStub:Landroid/view/ViewStub;

.field protected mQsDetailHeaderTitle:Landroid/widget/TextView;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field protected mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

.field private mScanState:Z

.field private mSwitchState:Z

.field private final mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mTriggeredExpand:Z

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 65
    sget-object p1, Lcom/android/systemui/qs/QSEvents;->INSTANCE:Lcom/android/systemui/qs/QSEvents;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSEvents;->getQsUiEventsLogger()Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 396
    new-instance p1, Lcom/android/systemui/qs/QSDetail$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetail$3;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    .line 452
    new-instance p1, Lcom/android/systemui/qs/QSDetail$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetail$4;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 474
    new-instance p1, Lcom/android/systemui/qs/QSDetail$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDetail$5;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSDetail;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mFooter:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/QSDetail;)Landroid/view/ViewGroup;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSDetail;)Landroid/widget/Switch;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSDetail;ZZ)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSDetail;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/QSDetail;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSDetail;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/QSDetail;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSDetail;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetail;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->checkPendingAnimations()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QuickStatusBarHeader;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object p0
.end method

.method private checkPendingAnimations()V
    .locals 2

    .line 392
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v1, :cond_0

    .line 393
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 392
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    return-void
.end method

.method private handleScanStateChanged(Z)V
    .locals 1

    .line 373
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 374
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    .line 375
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_1

    .line 377
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 378
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 379
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 380
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/systemui/qs/-$$Lambda$dWuG3P2xqsast1TFpf_9V5OJbdM;

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/-$$Lambda$dWuG3P2xqsast1TFpf_9V5OJbdM;-><init>(Landroid/graphics/drawable/Animatable;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 381
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 383
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 384
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    .line 385
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 386
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/systemui/qs/-$$Lambda$uWzoJtW0gRQtylxIzOBLYDei0eA;

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/-$$Lambda$uWzoJtW0gRQtylxIzOBLYDei0eA;-><init>(Landroid/graphics/drawable/Animatable;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 387
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private handleToggleStateChanged(ZZ)V
    .locals 1

    .line 363
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    .line 364
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    if-eqz v0, :cond_0

    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 368
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 369
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setupDetailFooter$0(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;Landroid/view/View;)V
    .locals 2

    .line 313
    const-class p3, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/logging/MetricsLogger;

    .line 314
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x3a1

    .line 313
    invoke-virtual {p3, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 315
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->moreSettingsEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 316
    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x0

    .line 317
    invoke-interface {p0, p2, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 320
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.oneplus.intent.ACTION_LAUNCH_WLB"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "qt_mode_change_menu"

    const-string p1, "qt_menu_settings"

    const-string p2, "1"

    const-string p3, "C22AG9UUDL"

    .line 321
    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateDetailText()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->quick_settings_done:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_more_settings:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method protected animateDetailVisibleDiff(IIZLandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    if-eqz p3, :cond_4

    .line 296
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    iput-boolean p3, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    .line 297
    iget-boolean p3, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p3, :cond_1

    goto :goto_1

    .line 301
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    .line 302
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 303
    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 304
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_2
    :goto_1
    const/high16 p3, 0x3f800000    # 1.0f

    .line 298
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 299
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetail;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {p3, p1, p2, v0, p4}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 233
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    if-eqz p4, :cond_1

    .line 236
    iget-boolean p4, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-nez p4, :cond_1

    .line 237
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 238
    const-class p4, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p4, v3}, Lcom/android/systemui/statusbar/CommandQueue;->animateExpandSettingsPanel(Ljava/lang/String;)V

    goto :goto_1

    .line 240
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 242
    :goto_1
    iput p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    .line 243
    iput p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    goto :goto_2

    .line 246
    :cond_2
    iget p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    .line 247
    iget p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    if-eqz p4, :cond_3

    .line 248
    iget-boolean p4, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    if-eqz p4, :cond_3

    .line 249
    const-class p4, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    .line 250
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 254
    :cond_3
    :goto_2
    iget-object p4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p4, :cond_4

    move p4, v0

    goto :goto_3

    :cond_4
    move p4, v1

    :goto_3
    if-eqz p1, :cond_5

    move v2, v0

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    if-eq p4, v2, :cond_6

    move p4, v0

    goto :goto_5

    :cond_6
    move p4, v1

    :goto_5
    if-nez p4, :cond_7

    .line 255
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-ne v2, p1, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_9

    .line 258
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v2

    .line 259
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {p1, v3, v4, v5}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 265
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 266
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 267
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    const-class v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 269
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->openDetailEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 270
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_quick_settings_detail:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 272
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v0, v1

    .line 270
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 273
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 274
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 275
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 261
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must return detail view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 277
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p1, :cond_a

    .line 278
    const-class p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 279
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/DetailAdapter;->closeDetailEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 281
    :cond_a
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    .line 282
    iput-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 283
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 284
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 285
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mFooter:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSDetail$Callback;->onScanStateChanged(Z)V

    :goto_6
    const/16 v0, 0x20

    .line 289
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 291
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/systemui/qs/QSDetail;->animateDetailVisibleDiff(IIZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public isClosingDetail()Z
    .locals 0

    .line 221
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return p0
.end method

.method public isShowingDetail()Z
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$setupDetailFooter$0$QSDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSDetail;->lambda$setupDetailFooter$0(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 102
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$dimen;->qs_detail_button_text_size:I

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$dimen;->qs_detail_button_text_size:I

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1020002

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    const v0, 0x102001a

    .line 125
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const v0, 0x1020019

    .line 126
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    .line 128
    sget v0, Lcom/android/systemui/R$id;->qs_detail_header:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020016

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->toggle_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitchStub:Landroid/view/ViewStub;

    .line 131
    sget v0, Lcom/android/systemui/R$id;->qs_detail_header_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    .line 136
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget v0, Lcom/android/systemui/R$drawable;->op_qs_red_detail_background:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 141
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 143
    new-instance v0, Lcom/android/systemui/qs/QSDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$1;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    .line 151
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v2, 0x1020524

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderBack:Landroid/widget/ImageView;

    .line 155
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->updateThemeColor()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 117
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderBack:Landroid/widget/ImageView;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 207
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    :cond_0
    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 2

    .line 199
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-eq v0, p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFullyExpanded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSDetail"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QuickStatusBarHeader;Landroid/view/View;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 185
    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 186
    iput-object p3, p0, Lcom/android/systemui/qs/QSDetail;->mFooter:Landroid/view/View;

    .line 187
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    .line 188
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method protected setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 3

    .line 310
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/qs/-$$Lambda$QSDetail$pzliEYo5cTSq7eIjXDX1Zngi5Yw;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/qs/-$$Lambda$QSDetail$pzliEYo5cTSq7eIjXDX1Zngi5Yw;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x7d6

    if-ne v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->wlb_qs_detail_more_setting:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const-string/jumbo v1, "wlb_settings"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 340
    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 342
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setVisibility(I)V

    .line 343
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 345
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_3

    .line 346
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitchStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    .line 348
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 349
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    .line 350
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 351
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$2;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method protected updateThemeColor()V
    .locals 4

    const/16 v0, 0x64

    .line 162
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    const/4 v0, 0x1

    .line 163
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    const/16 v1, 0xa

    .line 164
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const/16 v2, 0x9

    .line 165
    invoke-static {v2}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    .line 168
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderBack:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 176
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
