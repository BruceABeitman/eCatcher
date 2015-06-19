.class final Lcom/twidroid/c/l$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/l;->a(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/twidroid/model/twitter/Tweet;

.field final synthetic c:Lcom/twidroid/net/c/a/f;

.field final synthetic d:Lcom/twidroid/ui/a/am;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)V
    .registers 5

    iput-object p1, p0, Lcom/twidroid/c/l$15;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/twidroid/c/l$15;->b:Lcom/twidroid/model/twitter/Tweet;

    iput-object p3, p0, Lcom/twidroid/c/l$15;->c:Lcom/twidroid/net/c/a/f;

    iput-object p4, p0, Lcom/twidroid/c/l$15;->d:Lcom/twidroid/ui/a/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object v0, p0, Lcom/twidroid/c/l$15;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    iget-object v1, p0, Lcom/twidroid/c/l$15;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twidroid/c/l$15;->b:Lcom/twidroid/model/twitter/Tweet;

    iget-object v3, p0, Lcom/twidroid/c/l$15;->c:Lcom/twidroid/net/c/a/f;

    iget-object v4, p0, Lcom/twidroid/c/l$15;->d:Lcom/twidroid/ui/a/am;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twidroid/net/c/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)V

    return-void
.end method
