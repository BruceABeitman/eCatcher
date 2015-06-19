.class Lcom/twidroid/activity/SendTweet$49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/r;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/r;

.field final synthetic b:Lcom/twidroid/activity/SendTweet;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;

    iput-object p2, p0, Lcom/twidroid/activity/SendTweet$49;->a:Lcom/twidroid/activity/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    instance-of v0, v1, Lcom/twidroid/activity/r;

    if-eqz v0, :cond_30

    move-object v0, v1

    check-cast v0, Lcom/twidroid/activity/r;

    invoke-virtual {v0}, Lcom/twidroid/activity/r;->k()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aE()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;

    instance-of v0, v0, Lcom/twidroid/net/a/b/a;

    if-eqz v0, :cond_31

    :cond_2b
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0, p1}, Lcom/twidroid/activity/SendTweet;->b(Lcom/twidroid/activity/SendTweet;Landroid/view/View;)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;

    check-cast v1, Lcom/twidroid/activity/r;

    new-instance v2, Lcom/twidroid/activity/SendTweet$49$1;

    invoke-direct {v2, p0, p1}, Lcom/twidroid/activity/SendTweet$49$1;-><init>(Lcom/twidroid/activity/SendTweet$49;Landroid/view/View;)V

    invoke-static {v0, v1, v2}, Lcom/twidroid/activity/SendTweet;->b(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V

    goto :goto_30
.end method
