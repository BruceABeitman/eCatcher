.class final Lcom/twidroid/net/c/t$10;
.super Lcom/twidroid/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/c/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialApplication;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic e:Lcom/twidroid/model/twitter/Tweet;

.field final synthetic f:Lcom/twidroid/net/c/a/f;

.field final synthetic g:Lcom/twidroid/ui/a/am;

.field final synthetic h:Lcom/twidroid/net/c/u;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V
    .registers 8

    iput-object p2, p0, Lcom/twidroid/net/c/t$10;->a:Lcom/twidroid/UberSocialApplication;

    iput-object p3, p0, Lcom/twidroid/net/c/t$10;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/twidroid/net/c/t$10;->e:Lcom/twidroid/model/twitter/Tweet;

    iput-object p5, p0, Lcom/twidroid/net/c/t$10;->f:Lcom/twidroid/net/c/a/f;

    iput-object p6, p0, Lcom/twidroid/net/c/t$10;->g:Lcom/twidroid/ui/a/am;

    iput-object p7, p0, Lcom/twidroid/net/c/t$10;->h:Lcom/twidroid/net/c/u;

    invoke-direct {p0, p1}, Lcom/twidroid/c/c;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(I)V
    .registers 8

    invoke-static {}, Lcom/twidroid/net/c/t;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-static {}, Lcom/twidroid/net/c/t;->b()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/twidroid/b/a/b;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->c(I)Z

    iget-object v0, p0, Lcom/twidroid/net/c/t$10;->a:Lcom/twidroid/UberSocialApplication;

    iget-object v1, p0, Lcom/twidroid/net/c/t$10;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twidroid/net/c/t$10;->e:Lcom/twidroid/model/twitter/Tweet;

    iget-object v3, p0, Lcom/twidroid/net/c/t$10;->f:Lcom/twidroid/net/c/a/f;

    iget-object v4, p0, Lcom/twidroid/net/c/t$10;->g:Lcom/twidroid/ui/a/am;

    iget-object v5, p0, Lcom/twidroid/net/c/t$10;->h:Lcom/twidroid/net/c/u;

    invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->c(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V

    invoke-virtual {p0}, Lcom/twidroid/net/c/t$10;->dismiss()V

    return-void
.end method
