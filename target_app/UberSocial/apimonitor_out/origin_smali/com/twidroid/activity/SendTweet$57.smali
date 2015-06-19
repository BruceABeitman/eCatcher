.class Lcom/twidroid/activity/SendTweet$57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet;->C()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$57;->a:Lcom/twidroid/activity/SendTweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$57;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$57;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->an:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_19
    iget-object v2, p0, Lcom/twidroid/activity/SendTweet$57;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v2}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/activity/SendTweet$57;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v3}, Lcom/twidroid/activity/SendTweet;->d(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twidroid/net/a/c/c;->b(Lcom/twidroid/model/twitter/c;)[Lorg/apache/http/Header;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/twidroid/net/a/b/j;->e([Lorg/apache/http/Header;Ljava/lang/String;)Lcom/twidroid/net/a/b/l;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/twidroid/net/a/b/j;->a([Lorg/apache/http/Header;Lcom/twidroid/net/a/b/l;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_38} :catch_39

    goto :goto_d

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    :cond_3e
    return-void
.end method
