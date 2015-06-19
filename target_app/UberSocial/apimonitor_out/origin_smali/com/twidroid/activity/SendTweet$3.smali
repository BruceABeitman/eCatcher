.class Lcom/twidroid/activity/SendTweet$3;
.super Lcom/twidroid/ui/widgets/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet;->c(Landroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$3;->a:Lcom/twidroid/activity/SendTweet;

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$3;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->M()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$3;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->g(Lcom/twidroid/activity/SendTweet;)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$3;->a:Lcom/twidroid/activity/SendTweet;

    const/16 v1, 0x18c

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    :cond_1c
    return-void
.end method
