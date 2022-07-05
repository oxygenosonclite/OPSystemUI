.class public Lcom/oneplus/aod/utils/bitmoji/triggers/TimeTrigger;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;
.source "TimeTrigger.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    return-void
.end method


# virtual methods
.method protected getCategories()[Ljava/lang/String;
    .locals 3

    const-string p0, "mornin"

    const-string v0, "afternoon"

    const-string v1, "evening"

    const-string v2, "night"

    .line 24
    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentCategory()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result p0

    const/16 v0, 0xc

    const/4 v1, 0x6

    if-lt p0, v1, :cond_0

    if-ge p0, v0, :cond_0

    const-string p0, "mornin"

    return-object p0

    :cond_0
    const/16 v1, 0x10

    if-lt p0, v0, :cond_1

    if-ge p0, v1, :cond_1

    const-string p0, "afternoon"

    return-object p0

    :cond_1
    if-lt p0, v1, :cond_2

    const/16 v0, 0x16

    if-ge p0, v0, :cond_2

    const-string p0, "evening"

    return-object p0

    :cond_2
    const-string p0, "night"

    return-object p0
.end method
