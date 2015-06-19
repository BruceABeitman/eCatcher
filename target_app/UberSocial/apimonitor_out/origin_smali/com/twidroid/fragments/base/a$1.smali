.class Lcom/twidroid/fragments/base/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/base/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/base/a;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/base/a;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/base/a$1;->a:Lcom/twidroid/fragments/base/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/base/a$1;->a:Lcom/twidroid/fragments/base/a;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/a;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/twidroid/fragments/base/a$1;->a:Lcom/twidroid/fragments/base/a;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/a;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/ui/a/am;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/twidroid/fragments/base/a$1;->a:Lcom/twidroid/fragments/base/a;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/a;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/am;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->h()V

    :cond_1d
    iget-object v0, p0, Lcom/twidroid/fragments/base/a$1;->a:Lcom/twidroid/fragments/base/a;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/a;->L()V

    return-void
.end method
