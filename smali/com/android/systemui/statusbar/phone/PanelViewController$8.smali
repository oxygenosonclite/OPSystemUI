.class Lcom/android/systemui/statusbar/phone/PanelViewController$8;
.super Ljava/lang/Object;
.source "PanelViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    .line 1266
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$8;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1269
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$8;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->collapse(ZF)V

    return-void
.end method
