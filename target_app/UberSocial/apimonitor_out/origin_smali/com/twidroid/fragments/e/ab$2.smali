.class Lcom/twidroid/fragments/e/ab$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/ab;->ad()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/ab;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/ab$2;->a:Lcom/twidroid/fragments/e/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    const-string v0, ""

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab$2;->a:Lcom/twidroid/fragments/e/ab;

    invoke-static {v0}, Lcom/twidroid/fragments/e/ab;->n(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->i()Ljava/util/ArrayList;

    move-result-object v0

    if-ltz p2, :cond_14

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p2, v1, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/twidroid/fragments/e/ac;

    iget-object v2, p0, Lcom/twidroid/fragments/e/ab$2;->a:Lcom/twidroid/fragments/e/ab;

    iget-object v3, p0, Lcom/twidroid/fragments/e/ab$2;->a:Lcom/twidroid/fragments/e/ab;

    invoke-virtual {v3}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/twidroid/fragments/e/ab$2;->a:Lcom/twidroid/fragments/e/ab;

    invoke-static {v4}, Lcom/twidroid/fragments/e/ab;->o(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/twidroid/fragments/e/ac;-><init>(Lcom/twidroid/fragments/e/ab;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/twidroid/b/a/b;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/twidroid/fragments/e/ac;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    goto :goto_14
.end method
