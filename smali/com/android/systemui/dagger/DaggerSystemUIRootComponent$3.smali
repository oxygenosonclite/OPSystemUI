.class Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$3;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->initialize3(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)V
    .locals 0

    .line 3005
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$3;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;
    .locals 2

    .line 3008
    new-instance v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentBuilder;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$3;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$NotificationRowComponentBuilder;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 3005
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$3;->get()Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;

    move-result-object p0

    return-object p0
.end method
