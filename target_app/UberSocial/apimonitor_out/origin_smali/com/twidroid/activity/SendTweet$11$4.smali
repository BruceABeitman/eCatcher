.class Lcom/twidroid/activity/SendTweet$11$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet$11;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet$11;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet$11;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$11$4;->a:Lcom/twidroid/activity/SendTweet$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$4;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->e(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$4;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->L:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1c

    :goto_14
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$4;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0, v2}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Z)Z

    return-void

    :catch_1c
    move-exception v0

    goto :goto_14
.end method
