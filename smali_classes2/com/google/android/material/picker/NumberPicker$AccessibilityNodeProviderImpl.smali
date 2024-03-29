.class Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/google/android/material/picker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/NumberPicker;)V
    .locals 0

    .line 2383
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2392
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2394
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 p1, -0x80000000

    .line 2396
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .line 2761
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2762
    const-class v1, Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2763
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2764
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2766
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2767
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2769
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2770
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2771
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2774
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2775
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2776
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2780
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2781
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2782
    invoke-static {v1, p1}, Lcom/google/android/material/internal/ViewUtils;->scaleRect(Landroid/graphics/Rect;F)V

    .line 2783
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2785
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p2, v1}, Lcom/google/android/material/internal/ViewUtils;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2788
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2789
    iget-object p3, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 p3, 0x0

    .line 2790
    aget p3, p2, p3

    aget p2, p2, v2

    invoke-virtual {v1, p3, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 2791
    invoke-static {v1, p1}, Lcom/google/android/material/internal/ViewUtils;->scaleRect(Landroid/graphics/Rect;F)V

    .line 2792
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2794
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    const/16 p1, 0x40

    .line 2795
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2797
    :cond_2
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p1, p2, :cond_3

    const/16 p1, 0x80

    .line 2798
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2800
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2801
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Lcom/google/android/material/picker/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p2}, Lcom/google/android/material/picker/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_5

    :cond_4
    const/16 p1, 0x1000

    .line 2802
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2804
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Lcom/google/android/material/picker/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getMinValue()I

    move-result p0

    if-le p1, p0, :cond_7

    :cond_6
    const/16 p0, 0x2000

    .line 2805
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_7
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 2727
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2728
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2729
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2730
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2731
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2732
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 2733
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2734
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2735
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2736
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2737
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2738
    iget-object p3, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p3, v1}, Lcom/google/android/material/internal/ViewUtils;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2739
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2741
    iget-object p3, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2742
    iget-object p4, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p4, p3}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 p4, 0x0

    .line 2743
    aget p4, p3, p4

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 2744
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2746
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_0

    const/16 p2, 0x40

    .line 2747
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2749
    :cond_0
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1

    const/16 p1, 0x80

    .line 2750
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2752
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x10

    .line 2753
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-object v0
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .line 2705
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2706
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2707
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x40

    .line 2708
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2710
    :cond_0
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v2, :cond_1

    const/16 v1, 0x80

    .line 2711
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2713
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2714
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2715
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p1, v1}, Lcom/google/android/material/internal/ViewUtils;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2716
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2718
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2719
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    .line 2720
    aget p0, p1, p0

    const/4 p2, 0x1

    aget p1, p1, p2

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 2721
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2670
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 2671
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2672
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2673
    invoke-virtual {p0, v0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 2678
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p2}, Lcom/google/android/material/picker/NumberPicker;->access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 2679
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2680
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2681
    invoke-virtual {p0, v0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2684
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p2}, Lcom/google/android/material/picker/NumberPicker;->access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 2685
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2686
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2687
    invoke-virtual {p0, v0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void

    .line 2693
    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 2694
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2695
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2696
    invoke-virtual {p0, v0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 2

    .line 2821
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$1800(Lcom/google/android/material/picker/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2822
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v1}, Lcom/google/android/material/picker/NumberPicker;->access$1900(Lcom/google/android/material/picker/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2823
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v1, v0}, Lcom/google/android/material/picker/NumberPicker;->access$2000(Lcom/google/android/material/picker/NumberPicker;I)I

    move-result v0

    .line 2825
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v1}, Lcom/google/android/material/picker/NumberPicker;->access$2100(Lcom/google/android/material/picker/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2826
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v1}, Lcom/google/android/material/picker/NumberPicker;->access$800(Lcom/google/android/material/picker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->access$2200(Lcom/google/android/material/picker/NumberPicker;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    .line 2827
    invoke-static {v1}, Lcom/google/android/material/picker/NumberPicker;->access$800(Lcom/google/android/material/picker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0}, Lcom/google/android/material/picker/NumberPicker;->access$2100(Lcom/google/android/material/picker/NumberPicker;)I

    move-result p0

    sub-int/2addr v0, p0

    aget-object p0, v1, v0

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 2

    .line 2833
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$1800(Lcom/google/android/material/picker/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2834
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v1}, Lcom/google/android/material/picker/NumberPicker;->access$1900(Lcom/google/android/material/picker/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2835
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v1, v0}, Lcom/google/android/material/picker/NumberPicker;->access$2000(Lcom/google/android/material/picker/NumberPicker;I)I

    move-result v0

    .line 2837
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v1}, Lcom/google/android/material/picker/NumberPicker;->access$1000(Lcom/google/android/material/picker/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2838
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v1}, Lcom/google/android/material/picker/NumberPicker;->access$800(Lcom/google/android/material/picker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->access$2200(Lcom/google/android/material/picker/NumberPicker;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    .line 2839
    invoke-static {v1}, Lcom/google/android/material/picker/NumberPicker;->access$800(Lcom/google/android/material/picker/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0}, Lcom/google/android/material/picker/NumberPicker;->access$2100(Lcom/google/android/material/picker/NumberPicker;)I

    move-result p0

    sub-int/2addr v0, p0

    aget-object p0, v1, v0

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasVirtualDecrementButton()Z
    .locals 1

    .line 2813
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getMinValue()I

    move-result p0

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 1

    .line 2817
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getMaxValue()I

    move-result p0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 2

    .line 2654
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 2655
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2656
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 2657
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2658
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2659
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2660
    iget-object p3, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2661
    iget-object p3, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2662
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0, p0, p2}, Landroid/widget/LinearLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 2

    .line 2642
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 2643
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2644
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2645
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2646
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2647
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2648
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0, p0, p1}, Landroid/widget/LinearLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2420
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x3

    .line 2406
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v4

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    .line 2407
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v5, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    .line 2408
    invoke-static {p1}, Lcom/google/android/material/picker/NumberPicker;->access$1500(Lcom/google/android/material/picker/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$1700(Lcom/google/android/material/picker/NumberPicker;)I

    move-result v0

    add-int v6, p1, v0

    move-object v0, p0

    .line 2405
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    .line 2410
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    .line 2411
    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$1500(Lcom/google/android/material/picker/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v1}, Lcom/google/android/material/picker/NumberPicker;->access$1700(Lcom/google/android/material/picker/NumberPicker;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    .line 2412
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    .line 2413
    invoke-static {v2}, Lcom/google/android/material/picker/NumberPicker;->access$1300(Lcom/google/android/material/picker/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v3}, Lcom/google/android/material/picker/NumberPicker;->access$1700(Lcom/google/android/material/picker/NumberPicker;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2410
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x1

    .line 2416
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    .line 2417
    invoke-static {p1}, Lcom/google/android/material/picker/NumberPicker;->access$1300(Lcom/google/android/material/picker/NumberPicker;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$1700(Lcom/google/android/material/picker/NumberPicker;)I

    move-result v0

    sub-int v4, p1, v0

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    .line 2418
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v5, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v6, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTop()I

    move-result v6

    sub-int/2addr v0, v6

    add-int v6, p1, v0

    move-object v0, p0

    .line 2415
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    .line 2402
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    .line 2403
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 2402
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 2426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2427
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2429
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2430
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v5, :cond_1

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_1

    .line 2449
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2444
    :cond_1
    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    .line 2433
    :cond_2
    invoke-direct {p0, v0, v3, v1}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2435
    invoke-direct {p0, v0, v4, v1}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2437
    invoke-direct {p0, v0, v5, v1}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 9

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_1c

    const/high16 v0, 0x10000

    const v6, 0x8000

    const/16 v7, 0x10

    if-eq p1, v4, :cond_15

    const/4 v8, 0x2

    if-eq p1, v8, :cond_8

    const/4 v8, 0x3

    if-eq p1, v8, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p2, v7, :cond_5

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_1

    return v5

    .line 2602
    :cond_1
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_2

    .line 2603
    iput v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2604
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2606
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    move-result p2

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0}, Lcom/google/android/material/picker/NumberPicker;->access$1500(Lcom/google/android/material/picker/NumberPicker;)I

    move-result p0

    invoke-virtual {p1, v5, v5, p2, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_2
    return v5

    .line 2592
    :cond_3
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_4

    .line 2593
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2594
    invoke-virtual {p0, p1, v6}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2596
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    move-result p2

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0}, Lcom/google/android/material/picker/NumberPicker;->access$1500(Lcom/google/android/material/picker/NumberPicker;)I

    move-result p0

    invoke-virtual {p1, v5, v5, p2, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_4
    return v5

    .line 2582
    :cond_5
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    if-ne p1, v4, :cond_6

    move v5, v4

    .line 2584
    :cond_6
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p2, v5}, Lcom/google/android/material/picker/NumberPicker;->access$200(Lcom/google/android/material/picker/NumberPicker;Z)V

    .line 2585
    invoke-virtual {p0, p1, v4}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_7
    return v5

    :cond_8
    if-eq p2, v4, :cond_13

    if-eq p2, v8, :cond_11

    if-eq p2, v7, :cond_f

    const/16 v7, 0x20

    if-eq p2, v7, :cond_d

    if-eq p2, v3, :cond_b

    if-eq p2, v2, :cond_9

    .line 2540
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0}, Lcom/google/android/material/picker/NumberPicker;->access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 2530
    :cond_9
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_a

    .line 2531
    iput v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2532
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2534
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0}, Lcom/google/android/material/picker/NumberPicker;->access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return v4

    :cond_a
    return v5

    .line 2520
    :cond_b
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_c

    .line 2521
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2522
    invoke-virtual {p0, p1, v6}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2524
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0}, Lcom/google/android/material/picker/NumberPicker;->access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return v4

    :cond_c
    return v5

    .line 2513
    :cond_d
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2514
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->performLongClick()Z

    return v4

    :cond_e
    return v5

    .line 2506
    :cond_f
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2507
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->performClick()Z

    return v4

    :cond_10
    return v5

    .line 2499
    :cond_11
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p1}, Lcom/google/android/material/picker/NumberPicker;->access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2500
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0}, Lcom/google/android/material/picker/NumberPicker;->access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    return v4

    :cond_12
    return v5

    .line 2493
    :cond_13
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p1}, Lcom/google/android/material/picker/NumberPicker;->access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_14

    .line 2494
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0}, Lcom/google/android/material/picker/NumberPicker;->access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    move-result p0

    return p0

    :cond_14
    return v5

    :cond_15
    if-eq p2, v7, :cond_1a

    if-eq p2, v3, :cond_18

    if-eq p2, v2, :cond_16

    return v5

    .line 2567
    :cond_16
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_17

    .line 2568
    iput v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2569
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2571
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p1}, Lcom/google/android/material/picker/NumberPicker;->access$1300(Lcom/google/android/material/picker/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getRight()I

    move-result p3

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {p1, v5, p2, p3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_17
    return v5

    .line 2557
    :cond_18
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_19

    .line 2558
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2559
    invoke-virtual {p0, p1, v6}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2561
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p1}, Lcom/google/android/material/picker/NumberPicker;->access$1300(Lcom/google/android/material/picker/NumberPicker;)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getRight()I

    move-result p3

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {p1, v5, p2, p3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v4

    :cond_19
    return v5

    .line 2548
    :cond_1a
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 2549
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p2, v4}, Lcom/google/android/material/picker/NumberPicker;->access$200(Lcom/google/android/material/picker/NumberPicker;Z)V

    .line 2550
    invoke-virtual {p0, p1, v4}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_1b
    return v5

    :cond_1c
    if-eq p2, v3, :cond_25

    if-eq p2, v2, :cond_23

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_20

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1d

    .line 2615
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 2480
    :cond_1d
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    .line 2481
    invoke-virtual {p1}, Lcom/google/android/material/picker/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p2}, Lcom/google/android/material/picker/NumberPicker;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_1f

    .line 2482
    :cond_1e
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0, v5}, Lcom/google/android/material/picker/NumberPicker;->access$200(Lcom/google/android/material/picker/NumberPicker;Z)V

    return v4

    :cond_1f
    return v5

    .line 2472
    :cond_20
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    .line 2473
    invoke-virtual {p1}, Lcom/google/android/material/picker/NumberPicker;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p2}, Lcom/google/android/material/picker/NumberPicker;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_22

    .line 2474
    :cond_21
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0, v4}, Lcom/google/android/material/picker/NumberPicker;->access$200(Lcom/google/android/material/picker/NumberPicker;Z)V

    return v4

    :cond_22
    return v5

    .line 2465
    :cond_23
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_24

    .line 2466
    iput v1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return v4

    :cond_24
    return v5

    .line 2458
    :cond_25
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_26

    .line 2459
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return v4

    :cond_26
    return v5
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2621
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2623
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2622
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2628
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    .line 2632
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2634
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2633
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
