.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$C-KKUSLKaEFdqjL8UshFp6r2378;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$C-KKUSLKaEFdqjL8UshFp6r2378;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$C-KKUSLKaEFdqjL8UshFp6r2378;->f$0:I

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$updateExpandedViewDirection$16(ILcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method
