.class public abstract Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;
.super Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;
.source "CategoryTrigger.java"


# instance fields
.field protected mCategories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;->mCategories:Ljava/util/HashMap;

    .line 20
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;->syncImagePack()V

    return-void
.end method


# virtual methods
.method public dumpDetail(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "category="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;->getCurrentCategory()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract getCategories()[Ljava/lang/String;
.end method

.method protected abstract getCurrentCategory()Ljava/lang/String;
.end method

.method public getCurrentImageArray()[Ljava/lang/String;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;->getCurrentCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;->getListByCategory(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getListByCategory(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;->mCategories:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onImagePackUpdate(Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;->getCategories()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;->mCategories:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHelper()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getImagesPathByPackId(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public syncImagePack()V
    .locals 6

    .line 30
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;->getCategories()[Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;->mCategories:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 32
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 33
    iget-object v4, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/CategoryTrigger;->mCategories:Ljava/util/HashMap;

    .line 34
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getHelper()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getImagesPathByPackId(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
