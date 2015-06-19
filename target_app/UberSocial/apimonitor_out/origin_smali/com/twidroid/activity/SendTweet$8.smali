.class Lcom/twidroid/activity/SendTweet$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet;->v()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$8;->a:Lcom/twidroid/activity/SendTweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$8;->a:Lcom/twidroid/activity/SendTweet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->setResult(I)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$8;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$8;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->s()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->a(Landroid/content/SharedPreferences$Editor;)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$8;->a:Lcom/twidroid/activity/SendTweet;

    invoke-virtual {v0}, Lcom/twidroid/activity/SendTweet;->finish()V

    return-void
.end method
