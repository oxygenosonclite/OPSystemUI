.class public Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;
.super Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;
.source "OpAodSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/OpAodSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpTextViewInfo"
.end annotation


# instance fields
.field mFollowSystemFont:Z

.field mFontFamily:I

.field mTextFontWeight:I

.field mTextSizeId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 389
    invoke-direct {p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;-><init>()V

    const/4 v0, -0x1

    .line 385
    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextFontWeight:I

    .line 391
    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mFontFamily:I

    .line 392
    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextSizeId:I

    const/4 v0, 0x1

    .line 393
    iput-boolean v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mFollowSystemFont:Z

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 397
    invoke-direct {p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;-><init>()V

    .line 399
    iput p1, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextSizeId:I

    return-void
.end method


# virtual methods
.method public getFontFamily()I
    .locals 0

    .line 411
    iget p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mFontFamily:I

    return p0
.end method

.method public getTextFontWeight()I
    .locals 0

    .line 419
    iget p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextFontWeight:I

    return p0
.end method

.method public getTextSize(Landroid/content/Context;)I
    .locals 1

    .line 423
    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextSizeId:I

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getSize(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getTextSizeId()I
    .locals 0

    .line 415
    iget p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextSizeId:I

    return p0
.end method

.method public isFollowSystemFont()Z
    .locals 0

    .line 427
    iget-boolean p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mFollowSystemFont:Z

    return p0
.end method

.method parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 0

    .line 403
    invoke-super {p0, p1, p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 405
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 406
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->parseTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 407
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->parseOpFont(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected parseOpFont(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 454
    sget-object v0, Lcom/android/systemui/R$styleable;->OpAodFont:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 456
    sget p2, Lcom/android/systemui/R$styleable;->OpAodFont_followSystemFont:I

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mFollowSystemFont:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mFollowSystemFont:Z

    .line 457
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected parseTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 431
    sget-object v0, Lcom/android/internal/R$styleable;->TextAppearance:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 433
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_3

    .line 435
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    const/16 v2, 0x12

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 444
    :cond_0
    iget v2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextFontWeight:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextFontWeight:I

    goto :goto_1

    .line 438
    :cond_1
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mFontFamily:I

    goto :goto_1

    .line 441
    :cond_2
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextSizeId:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
