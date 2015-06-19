.class Lcom/twidroid/net/oauth/RequestTokenActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/oauth/RequestTokenActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/oauth/RequestTokenActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/net/oauth/RequestTokenActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$3;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$3;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity;->a:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "login_unsuccessful"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "reason"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "Cancelled by user"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_28
    iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$3;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-virtual {v0, v4}, Lcom/twidroid/net/oauth/RequestTokenActivity;->setResult(I)V

    iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$3;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-virtual {v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->finish()V

    return-void
.end method
