.class Lcom/twidroid/activity/SendTweet$55;
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

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$55;->a:Lcom/twidroid/activity/SendTweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$55;->a:Lcom/twidroid/activity/SendTweet;

    iget-boolean v0, v0, Lcom/twidroid/activity/SendTweet;->Q:Z

    if-eqz v0, :cond_2f

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$55;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->u(Lcom/twidroid/activity/SendTweet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$55;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->v(Lcom/twidroid/activity/SendTweet;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$55;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->v(Lcom/twidroid/activity/SendTweet;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_25
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$55;->a:Lcom/twidroid/activity/SendTweet;

    iput-boolean v5, v0, Lcom/twidroid/activity/SendTweet;->Q:Z

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$55;->a:Lcom/twidroid/activity/SendTweet;

    invoke-virtual {v0}, Lcom/twidroid/activity/SendTweet;->g()V

    :goto_2e
    return-void

    :cond_2f
    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$55;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->u(Lcom/twidroid/activity/SendTweet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$55;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->v(Lcom/twidroid/activity/SendTweet;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$55;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->v(Lcom/twidroid/activity/SendTweet;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4b
    new-instance v0, Lcom/twidroid/net/d/a;

    invoke-direct {v0}, Lcom/twidroid/net/d/a;-><init>()V

    new-instance v1, Lcom/twidroid/activity/SendTweet$55$1;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$55$1;-><init>(Lcom/twidroid/activity/SendTweet$55;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/net/d/a;->a(Lcom/twidroid/net/d/d;)V

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$55;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->d(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/model/twitter/c;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/twidroid/net/d/b;

    new-instance v3, Lcom/twidroid/net/d/b;

    iget-object v4, p0, Lcom/twidroid/activity/SendTweet$55;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v4}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;

    move-result-object v4

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/twidroid/net/d/b;-><init>(Lcom/twidroid/UberSocialApplication;Ljava/lang/String;)V

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/twidroid/net/d/a;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    goto :goto_2e
.end method
