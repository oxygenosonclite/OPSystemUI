.class public Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;
.super Landroid/widget/BaseAdapter;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOverflowAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    .line 1617
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;I)Z
    .locals 0

    .line 1617
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->onLongClickItem(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;I)V
    .locals 0

    .line 1617
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->onClickItem(I)V

    return-void
.end method

.method private onClickItem(I)V
    .locals 1

    .line 1666
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object p1

    .line 1667
    instance-of v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;

    if-nez v0, :cond_2

    .line 1669
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz p0, :cond_0

    .line 1675
    instance-of v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerOptionsAction;

    if-nez v0, :cond_1

    .line 1676
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p0, "GlobalActionsDialog"

    const-string v0, "Action clicked while mDialog is null."

    .line 1679
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->onPress()V

    :cond_2
    return-void
.end method

.method private onLongClickItem(I)Z
    .locals 1

    .line 1653
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object p1

    .line 1654
    instance-of v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;

    if-eqz v0, :cond_1

    .line 1655
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz p0, :cond_0

    .line 1656
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p0, "GlobalActionsDialog"

    const-string v0, "Action long-clicked while mDialog is null."

    .line 1658
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :goto_0
    check-cast p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;

    invoke-interface {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;->onLongPress()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 1620
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mOverflowItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 0

    .line 1625
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mOverflowItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1617
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1635
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1637
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No overflow action found at position: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlobalActionsDialog"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1640
    :cond_0
    sget p1, Lcom/android/systemui/R$layout;->controls_more_item:I

    if-eqz p2, :cond_1

    goto :goto_0

    .line 1642
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1643
    :goto_0
    check-cast p2, Landroid/widget/TextView;

    .line 1644
    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->getMessageResId()I

    move-result p0

    if-eqz p0, :cond_2

    .line 1645
    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->getMessageResId()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1647
    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->getMessage()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p2
.end method
