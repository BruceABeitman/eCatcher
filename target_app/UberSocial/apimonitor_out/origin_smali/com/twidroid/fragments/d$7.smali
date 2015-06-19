.class Lcom/twidroid/fragments/d$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/net/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/d;->e()V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/twidroid/fragments/d;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/d;Landroid/app/ProgressDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    iput-object p2, p0, Lcom/twidroid/fragments/d$7;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->h(Lcom/twidroid/fragments/d;)Lcom/twidroid/fragments/e;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->h(Lcom/twidroid/fragments/d;)Lcom/twidroid/fragments/e;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v1}, Lcom/twidroid/fragments/d;->g(Lcom/twidroid/fragments/d;)Lcom/twidroid/model/facebook/FacebookNewsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twidroid/fragments/e;->a(Lcom/twidroid/model/facebook/FacebookNewsModel;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->i(Lcom/twidroid/fragments/d;)Lcom/twidroid/fragments/e/b;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->i(Lcom/twidroid/fragments/d;)Lcom/twidroid/fragments/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/b;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->i(Lcom/twidroid/fragments/d;)Lcom/twidroid/fragments/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v1}, Lcom/twidroid/fragments/d;->g(Lcom/twidroid/fragments/d;)Lcom/twidroid/model/facebook/FacebookNewsModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/b;->a(Lcom/twidroid/model/facebook/FacebookNewsModel;)V

    goto :goto_1c
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "booleanResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->g(Lcom/twidroid/fragments/d;)Lcom/twidroid/model/facebook/FacebookNewsModel;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v1}, Lcom/twidroid/fragments/d;->g(Lcom/twidroid/fragments/d;)Lcom/twidroid/model/facebook/FacebookNewsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->b(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->a(Lcom/twidroid/fragments/d;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c011c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twidroid/fragments/d;->a(Lcom/twidroid/fragments/d;Z)Z

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->a(Lcom/twidroid/fragments/d;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/twidroid/fragments/d$7;->a()V

    :cond_3c
    return-void
.end method

.method public a(Lcom/twidroid/net/a/a/b;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->a(Lcom/twidroid/fragments/d;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    iget-object v1, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    iget-object v1, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    :cond_2d
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x1

    const-string v0, "booleanResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->g(Lcom/twidroid/fragments/d;)Lcom/twidroid/model/facebook/FacebookNewsModel;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v1}, Lcom/twidroid/fragments/d;->g(Lcom/twidroid/fragments/d;)Lcom/twidroid/model/facebook/FacebookNewsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->b(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->a(Lcom/twidroid/fragments/d;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c0124

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0, v2}, Lcom/twidroid/fragments/d;->a(Lcom/twidroid/fragments/d;Z)Z

    iget-object v0, p0, Lcom/twidroid/fragments/d$7;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->a(Lcom/twidroid/fragments/d;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/twidroid/fragments/d$7;->a()V

    :cond_3b
    return-void
.end method
