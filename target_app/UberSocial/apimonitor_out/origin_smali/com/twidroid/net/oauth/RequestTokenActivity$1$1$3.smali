.class Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ubermedia/net/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/model/twitter/c;

.field final synthetic b:Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;


# direct methods
.method constructor <init>(Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;Lcom/twidroid/model/twitter/c;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$3;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;

    iput-object p2, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$3;->a:Lcom/twidroid/model/twitter/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Activity;)V
    .registers 2

    check-cast p1, Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$3;->a(Lcom/twidroid/net/oauth/RequestTokenActivity;)V

    return-void
.end method

.method public a(Lcom/twidroid/net/oauth/RequestTokenActivity;)V
    .registers 6

    new-instance v0, Lcom/twidroid/net/oauth/c;

    iget-object v1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$3;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;

    iget-object v1, v1, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;

    iget-object v1, v1, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/twidroid/net/oauth/c;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity;Lcom/twidroid/net/oauth/RequestTokenActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/twidroid/model/twitter/c;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$3;->a:Lcom/twidroid/model/twitter/c;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/net/oauth/c;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$3;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;

    iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;

    iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/oauth/RequestTokenActivity;->setResult(I)V

    invoke-virtual {p1}, Lcom/twidroid/net/oauth/RequestTokenActivity;->finish()V

    return-void
.end method
