.class Lcom/twidroid/activity/SendTweet$47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/r;

.field final synthetic b:Landroid/os/Handler$Callback;

.field final synthetic c:Lcom/twidroid/activity/SendTweet;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
    .registers 4

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$47;->c:Lcom/twidroid/activity/SendTweet;

    iput-object p2, p0, Lcom/twidroid/activity/SendTweet$47;->a:Lcom/twidroid/activity/r;

    iput-object p3, p0, Lcom/twidroid/activity/SendTweet$47;->b:Landroid/os/Handler$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$47;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$47;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->d(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->b(Lcom/twidroid/model/twitter/c;)[Lorg/apache/http/Header;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$47;->a:Lcom/twidroid/activity/r;

    invoke-static {v1}, Lcom/twidroid/activity/r;->a(Lcom/twidroid/activity/r;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/a/b/j;->e([Lorg/apache/http/Header;Ljava/lang/String;)Lcom/twidroid/net/a/b/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/a/b/j;->a([Lorg/apache/http/Header;Lcom/twidroid/net/a/b/l;)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_3e
    .catch Lcom/twidroid/net/a/b/m; {:try_start_1 .. :try_end_26} :catch_30

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$47;->b:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$47;->b:Landroid/os/Handler$Callback;

    invoke-interface {v0, v2}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_2f
    :goto_2f
    return-void

    :catch_30
    move-exception v0

    :try_start_31
    invoke-virtual {v0}, Lcom/twidroid/net/a/b/m;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3e

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$47;->b:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$47;->b:Landroid/os/Handler$Callback;

    invoke-interface {v0, v2}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    goto :goto_2f

    :catchall_3e
    move-exception v0

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$47;->b:Landroid/os/Handler$Callback;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$47;->b:Landroid/os/Handler$Callback;

    invoke-interface {v1, v2}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_48
    throw v0
.end method
