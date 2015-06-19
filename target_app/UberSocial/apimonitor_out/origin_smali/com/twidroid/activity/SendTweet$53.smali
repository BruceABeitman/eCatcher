.class Lcom/twidroid/activity/SendTweet$53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet;->A()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$53;->a:Lcom/twidroid/activity/SendTweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$53;->a:Lcom/twidroid/activity/SendTweet;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/activity/SendTweet$53;->a:Lcom/twidroid/activity/SendTweet;

    const-class v3, Lcom/twidroid/activity/LocationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "latitude"

    iget-object v3, p0, Lcom/twidroid/activity/SendTweet$53;->a:Lcom/twidroid/activity/SendTweet;

    iget-wide v3, v3, Lcom/twidroid/activity/SendTweet;->T:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "longitude"

    iget-object v3, p0, Lcom/twidroid/activity/SendTweet$53;->a:Lcom/twidroid/activity/SendTweet;

    iget-wide v3, v3, Lcom/twidroid/activity/SendTweet;->S:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
