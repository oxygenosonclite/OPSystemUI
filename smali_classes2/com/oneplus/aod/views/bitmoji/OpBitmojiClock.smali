.class public Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;
.super Landroid/widget/FrameLayout;
.source "OpBitmojiClock.java"

# interfaces
.implements Lcom/oneplus/aod/views/IOpAodClock;
.implements Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;


# instance fields
.field private mBitmojiIcon:Landroid/widget/ImageView;

.field private mBitmojiIconHeightId:I

.field private mBitmojiIconWidthId:I

.field private mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

.field private mDateMarginTopId:I

.field private mDateView:Landroid/widget/TextView;

.field private mTimeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    sget p3, Lcom/android/systemui/R$layout;->op_aod_bitmoji_clock:I

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 58
    sget v0, Lcom/android/systemui/R$id;->bitmoji_icon:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiIcon:Landroid/widget/ImageView;

    .line 59
    sget v0, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mDateView:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/android/systemui/R$id;->time:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mTimeView:Landroid/widget/TextView;

    .line 62
    invoke-direct {p0, p2}, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->setupAttributes(Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :try_start_0
    const-class p1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    iput-object p1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OpBitmojiClock"

    const-string p2, "bitmojiManager error"

    .line 72
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private is24HourModeEnabled()Z
    .locals 1

    .line 181
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 182
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 181
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method private setupAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .line 164
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->OpBitmojiClock:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 166
    sget v0, Lcom/android/systemui/R$styleable;->OpBitmojiClock_bitmojiIconWidth:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiIconWidthId:I

    .line 167
    sget v0, Lcom/android/systemui/R$styleable;->OpBitmojiClock_bitmojiIconHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiIconHeightId:I

    .line 168
    sget v0, Lcom/android/systemui/R$styleable;->OpBitmojiClock_dateMarginTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mDateMarginTopId:I

    .line 169
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateTextSize(Landroid/widget/TextView;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010095

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 174
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p2, 0x0

    .line 176
    invoke-virtual {p0, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-static {p2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result p2

    int-to-float p2, p2

    .line 175
    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 177
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public applyLayoutParams(Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 99
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginStart(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 100
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginEnd(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 101
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginTop(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 102
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginBottom(Landroid/content/Context;)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiIcon:Landroid/widget/ImageView;

    .line 107
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_1

    .line 109
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiIconWidthId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 110
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiIconHeightId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_2

    .line 115
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mDateMarginTopId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 118
    :cond_2
    iget-object p1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mDateView:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$style;->op_text_style_h6:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->updateTextSize(Landroid/widget/TextView;I)V

    .line 119
    iget-object p1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mTimeView:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$style;->op_text_style_h2:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->updateTextSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 80
    iget-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->addListener(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->removeListener(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;)V

    :cond_0
    return-void
.end method

.method public onTimeChanged(Ljava/util/Calendar;)V
    .locals 3

    .line 124
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh_"

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ko_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ja_"

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE, MMMM d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "MMMMd EEEE"

    .line 129
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v0, v2

    .line 135
    :goto_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 137
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mDateView:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-direct {p0}, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->is24HourModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 144
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 147
    :goto_2
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 148
    iget-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mTimeView:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3a

    const/16 v2, 0x2236

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    if-eqz p1, :cond_3

    .line 151
    iget-object p0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->getAodImage()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public onTriggerChanged()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    if-eqz v0, :cond_0

    .line 159
    iget-object p0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->getAodImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
