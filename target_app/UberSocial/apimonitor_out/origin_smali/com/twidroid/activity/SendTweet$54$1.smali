.class Lcom/twidroid/activity/SendTweet$54$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet$54;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet$54;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet$54;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$54$1;->a:Lcom/twidroid/activity/SendTweet$54;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$54$1;->a:Lcom/twidroid/activity/SendTweet$54;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$54;->a:Lcom/twidroid/activity/SendTweet;

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$54$1;->a:Lcom/twidroid/activity/SendTweet$54;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$54;->a:Lcom/twidroid/activity/SendTweet;

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
