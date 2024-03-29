.class Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/SimpleMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthViewTouchHelper"
.end annotation


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/google/android/material/picker/SimpleMonthView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/picker/SimpleMonthView;Landroid/view/View;)V
    .locals 0

    .line 1183
    iput-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/google/android/material/picker/SimpleMonthView;

    .line 1184
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1180
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private getDayDescription(I)Ljava/lang/CharSequence;
    .locals 3

    .line 1256
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-static {v0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->access$500(Lcom/google/android/material/picker/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-static {v1}, Lcom/google/android/material/picker/SimpleMonthView;->access$600(Lcom/google/android/material/picker/SimpleMonthView;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-static {v2}, Lcom/google/android/material/picker/SimpleMonthView;->access$700(Lcom/google/android/material/picker/SimpleMonthView;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 1258
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    const-string v0, "dd MMMM yyyy"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getDayText(I)Ljava/lang/CharSequence;
    .locals 2

    .line 1271
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-static {v0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->access$500(Lcom/google/android/material/picker/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-static {p0}, Lcom/google/android/material/picker/SimpleMonthView;->access$800(Lcom/google/android/material/picker/SimpleMonthView;)Ljava/text/NumberFormat;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 1

    .line 1189
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/google/android/material/picker/SimpleMonthView;

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    add-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p0, p1, p2}, Lcom/google/android/material/picker/SimpleMonthView;->access$000(Lcom/google/android/material/picker/SimpleMonthView;II)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    const/high16 p0, -0x80000000

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1198
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-static {v1}, Lcom/google/android/material/picker/SimpleMonthView;->access$100(Lcom/google/android/material/picker/SimpleMonthView;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-eq p2, p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1243
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-static {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->access$400(Lcom/google/android/material/picker/SimpleMonthView;I)Z

    move-result p0

    return p0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1205
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 1210
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/google/android/material/picker/SimpleMonthView;

    iget-object v1, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/picker/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1214
    iget-object p1, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    const-string p1, ""

    .line 1215
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1216
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    .line 1217
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    return-void

    .line 1221
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->getDayText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1223
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1225
    iget-object v0, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-static {v0, p1}, Lcom/google/android/material/picker/SimpleMonthView;->access$200(Lcom/google/android/material/picker/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x10

    .line 1227
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1230
    :cond_1
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 1232
    iget-object p0, p0, Lcom/google/android/material/picker/SimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-static {p0}, Lcom/google/android/material/picker/SimpleMonthView;->access$300(Lcom/google/android/material/picker/SimpleMonthView;)I

    move-result p0

    if-ne p1, p0, :cond_2

    const/4 p0, 0x1

    .line 1234
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    :cond_2
    return-void
.end method
