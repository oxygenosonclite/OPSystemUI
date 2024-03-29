.class public Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;
.super Landroid/widget/LinearLayout;
.source "WLBDeatailItemView.java"


# static fields
.field protected static layoutResId:I


# instance fields
.field private mAvatar:Landroid/widget/ImageView;

.field private mName:Landroid/widget/TextView;

.field private mTriggerName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    sget v0, Lcom/android/systemui/R$layout;->wlb_detail_item_view:I

    sput v0, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;->layoutResId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;
    .locals 1

    .line 85
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;

    if-nez v0, :cond_0

    .line 86
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;->layoutResId:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 89
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;

    return-object p1
.end method


# virtual methods
.method public bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;->mAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;->mTriggerName:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 55
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 56
    sget v0, Lcom/android/systemui/R$id;->user_picture:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;->mAvatar:Landroid/widget/ImageView;

    .line 57
    sget v0, Lcom/android/systemui/R$id;->user_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;->mName:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/android/systemui/R$id;->trigger_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;->mTriggerName:Landroid/widget/TextView;

    return-void
.end method

.method public setActivated(Z)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    return-void
.end method

.method public updateThemeColor(Z)V
    .locals 1

    const/4 p1, 0x1

    .line 62
    invoke-static {p1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p1

    const/4 v0, 0x2

    .line 63
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
