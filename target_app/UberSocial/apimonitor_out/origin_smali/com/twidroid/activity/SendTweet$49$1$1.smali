.class Lcom/twidroid/activity/SendTweet$49$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet$49$1;->handleMessage(Landroid/os/Message;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet$49$1;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet$49$1;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$49$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$49$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49;->a:Lcom/twidroid/activity/r;

    invoke-virtual {v0}, Lcom/twidroid/activity/r;->f()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$49$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->an:Ljava/util/List;

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$49$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet$49;->a:Lcom/twidroid/activity/r;

    invoke-static {v1}, Lcom/twidroid/activity/r;->a(Lcom/twidroid/activity/r;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$49$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->an:Ljava/util/List;

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$49$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet$49;->a:Lcom/twidroid/activity/r;

    invoke-static {v1}, Lcom/twidroid/activity/r;->a(Lcom/twidroid/activity/r;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_39
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$49$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49;->a:Lcom/twidroid/activity/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/r;->a(Z)V

    :cond_43
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$49$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$49$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/activity/SendTweet$49$1$1$1;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$49$1$1$1;-><init>(Lcom/twidroid/activity/SendTweet$49$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5d
    const/4 v0, 0x1

    return v0
.end method
