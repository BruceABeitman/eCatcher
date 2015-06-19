.class Lcom/twidroid/fragments/d$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/d;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/d;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/d;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/d$9;->a:Lcom/twidroid/fragments/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twidroid/fragments/d$9;->a:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->a(Lcom/twidroid/fragments/d;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v0, "booleanResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/twidroid/fragments/d$9;->a:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->a(Lcom/twidroid/fragments/d;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c0124

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d$9;->a:Lcom/twidroid/fragments/d;

    invoke-static {v0, v2}, Lcom/twidroid/fragments/d;->a(Lcom/twidroid/fragments/d;Z)Z

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/twidroid/fragments/d$9;->a:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->a(Lcom/twidroid/fragments/d;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c011c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d$9;->a:Lcom/twidroid/fragments/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twidroid/fragments/d;->a(Lcom/twidroid/fragments/d;Z)Z

    goto :goto_23
.end method

.method public a(Lcom/twidroid/net/a/a/b;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/d$9;->a:Lcom/twidroid/fragments/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/twidroid/fragments/d$9;->a:Lcom/twidroid/fragments/d;

    iget-object v1, p0, Lcom/twidroid/fragments/d$9;->a:Lcom/twidroid/fragments/d;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    :cond_13
    return-void
.end method
