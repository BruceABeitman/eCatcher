.class final Lcom/twidroid/net/c/t$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/c/t;->b(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/a/am;

.field final synthetic b:Lcom/twidroid/model/twitter/Tweet;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/twidroid/net/c/a/f;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a/am;Lcom/twidroid/model/twitter/Tweet;Landroid/app/Activity;Lcom/twidroid/net/c/a/f;)V
    .registers 5

    iput-object p1, p0, Lcom/twidroid/net/c/t$6;->a:Lcom/twidroid/ui/a/am;

    iput-object p2, p0, Lcom/twidroid/net/c/t$6;->b:Lcom/twidroid/model/twitter/Tweet;

    iput-object p3, p0, Lcom/twidroid/net/c/t$6;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/twidroid/net/c/t$6;->d:Lcom/twidroid/net/c/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/net/c/t$6;->a:Lcom/twidroid/ui/a/am;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/net/c/t$6;->b:Lcom/twidroid/model/twitter/Tweet;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twidroid/net/c/t$6;->a:Lcom/twidroid/ui/a/am;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/twidroid/net/c/t$6;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/c/t$6;->d:Lcom/twidroid/net/c/a/f;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method
