.class public Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;
.super Lcom/android/systemui/MultiListLayout$MultiListAdapter;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    .line 1423
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Lcom/android/systemui/MultiListLayout$MultiListAdapter;-><init>()V

    return-void
.end method

.method private countItems(Z)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1426
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v2, v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1427
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v2, v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    .line 1433
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-virtual {v3, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->shouldShowAction(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1434
    invoke-interface {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->shouldBeSeparated()Z

    move-result v2

    if-ne v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private synthetic lambda$getView$0(ILandroid/view/View;)V
    .locals 0

    .line 1497
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->onClickItem(I)V

    return-void
.end method

.method private synthetic lambda$getView$1(ILandroid/view/View;)Z
    .locals 0

    .line 1499
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->onLongClickItem(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public countListItems()I
    .locals 1

    const/4 v0, 0x0

    .line 1449
    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->countItems(Z)I

    move-result p0

    return p0
.end method

.method public countSeparatedItems()I
    .locals 1

    const/4 v0, 0x1

    .line 1444
    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->countItems(Z)I

    move-result p0

    return p0
.end method

.method public getCount()I
    .locals 1

    .line 1454
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->countSeparatedItems()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->countListItems()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1470
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v2, v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1471
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v2, v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    .line 1472
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-virtual {v3, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->shouldShowAction(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-ne v1, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1481
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range of showable actions, filtered count="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", keyguardshowing="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 1484
    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", provisioned="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 1485
    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1423
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1495
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v0

    .line 1496
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p2

    .line 1497
    new-instance p3, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyAdapter$mHwNDdvU6gX4bdQUg9ucB10QA0w;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyAdapter$mHwNDdvU6gX4bdQUg9ucB10QA0w;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1498
    instance-of p3, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;

    if-eqz p3, :cond_0

    .line 1499
    new-instance p3, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyAdapter$VSUDyewgk86XHamZik1hS11jzxk;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyAdapter$VSUDyewgk86XHamZik1hS11jzxk;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 1459
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$getView$0$GlobalActionsDialog$MyAdapter(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->lambda$getView$0(ILandroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getView$1$GlobalActionsDialog$MyAdapter(ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->lambda$getView$1(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onClickItem(I)V
    .locals 1

    .line 1520
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object p1

    .line 1521
    instance-of v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;

    if-nez v0, :cond_2

    .line 1522
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz p0, :cond_0

    .line 1524
    instance-of v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerOptionsAction;

    if-nez v0, :cond_1

    .line 1525
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p0, "GlobalActionsDialog"

    const-string v0, "Action clicked while mDialog is null."

    .line 1528
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->onPress()V

    :cond_2
    return-void
.end method

.method public onLongClickItem(I)Z
    .locals 1

    .line 1506
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object p1

    .line 1507
    instance-of v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;

    if-eqz v0, :cond_1

    .line 1508
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz p0, :cond_0

    .line 1509
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p0, "GlobalActionsDialog"

    const-string v0, "Action long-clicked while mDialog is null."

    .line 1511
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :goto_0
    check-cast p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;

    invoke-interface {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;->onLongPress()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public shouldBeSeparated(I)Z
    .locals 0

    .line 1536
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->shouldBeSeparated()Z

    move-result p0

    return p0
.end method
