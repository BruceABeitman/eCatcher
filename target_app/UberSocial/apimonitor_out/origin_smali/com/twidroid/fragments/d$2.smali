.class Lcom/twidroid/fragments/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/net/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/d;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/d;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/d;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/d$2;->a:Lcom/twidroid/fragments/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "commentsListResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/d$2;->a:Lcom/twidroid/fragments/d;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v0, :cond_1a

    if-eqz v1, :cond_1a

    iget-object v2, p0, Lcom/twidroid/fragments/d$2;->a:Lcom/twidroid/fragments/d;

    new-instance v3, Lcom/twidroid/ui/a/m;

    invoke-direct {v3, v1, v0}, Lcom/twidroid/ui/a/m;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/twidroid/fragments/d;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_1a
    return-void
.end method

.method public a(Lcom/twidroid/net/a/a/b;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/d$2;->a:Lcom/twidroid/fragments/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/twidroid/fragments/d$2;->a:Lcom/twidroid/fragments/d;

    iget-object v1, p0, Lcom/twidroid/fragments/d$2;->a:Lcom/twidroid/fragments/d;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    :cond_13
    return-void
.end method
