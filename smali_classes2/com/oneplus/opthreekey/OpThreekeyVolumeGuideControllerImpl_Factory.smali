.class public final Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl_Factory;
.super Ljava/lang/Object;
.source "OpThreekeyVolumeGuideControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl_Factory;

    invoke-direct {v0, p0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl_Factory;->get()Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;

    move-result-object p0

    return-object p0
.end method
