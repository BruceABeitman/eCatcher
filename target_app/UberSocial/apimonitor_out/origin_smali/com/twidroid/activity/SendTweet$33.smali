.class Lcom/twidroid/activity/SendTweet$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$33;->a:Lcom/twidroid/activity/SendTweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$33;->a:Lcom/twidroid/activity/SendTweet;

    new-instance v1, Lcom/twidroid/activity/t;

    iget-object v2, p0, Lcom/twidroid/activity/SendTweet$33;->a:Lcom/twidroid/activity/SendTweet;

    invoke-direct {v1, v2, v3}, Lcom/twidroid/activity/t;-><init>(Lcom/twidroid/activity/SendTweet;Z)V

    invoke-static {v0, v1}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/t;)Lcom/twidroid/activity/t;

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$33;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->b(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/activity/t;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/twidroid/activity/SendTweet$33;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v2}, Lcom/twidroid/activity/SendTweet;->d(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/model/twitter/c;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/t;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method
