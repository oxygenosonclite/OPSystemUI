.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$8QlfeYkGdUNh1TqL6uaiSF62PB0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field public final synthetic f$1:Lcom/android/systemui/bubbles/BubbleViewProvider;

.field public final synthetic f$2:Lcom/android/systemui/bubbles/BubbleViewProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleViewProvider;Lcom/android/systemui/bubbles/BubbleViewProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$8QlfeYkGdUNh1TqL6uaiSF62PB0;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$8QlfeYkGdUNh1TqL6uaiSF62PB0;->f$1:Lcom/android/systemui/bubbles/BubbleViewProvider;

    iput-object p3, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$8QlfeYkGdUNh1TqL6uaiSF62PB0;->f$2:Lcom/android/systemui/bubbles/BubbleViewProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$8QlfeYkGdUNh1TqL6uaiSF62PB0;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$8QlfeYkGdUNh1TqL6uaiSF62PB0;->f$1:Lcom/android/systemui/bubbles/BubbleViewProvider;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$8QlfeYkGdUNh1TqL6uaiSF62PB0;->f$2:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$showNewlySelectedBubble$18$BubbleStackView(Lcom/android/systemui/bubbles/BubbleViewProvider;Lcom/android/systemui/bubbles/BubbleViewProvider;)V

    return-void
.end method
