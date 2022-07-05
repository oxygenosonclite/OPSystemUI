.class Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;
.super Landroid/os/Handler;
.source "WLBSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/WLBSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private getTriggerName([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 553
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    .line 554
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 476
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 548
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_6

    .line 478
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "configured"

    .line 481
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 482
    invoke-static {}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isConfigured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "trigger_values_work"

    .line 486
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "trigger_values_life"

    .line 487
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 488
    invoke-static {}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " trigger values work "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " life "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getModes()Ljava/util/ArrayList;

    move-result-object v2

    .line 491
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    if-eqz v0, :cond_3

    .line 492
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->getMode()I

    move-result v7

    if-ne v7, v6, :cond_3

    .line 493
    aget-boolean v4, v0, v5

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setConfigured(Z)V

    .line 494
    aget-boolean v4, v0, v5

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 495
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->getTriggerName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setTriggerName(Ljava/lang/String;)V

    goto :goto_1

    .line 497
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$000(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Landroid/content/Context;

    move-result-object v4

    sget v7, Lcom/android/systemui/R$string;->qs_panel_set_up:I

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setTriggerName(Ljava/lang/String;)V

    .line 499
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result v4

    if-ne v4, v6, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setActive(Z)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_6

    .line 500
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->getMode()I

    move-result v7

    if-ne v7, v4, :cond_6

    .line 501
    aget-boolean v7, v0, v6

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setConfigured(Z)V

    .line 502
    aget-boolean v7, v0, v6

    if-eqz v7, :cond_4

    if-eqz p1, :cond_4

    .line 503
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->getTriggerName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setTriggerName(Ljava/lang/String;)V

    goto :goto_2

    .line 505
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$000(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$string;->qs_panel_set_up:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setTriggerName(Ljava/lang/String;)V

    .line 507
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result v7

    if-ne v7, v4, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setActive(Z)V

    goto :goto_0

    .line 509
    :cond_6
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setConfigured(Z)V

    .line 510
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$000(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->wlb_qs_detail_break_mode_desc:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setTriggerName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 514
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->doUnbindService()V

    const/4 v0, 0x3

    new-array v2, v0, [Z

    .line 516
    fill-array-data v2, :array_0

    .line 517
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result v3

    if-ne v3, v6, :cond_8

    if-eqz v1, :cond_9

    move p1, v5

    :goto_3
    if-ge p1, v0, :cond_9

    .line 520
    aget-object v3, v1, p1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v6

    aput-boolean v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 523
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result v1

    if-ne v1, v4, :cond_9

    if-eqz p1, :cond_9

    move v1, v5

    :goto_4
    if-ge v1, v0, :cond_9

    .line 526
    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v6

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 531
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$700(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v5, p1, :cond_b

    .line 532
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$700(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;

    if-eqz p1, :cond_a

    .line 538
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 542
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$800(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 543
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$800(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$IncomingHandler;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;->onWLBModeChanged(I)V

    :cond_c
    :goto_6
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
