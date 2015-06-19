.class Lcom/twidroid/fragments/d$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/d;->f()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twidroid/fragments/d;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/d;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    iput-object p2, p0, Lcom/twidroid/fragments/d$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "stringResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c0

    new-instance v1, Lcom/twidroid/model/facebook/FacebookCommentModel;

    invoke-direct {v1}, Lcom/twidroid/model/facebook/FacebookCommentModel;-><init>()V

    const-string v0, "stringResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/model/facebook/FacebookCommentModel;->a(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;

    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twidroid/model/facebook/FacebookCommentModel;->d(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twidroid/model/facebook/FacebookCommentModel;->a(J)Lcom/twidroid/model/facebook/FacebookCommentModel;

    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->j(Lcom/twidroid/fragments/d;)Lcom/twidroid/net/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/model/facebook/FacebookCommentModel;->b(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;

    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->j(Lcom/twidroid/fragments/d;)Lcom/twidroid/net/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/net/a/a/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/model/facebook/FacebookCommentModel;->c(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;

    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    new-instance v2, Lcom/twidroid/ui/a/m;

    iget-object v3, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-virtual {v3}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/twidroid/ui/a/m;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/twidroid/fragments/d;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_59
    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/m;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/m;->a(Lcom/twidroid/model/facebook/FacebookCommentModel;)V

    iget-object v1, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-static {v1}, Lcom/twidroid/fragments/d;->g(Lcom/twidroid/fragments/d;)Lcom/twidroid/model/facebook/FacebookNewsModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twidroid/ui/a/m;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->f(Lcom/twidroid/fragments/d;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->c(Lcom/twidroid/fragments/d;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->i(Lcom/twidroid/fragments/d;)Lcom/twidroid/fragments/e/b;

    move-result-object v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->i(Lcom/twidroid/fragments/d;)Lcom/twidroid/fragments/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/b;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->i(Lcom/twidroid/fragments/d;)Lcom/twidroid/fragments/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-static {v1}, Lcom/twidroid/fragments/d;->g(Lcom/twidroid/fragments/d;)Lcom/twidroid/model/facebook/FacebookNewsModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/b;->a(Lcom/twidroid/model/facebook/FacebookNewsModel;)V

    :cond_a9
    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->h(Lcom/twidroid/fragments/d;)Lcom/twidroid/fragments/e;

    move-result-object v0

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->h(Lcom/twidroid/fragments/d;)Lcom/twidroid/fragments/e;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-static {v1}, Lcom/twidroid/fragments/d;->g(Lcom/twidroid/fragments/d;)Lcom/twidroid/model/facebook/FacebookNewsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twidroid/fragments/e;->a(Lcom/twidroid/model/facebook/FacebookNewsModel;)V

    :cond_c0
    return-void
.end method

.method public a(Lcom/twidroid/net/a/a/b;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->f(Lcom/twidroid/fragments/d;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    iget-object v1, p0, Lcom/twidroid/fragments/d$8;->b:Lcom/twidroid/fragments/d;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    :cond_1d
    return-void
.end method
