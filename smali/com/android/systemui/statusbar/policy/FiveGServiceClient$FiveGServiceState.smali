.class public Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
.super Ljava/lang/Object;
.source "FiveGServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FiveGServiceState"
.end annotation


# instance fields
.field private mBearerAllocationStatus:I

.field private mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private mLevel:I

.field private mNrConfigType:I

.field private mNrIconType:I

.field private mRsrp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x8000

    .line 226
    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mRsrp:I

    const/4 v0, 0x0

    .line 231
    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    .line 233
    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mLevel:I

    .line 234
    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    const/4 v0, -0x1

    .line 235
    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    .line 236
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I
    .locals 0

    .line 217
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mRsrp:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I
    .locals 0

    .line 217
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mRsrp:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I
    .locals 0

    .line 217
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mLevel:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I
    .locals 0

    .line 217
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I
    .locals 0

    .line 217
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I
    .locals 0

    .line 217
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I
    .locals 0

    .line 217
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I
    .locals 0

    .line 217
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    return p1
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)V
    .locals 1

    .line 297
    iget v0, p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    .line 299
    iget v0, p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mLevel:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mLevel:I

    .line 300
    iget v0, p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    .line 301
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 302
    iget v0, p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    .line 304
    iget p1, p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mRsrp:I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mRsrp:I

    return-void
.end method

.method public equals(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)Z
    .locals 2

    .line 309
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mLevel:I

    iget v1, p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mLevel:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    iget v1, p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    iget v1, p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    iget p1, p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAllocated()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 275
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    return p0
.end method

.method public getIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 265
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0
.end method

.method getNrConfigType()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 280
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    return p0
.end method

.method getNrIconType()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 285
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    return p0
.end method

.method public getRsrp()I
    .locals 0

    .line 290
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mRsrp:I

    return p0
.end method

.method public getSignalLevel()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 270
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mLevel:I

    return p0
.end method

.method public isConnectedOnNsaMode()Z
    .locals 1

    .line 251
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConnectedOnSaMode()Z
    .locals 2

    .line 242
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNrIconTypeValid()Z
    .locals 1

    .line 260
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLevel="

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mNrConfigType="

    .line 321
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mIconGroup="

    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mNrIconType="

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mBearerAllocationStatus="

    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRsrp="

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mRsrp:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
