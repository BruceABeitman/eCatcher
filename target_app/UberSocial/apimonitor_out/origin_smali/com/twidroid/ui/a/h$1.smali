.class Lcom/twidroid/ui/a/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/ui/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a/h;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/a/h;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a/h;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/a/h$1;->a:Lcom/twidroid/ui/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Filter$FilterResults;)V
    .registers 4

    iget v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_20

    iget-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/twidroid/ui/a/h$1;->a:Lcom/twidroid/ui/a/h;

    iget-object v1, v1, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;

    invoke-static {v1}, Lcom/twidroid/ui/a/g;->a(Lcom/twidroid/ui/a/g;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/twidroid/ui/a/h$1;->a:Lcom/twidroid/ui/a/h;

    invoke-static {v0}, Lcom/twidroid/ui/a/h;->a(Lcom/twidroid/ui/a/h;)I

    iget-object v0, p0, Lcom/twidroid/ui/a/h$1;->a:Lcom/twidroid/ui/a/h;

    iget-object v0, v0, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/g;->notifyDataSetChanged()V

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/twidroid/ui/a/h$1;->a:Lcom/twidroid/ui/a/h;

    iget-object v0, v0, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/g;->notifyDataSetInvalidated()V

    goto :goto_1f
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/widget/Filter$FilterResults;

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/h$1;->a(Landroid/widget/Filter$FilterResults;)V

    return-void
.end method
