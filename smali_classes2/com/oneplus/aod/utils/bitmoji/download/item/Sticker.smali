.class public Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;
.super Ljava/lang/Object;
.source "Sticker.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mName:Ljava/lang/String;

.field private mPackId:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker$1;

    invoke-direct {v0}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker$1;-><init>()V

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mUri:Landroid/net/Uri;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mPackId:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "uri"

    .line 32
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "image_format"

    const-string v1, "webp"

    .line 39
    invoke-virtual {p2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "size"

    const-string v1, "normal"

    .line 40
    invoke-virtual {p2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 41
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mUri:Landroid/net/Uri;

    .line 42
    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mPackId:Ljava/lang/String;

    .line 43
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "uri"

    .line 26
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mUri:Landroid/net/Uri;

    .line 27
    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mPackId:Ljava/lang/String;

    .line 28
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mName:Ljava/lang/String;

    return-void
.end method

.method public static createFromCursor(Ljava/lang/String;Landroid/database/Cursor;)Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;
    .locals 1

    .line 91
    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public static createFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;
    .locals 1

    .line 95
    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public isDownloaded()Z
    .locals 2

    .line 79
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mPackId:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getImagePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 85
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 86
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "uri"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    :goto_0
    iget-object p2, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mPackId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/download/item/Sticker;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
