.class Lcom/twidroid/activity/SendTweet$65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet;->j()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$65;->a:Lcom/twidroid/activity/SendTweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$65;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->d(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/model/twitter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$65;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ch()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$65;->a:Lcom/twidroid/activity/SendTweet;

    const/16 v1, 0x2b4

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$65;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->f(Lcom/twidroid/activity/SendTweet;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$65;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->f(Lcom/twidroid/activity/SendTweet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$65;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->cl()I

    move-result v1

    if-lt v0, v1, :cond_5d

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$65;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$65;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;

    instance-of v0, v0, Lcom/twidroid/net/a/b/a;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$65;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$65;->a:Lcom/twidroid/activity/SendTweet;

    const v2, 0x7f0c0033

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/SendTweet;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/activity/SendTweet;->W:Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$65;->a:Lcom/twidroid/activity/SendTweet;

    const/16 v1, 0x192

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    goto :goto_1d

    :cond_5d
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$65;->a:Lcom/twidroid/activity/SendTweet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/activity/SendTweet;->c(Lcom/twidroid/activity/SendTweet;Z)Z

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$65;->a:Lcom/twidroid/activity/SendTweet;

    const-string v1, ".photo"

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->b(Ljava/lang/String;)V

    goto :goto_1d
.end method
